#!/bin/sh

# From the tensorflow/models/research/ directory
# https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/running_locally.md#running-locally

EXEC_PATH="../scripts/keras-retinanet/keras_retinanet/bin/train.py"
PIPELINE_CONFIG="pipeline.config"
ANOT_CSV="train.csv"
CLASS_CSV="label_map"

python "$EXEC_PATH" \
  --steps 400 \
  --epochs 20 \
  --snapshot-path "snapshots" \
  --tensorboard-dir "tensorboard" \
  csv "$ANOT_CSV" "$CLASS_CSV"
#   --config "$PIPELINE_CONFIG" \

echo "Complete!"
