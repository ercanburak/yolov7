FROM nvcr.io/nvidia/pytorch:23.03-py3 as build-image

RUN apt-get update && \
        DEBIAN_FRONTEND=noninteractive  apt-get install -y --no-install-recommends \
        zip \
        htop \
        screen \
        libgl1-mesa-glx

RUN pip install onnxruntime-gpu seaborn thop onnx-simplifier

RUN pip install nvidia-pyindex && \
	pip install onnx_graphsurgeon --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host pypi.ngc.nvidia.com --trusted-host developer.download.nvidia.com

