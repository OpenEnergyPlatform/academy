# Usage info for oep_create_erm script
The script `oep_create_erm.py` is provided in addition to the 
`UML eralchemy Tutorial.ipynb` tutorial. The tutorials shows
how to create ERM diagrams for singe tables. As there are many
tables in the OEP already the script helps to create many ERM
diagrams at once. As this is a bit hacky we recomend this approach
just for developers. 

As you use the script adjust the `SCHEMA`  and the `filter_list`
variable before you run the script.

# Installation
-> Also see requirements.txt

You need to be signed up to the OEP to access your username and API Token. To run this Jupyter Notebook you need to create an execution environment with all the following dependencies installed:`eralchemy`, `sqlalchemy`, `saio`, `oedialect`, `pandas`, `oem2orm`.

Installing `eralchemy` on **Windows** can cause some problems, try [this solution](https://stackoverflow.com/questions/40809758/howto-install-pygraphviz-on-windows-10-64bit): <br>
`conda install -c alubbock pygraphviz` <br>
`pip install eralchemy`

On **Linux** you should be able to install Graphviz using `sudo apt install graphviz` on your machine. Then install eralchemy `pip install eralchemy` if this fails try to run `sudo apt install libgraphviz-dev` first. 
