import random
import re

import requests


def extract_annotation_blocks(markdown):
    supported_ontologies = [
        "oeo",
        "sms",
        "fmi",
        "dogont",
        "brick",
        "s4grid",
        "sargon",
        "s4ener",
        "bont",
        "openadr",
        "dices",
    ]

    ontology_pattern = "|".join(supported_ontologies)
    annotation_pattern = rf"<!-- BEGIN-ANNOTATION: ({ontology_pattern}) -->(.*?)<!-- END-ANNOTATION: \1 -->"
    annotation_matches = re.finditer(annotation_pattern, markdown, re.DOTALL)

    annotation_blocks = []

    for match in annotation_matches:
        full_match = match.group(0)
        ontology_id = match.group(1)
        content = match.group(2)
        annotation_blocks.append((full_match, ontology_id, content))

    return annotation_blocks


def get_ontology_annotations(config, ontology_id, text):
    api_endpoint = config.get(
        "api_url", "https://service.tib.eu/sandbox/nfdi4energyannotator/annotate"
    )

    try:
        response = requests.post(
            api_endpoint,
            json={"text": text, "ontology_ids": [ontology_id]},
            headers={"Content-Type": "application/json"},
            timeout=60,
        )

        response.raise_for_status()
        response_data = response.json()
        print(f"Response from {ontology_id} ontology: {response_data}")

        if "matches" in response_data and isinstance(response_data["matches"], list):
            text_with_spans = wrap_terms_in_span(text, response_data["matches"])
            return text_with_spans
        elif "annotated_text" in response_data:
            return response_data["annotated_text"]
        else:
            return text

    except Exception as e:
        print(f"Error annotating text with {ontology_id} ontology: {str(e)}")
        return text


def wrap_terms_in_span(text, matches):
    pastel_colors = [
        "#FFD6E0",
        "#FFEFCF",
        "#DCEDC2",
        "#A8E6CE",
        "#DCEDC2",
        "#FFD3B5",
        "#D5E5F2",
        "#E0F7FA",
        "#FFF9C4",
        "#F8BBD0",
    ]

    cleaner_matches = [
        {
            "term": m["token"],
            "matched_term": m.get("matched_term", m["label"]),  # Fallback auf label
            "start": m["start"],
            "end": m["end"],
            "iri": m["iri"],
        }
        for m in matches
    ]
    sorted_matches = sorted(
        cleaner_matches, key=lambda m: (-len(m["matched_term"]), -m["start"])
    )

    modified_positions = set()

    modifications = []

    # First pass: determine which matches to process
    for match in sorted_matches:
        overlap = False
        for pos in range(match["start"], match["end"] + 1):
            if pos in modified_positions:
                overlap = True
                break

        if overlap:
            continue

        for pos in range(match["start"], match["end"] + 1):
            modified_positions.add(pos)

        modifications.append(match)

    modifications.sort(key=lambda m: m["start"])

    # Second pass: apply modifications
    result = ""
    last_end = 0

    ontology_colors = {
        "oeo": "#1F567D",
        "sms": "#FFD6E0",
        "fmi": "#FFEFCF",
        "dogont": "#DCEDC2",
        "brick": "#A8E6CE",
        "s4grid": "#FFD3B5",
        "sargon": "#D5E5F2",
        "s4ener": "#E0F7FA",
        "bont": "#FFF9C4",
        "openadr": "#F8BBD0",
        "dices": "#FFC0CB",
    }

    for match in modifications:
        result += text[last_end : match["start"]]
        color = ontology_colors.get(match.get("ontology_id", ""), "#1F567D")  # Default
        # random_color = random.choice(pastel_colors)
        result += f"<a href=\"{match['iri']}\" style='background-color: {color}; color: #fff; text-decoration: none; padding: 0 3px; border-radius: 3px;'>{text[match['start']:match['end']]}</a>"
        last_end = match["end"]

    result += text[last_end:]

    return result


def on_page_markdown(markdown, page, config, files):
    print("Hook executed for page:", page.file.name)
    annotation_blocks = extract_annotation_blocks(markdown)

    for full_match, ontology_id, content in annotation_blocks:
        annotated_content = get_ontology_annotations(config, ontology_id, content)
        markdown = markdown.replace(full_match, annotated_content)
    print("MkDocs hook loaded")
    return markdown
