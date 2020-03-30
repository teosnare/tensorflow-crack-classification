#!/bin/bash

export SERVING_MODEL=simplenet_cracks8020
#docker run -t --rm --runtime=nvidia -p 8501:8501 -v $(realpath $PWD/models):/models/ --name crack_classification_service -e MODEL_NAME=$SERVING_MODEL tensorflow/serving:1.12.0-gpu
docker run -t --rm --runtime=nvidia -p 8501:8501 -v $(realpath $PWD/models):/models/ --name crack_classification_service -e MODEL_NAME=$SERVING_MODEL tensorflow/serving:latest

