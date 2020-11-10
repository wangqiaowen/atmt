# atmt code base
Materials for the first assignment of "Advanced Techniques of Machine Translation".
Please refer to the assignment sheet for instructions on how to use the toolkit.

The toolkit is based on [this implementation](https://github.com/demelin/nmt_toolkit).

# Some comments about the files
The checkpoints_bpe_lr0_001 folder contains the checkpoints for experiment 1.1
The checkpoints_bpe_lr0_0003 folder contains the checkpoints for experiment 1.2
The checkpoints_bpe_dropout_0_1_lr0_0003 folder contains the checkpoints for experiment 2

In baseline/bpe contains the data used to train BPE and BPE dropout.
In baseline/mono_train contains the data used in the failed experiment.

The folder mono contains the checkpoints and preprocess files of the failed experiment.

The bpe_preprocess.py is used to preprocess the data for both BPE and BPE dropout, and there are some instructions about how to use this it in the file as well.

The train.py has been modified as well to adapt BPE-dropout.

The BPE_data_process_commands folder contains some screenshots of the commands I used to process the data according to the package subword-nmt.