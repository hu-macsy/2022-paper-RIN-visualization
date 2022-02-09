This repository contains files for building a container image consisting of code from the paper "Interactive Visualization of Protein RINs using NetworKit in the Cloud".

In details it contains:
- Jupyter Notebooks `RIN_View.ipynb` (starting point), `RIN_View.ipynb` and `RIN_Benchmarks.ipynb`
- Experimental protein data (A3D, 2JOF, NTL9)
- Dockerfile to create image

Commands on how to build and run the image is depending on your container runtime and system architecture. Currently this image only support x86_64 hosts/runtimes due to limitation from the included tools. The build image in the end includes a Jupyter Lab server.

Example:
```
git clone https://github.com/hu-macsy/2022-paper-RIN-visualization 
cd 2022-paper-RIN-visualization
docker -t local:RIN-visualizer build .
docker run -it -p 8888:8888 local:RIN-visualizer
```

During launch, the Jupyter server prints an URL starting with `https://127.0.0.1:8888/`. The complete URL has to be copied into a browser for access.
