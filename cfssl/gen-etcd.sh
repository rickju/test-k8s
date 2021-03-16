#!/bin/bash
./bin/cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-conf.json -profile=etcd etcd-csr.json | ./bin/cfssl-json -bare etcd

