You need to be signed up to the OEP to access your username and API Token. To run this Jupyter Notebook you need to create an execution environment with all the following dependencies installed:`eralchemy`, `sqlalchemy`, `saio`, `oedialect`, `pandas`, `oem2orm`.

Installing `eralchemy` on **Windows** can cause some problems, try [this solution](https://stackoverflow.com/questions/40809758/howto-install-pygraphviz-on-windows-10-64bit): <br>
`conda install -c alubbock pygraphviz` <br>
`pip install eralchemy`

On **Linux** you should be able to install Graphviz using `sudo apt install graphviz` on your machine. Then install eralchemy `pip install eralchemy` if this fails try to run `sudo apt install libgraphviz-dev` first. 
