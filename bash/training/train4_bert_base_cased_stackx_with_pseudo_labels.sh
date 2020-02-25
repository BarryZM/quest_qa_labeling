#!/bin/bash

python step4_model2_bert_code/run.py \
    --epochs=5 \
    --max_sequence_length=500 \
    --max_title_length=26 \
    --max_question_length=260 \
    --max_answer_length=210 \
    --data_path=google-quest-challenge \
    --batch_accumulation=1 \
    --batch_size=8 \
    --warmup=200 \
    --lr=1e-5 \
    --bert_model=input/stackx-base-cased \
    --label=pseudonoleakrandom100k \
    --pseudo_file pseudo-predictions/pseudo-100k-3x-blend-no-leak/fold-{}.csv.gz \
    --n_pseudo=20000

