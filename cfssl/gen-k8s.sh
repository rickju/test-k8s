./bin/cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-conf.json -profile=k8s k8s-csr.json | ./bin/cfssl-json -bare k8s
