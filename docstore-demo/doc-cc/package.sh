#! /bin/bash
export PATH=$PWD/../../fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=$PWD/../../fabric-samples/config/
go mod vendor
mkdir -p target
peer lifecycle chaincode package ./target/docstore.tar.gz --path ./ --lang golang --label docstore_1.0