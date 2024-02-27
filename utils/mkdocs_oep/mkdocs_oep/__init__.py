"""
See: https://www.mkdocs.org/dev-guide/plugins/#developing-plugins
"""

import datetime
import os
import re

import bs4
import mkdocs

IMG_PATH = "data/img"


class OepPluginConfig(mkdocs.config.base.Config):
    icon = mkdocs.config.config_options.Type(dict, default={})
    logo = mkdocs.config.config_options.Type(dict, default={})


def get_relative_to_root(url):
    """get relative path to root.

    e.g. if url is "a/b/", return "../"

    Example:

    >>> get_relative_to_root('api/upload/')
    '../../'

    """
    parts = str(url).split("/")
    path = "".join(["../"] * (len(parts) - 1))
    return path


def is_notebook(file):
    """check if any of the files are jupyter notebooks"""
    return file.src_uri.endswith(".ipynb")


class OepPlugin(mkdocs.plugins.BasePlugin[OepPluginConfig]):
    def on_page_markdown(self, markdown: str, page, config, files) -> str:
        # -----------------------------------------------------------------------
        # replace icons and logos shortcuts :oep-xxx-yyy:
        # -----------------------------------------------------------------------
        for key, val in set(re.findall(r":oep-([\w]+)-([\w]+):", markdown)):
            search = f":oep-{key}-{val}:"
            if key == "icon":
                icon = self.config["icon"].get(val, val)
                markdown = markdown.replace(search, f":{icon}:")

        return markdown

    def on_page_content(self, html: str, page, config, files) -> str:
        # -----------------------------------------------------------------------
        # if level 2 header starts with "About": mark this with "section-about" class
        # so that css can change formatting to small font
        # -----------------------------------------------------------------------
        soup = bs4.BeautifulSoup(html, features="html.parser")
        for item in soup.find_all("h2", attrs={"id": re.compile("^about.*")}):
            item["class"] = "section-about"
        html = str(soup)

        # -----------------------------------------------------------------------
        # replace icons and logos shortcuts :oep-xxx-yyy:
        # -----------------------------------------------------------------------
        path_prefix = get_relative_to_root(page.url)
        for key, val in set(re.findall(r":oep-([\w]+)-([\w]+):", html)):
            search = f":oep-{key}-{val}:"
            if key == "logo":
                logo = self.config["logo"].get(val, val)
                html = html.replace(
                    search, f'<img src="{path_prefix}{IMG_PATH}/{logo}" alt="logo">'
                )
            elif key == "auto" and val == "lastupdate":
                # replace with last modification timestamp
                # from file system (hopefully git checkout preserves that)
                datestr = datetime.datetime.fromtimestamp(
                    os.stat(page.file.abs_src_path).st_mtime
                ).strftime("%Y-%m-%d")
                html = html.replace(search, datestr)

        return html
