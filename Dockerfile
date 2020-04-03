ARG FROM_IMAGE_NAME=nvcr.io/nvidia/tensorflow:18.10-py3
FROM ${FROM_IMAGE_NAME}

ADD . /workspace/Tacotron-2
WORKDIR /workspace/Tacotron-2
RUN apt-get update && apt-get install -y portaudio19-dev && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
