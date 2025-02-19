FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-tk && \
    apt-get install -y libsm6 libxext6 libxrender-dev libgl1-mesa-glx && \
    apt-get install -y python-opengl && \
    apt-get install -y git && \
    apt-get install -y rsync && \
    apt-get install -y libusb-1.0-0 && \
    apt-get install -y libglib2.0-0 && \
    pip3 install --upgrade pip

RUN pip3 install pytest

COPY requirements.txt /
RUN pip3 install --no-cache-dir -r requirements.txt && \
    rm -rf requirements.txt

COPY optional.txt /
RUN pip3 install --no-cache-dir -r optional.txt && \
    rm -rf optional.txt

RUN pip3 install torch==1.10.0+cu111 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip3 install --upgrade torch-scatter -f https://pytorch-geometric.com/whl/torch-1.10.0+cu111.html