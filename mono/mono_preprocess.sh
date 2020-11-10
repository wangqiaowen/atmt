cat /Users/wangqiaowen/atmt/baseline/raw_data/train_mono.de | perl /Users/wangqiaowen/atmt/moses_scripts/normalize-punctuation.perl -l de | perl /Users/wangqiaowen/atmt/moses_scripts/tokenizer.perl -l de -a -q > /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.de.p

cat /Users/wangqiaowen/atmt/baseline/raw_data/train_mono.en | perl /Users/wangqiaowen/atmt/moses_scripts/normalize-punctuation.perl -l en | perl /Users/wangqiaowen/atmt/moses_scripts/tokenizer.perl -l en -a -q > /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.en.p

perl /Users/wangqiaowen/atmt/moses_scripts/train-truecaser.perl --model /Users/wangqiaowen/atmt/baseline/preprocessed_data/tm.de --corpus /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.de.p

perl /Users/wangqiaowen/atmt/moses_scripts/train-truecaser.perl --model /Users/wangqiaowen/atmt/baseline/preprocessed_data/tm.en --corpus /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.en.p

cat /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.de.p | perl /Users/wangqiaowen/atmt/moses_scripts/truecase.perl --model /Users/wangqiaowen/atmt/baseline/preprocessed_data/tm.de > /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.de 

cat /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.en.p | perl /Users/wangqiaowen/atmt/moses_scripts/truecase.perl --model /Users/wangqiaowen/atmt/baseline/preprocessed_data/tm.en > /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.en

rm /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.de.p
rm /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono.en.p

python /Users/wangqiaowen/atmt/preprocess.py --target-lang en --source-lang de --dest-dir /Users/wangqiaowen/atmt/baseline/mono_train/ --train-prefix /Users/wangqiaowen/atmt/baseline/preprocessed_data/train_mono --threshold-src 1 --threshold-tgt 1 --num-words-src 6000 --num-words-tgt 6000
