FROM fabratu/networkit-cloud:latest

RUN mkdir ${HOME}/src
COPY src/* ${HOME}/src

# Exchange the previous networkit install with the current master-branch
RUN pip uninstall -y networkit

RUN conda install cython
RUN git clone https://github.com/networkit/networkit ${HOME}/master
RUN cd ${HOME}/master && git submodule update --init
RUN cd ${HOME}/master && python setup.py build_ext
RUN cd ${HOME}/master && pip install -e .

RUN conda install umap-learn mdtraj

USER root
RUN chmod a+w -R ${HOME}/src
USER 1000:100
