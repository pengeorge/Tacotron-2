#!/bin/bash

docker run --gpus all \
	--shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 --memory=12g \
	-it --rm --ipc=host \
	-v $PWD:/workspace/Tacotron-2/ \
	-v /home/chenzp/data/tts/LJSpeech-1.1/wavs:/workspace/LJSpeech-1.1_wavs \
	-v $PWD/../Tacotron-2-v2/training_data:/workspace/training_data \
   	tacotron-2-tf1.10 bash
