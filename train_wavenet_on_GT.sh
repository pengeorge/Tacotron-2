#!/bin/bash
python train.py --model='WaveNet' \
   	--wavenet_input='training_data_wavenet_on_GT/map.txt' \
	--hparams='train_with_GTA=False'
