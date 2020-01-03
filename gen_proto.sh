#!/bin/bash
protoc --python_out=. ./proto/visage.proto
mv ./proto/visage_pb2.py .
