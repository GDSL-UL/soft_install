REM Run this once the gds environment is created and activated
REM Add pip packages
pip install -r https://github.com/darribas/gds_env/raw/master/gds_py/gds_py_pip.txt
REM JupyterLab plugin's
jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install jupyter-leaflet --no-build
Jupyter server proxy
jupyter labextension install @jupyterlab/server-proxy --no-build
jupyter labextension install @jupyterlab/geojson-extension --no-build
jupyter labextension install @jupyter-widgets/jupyterlab-manager keplergl-jupyter --no-build
jupyter labextension install qgrid2 --no-build \
jupyter labextension install @lckr/jupyterlab_variableinspector --no-build
jupyter labextension install @jupyterlab/toc --no-build \
jupyter lab build -y
jupyter lab clean -y
conda clean --all -f -y
