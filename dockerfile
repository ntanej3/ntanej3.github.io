RUN conda install -c conda-forge -c scitools -c scitools/label/dev cube_browser ipywidgets && \
    git clone https://github.com/SciTools/iris-sample-data.git && \
    cp -rf iris-sample-data/iris_sample_data/sample_data /home/main/anaconda2/lib/python2.7/site-packages/iris/ && \
    rm -rf iris-sample-data && \
