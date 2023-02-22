"""
See: https://www.mkdocs.org/dev-guide/plugins/#developing-plugins
"""
import re

# import bs4
import mkdocs


class OepPluginConfig(mkdocs.config.base.Config):
    icon = mkdocs.config.config_options.Type(dict, default={})
    logo = mkdocs.config.config_options.Type(dict, default={})


class OepPlugin(mkdocs.plugins.BasePlugin[OepPluginConfig]):
    def on_page_markdown(self, markdown: str, page, config, files) -> str:
        for key, val in set(re.findall(r":oep-([\w]+)-([\w]+):", markdown)):
            search = f":oep-{key}-{val}:"
            if key == "icon":
                icon = self.config["icon"].get(val, val)
                markdown = markdown.replace(search, f":{icon}:")
            elif key == "logo":
                logo = self.config["logo"].get(val, val)
                markdown = markdown.replace(
                    search, f'<img src="/data/img/{logo}" alt="logo">'
                )

            else:
                raise NotImplementedError(f"Undefined prefix: oep-{key}")

        return markdown

    def on_page_content(self, html: str, page, config, files) -> str:
        # soup = bs4.BeautifulSoup(html)
        # bs4.Tag("i", attrs={"class": ""})
        # html = str(soup)
        return html
