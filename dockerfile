FROM python:3.10.9-slim

SHELL ["/bin/bash", "-ceuxo", "pipefail"]

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && apt install git -y && apt-get clean

RUN git clone https://github.com/FMInference/FlexGen
RUN git reset --hard c33d8e0114d6b5e1e21db75a5837d86b47ea40b0
RUN cd FlexGen && pip install -e .