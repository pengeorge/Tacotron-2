#!/bin/bash

docker run --gpus all \
	--shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 \
	--memory=12g --memory-swap=12g \
	-it --rm --ipc=host \
	-v $PWD:/workspace/Tacotron-2/ \
	-v /home/chenzp/data/tts/LJSpeech-1.1/wavs:/home/chenzp/data/tts/LJSpeech-1.1/wavs \
   	tacotron-2-tf1.10 bash
