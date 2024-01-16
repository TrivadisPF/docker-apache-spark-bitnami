#!/bin/bash

TAG=3.5.0

docker push trivadis/spark-submit:${TAG}
docker push trivadis/spark-template-maven:${TAG}