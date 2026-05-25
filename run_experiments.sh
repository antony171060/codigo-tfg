#!/bin/bash

metodo="ctc" #Valores posibles: ctc, rnn-t, seq2seq
encoding="kern" #Valores posibles: decoupled, decoupled-dot, kern

for i in {5..6}; do
    python3 train.py --method $metodo --experiment_id $i --encoding $encoding --batch_size 8 --epochs 300 --patience 25
done
