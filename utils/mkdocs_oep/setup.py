from setuptools import setup

if __name__ == "__main__":
    setup(
        packages=["mkdocs_oep"],
        install_requires=["mkdocs"],
        name="mkdocs-oep",
        version="0.0.2",
        entry_points={
            "mkdocs.plugins": [
                "mkdocs-oep = mkdocs_oep:OepPlugin",
            ]
        },
    )
