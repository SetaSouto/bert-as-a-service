#!/bin/sh
bert-serving-start -num_worker=1 -model_dir /model/multi_cased_L-12_H-768_A-12 -cpu -max_seq_len=75
