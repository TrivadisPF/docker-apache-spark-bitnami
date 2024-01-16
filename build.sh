#!/bin/bash

TAG=3.5.0

cd submit

docker build -t trivadis/spark-submit:${TAG} .

cd ../template/maven

docker build -t trivadis/spark-template-maven:${TAG} .