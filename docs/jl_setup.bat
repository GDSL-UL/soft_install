REM Run this once the gds environment is created and activated
REM Add pip packages
conda install -c conda-forge git
pip install -r https://github.com/darribas/gds_env/raw/v6.0post1/gds_py/gds_py_pip.txt
REM JupyterLab plugin's
jupyter labextension install @jupyterlab/server-proxy --no-build
jupyter labextension install @jupyterlab/geojson-extension --no-build
jupyter labextension install @lckr/jupyterlab_variableinspector --no-build
jupyter lab build -y
jupyter lab clean -y
conda clean --all -f -y
