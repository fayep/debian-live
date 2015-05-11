#!/bin/bash
docker rm debianlivecd_image
docker build -t debianlivecd:stage1 .
docker run --privileged --name debianlivecd_image debianlivecd:stage1 /root/privileged.sh build
docker cp debianlivecd_image:/root/binary.hybrid.iso ./
