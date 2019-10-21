#!/usr/bin/env bash

BENCHES='1-object-1-type scc'

# 1. Prepare benchmarks

for BENCH in $BENCHES; do
    for NUM_RULES in `seq 100 100 1000`; do
        PROBLEM_NAME="${BENCH}_${NUM_RULES}"
        PROBLEM_DIR="benchmarks/scale/$PROBLEM_NAME"
        echo "Preparing $PROBLEM_NAME"
        ./prosynth/scripts/prepare $PROBLEM_DIR
    done
done

# 2. Run experiments

touch data.log

for BENCH in $BENCHES; do
    for NUM_RULES in `seq 100 100 1000`; do
        echo "${BENCH}_${NUM_RULES}"
        # echo $NUM_RULES
    done
done
