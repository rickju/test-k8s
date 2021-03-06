/snap/bin/kube-apiserver \
  --allow-privileged=true \
  --service-cluster-ip-range=10.0.0.0/24 \
  --service-node-port-range=30000-32767 \
  --enable-admission-plugins=NamespaceLifecycle,LimitRanger,ServiceAccount,ResourceQuota,NodeRestriction \
  --kubelet-client-certificate=/home/rickju/k8s/cfssl/k8s.pem \
  --kubelet-client-key=/home/rickju/k8s/cfssl/k8s-key.pem \
  --tls-cert-file=/home/rickju/k8s/cfssl/k8s.pem \
  --tls-private-key-file=/home/rickju/k8s/cfssl/k8s-key.pem \
  --client-ca-file=/home/rickju/k8s/cfssl/ca.pem \
  --service-account-key-file=/home/rickju/k8s/cfssl/ca-key.pem \
  --etcd-cafile=/home/rickju/k8s/cfssl/ca.pem \
  --etcd-certfile=/home/rickju/k8s/cfssl/etcd.pem \
  --etcd-keyfile=/home/rickju/k8s/cfssl/etcd-key.pem \
  --audit-log-maxage=30 \
  --audit-log-maxbackup=3 \
  --audit-log-maxsize=100 \
  --audit-log-path=/home/rickju/k8s/logs/k8s-audit.log \
  --service-account-key-file=/home/rickju/k8s/cfssl/k8s.pem \
  --service-account-signing-key-file=/home/rickju/k8s/cfssl/k8s-key.pem \
  --service-account-issuer=https://192.168.1.1 \
  --authorization-mode=AlwaysAllow \
  --enable-bootstrap-token-auth=true \
  --token-auth-file=/home/rickju/k8s/cfssl/k8s-token.csv \
  --etcd-servers=http://127.0.0.1:2379 \
  --bind-address=192.168.30.1 \
  --secure-port=6443 \
  --advertise-address=192.168.30.1 \
  --log-dir=/home/rickju/k8s/logs \
  --logtostderr=true \
  --v=8



