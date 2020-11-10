import os
import logging
import argparse
import numpy as np
from tqdm import tqdm
from collections import OrderedDict
import collections

import pickle

"""
To add monolingual data to the training data.

"""


def extract_monolingual_data(input_file, output_file):
	monolist = []
	with open (input_file,'r') as monofile:
		for i in range (3000):
			line = monofile.readline()
			monolist.append(line)

	with open (output_file,'w+') as outfile:
		for lines in monolist:
			lines = str(lines)
			outfile.write(lines)

def creat_new_train_data_en(mono_file,  original_train_target, output_file_target):

	with open (mono_file, 'r') as monofile:
		monolist = monofile.readlines()

	with open (original_train_target, 'r') as originalt:
		origt = originalt.readlines()

	with open (output_file_target , 'w+') as outfilet:
		for lines in origt:
			lines = str(lines)
			outfilet.write(lines)
		for lines in monolist:
			lines = str(lines)
			outfilet.write(lines)

def creat_new_train_data_de(mono_file, original_train_source, output_file_source):

	with open (mono_file, 'r') as monofile:
		monolist = monofile.readlines()

	with open (original_train_source, 'r') as originals:
		origs = originals.readlines()

	with open (output_file_source , 'w+') as outfiles:
		for lines in origs:
			lines = str(lines)
			outfiles.write(lines)
		for lines in monolist:
			lines = str(lines)
			outfiles.write(lines)


if __name__ == '__main__' : 
	extract_monolingual_data('/Users/wangqiaowen/Downloads/en.txt', '/Users/wangqiaowen/Downloads/monodata.en')
	creat_new_train_data_en('/Users/wangqiaowen/Downloads/monodata.en', '/Users/wangqiaowen/atmt/baseline/raw_data/train.en', '/Users/wangqiaowen/Downloads/train_mono.en')
	creat_new_train_data_de('/Users/wangqiaowen/Downloads/monodata.en', '/Users/wangqiaowen/atmt/baseline/raw_data/train.de', '/Users/wangqiaowen/Downloads/train_mono.de')
