#!/bin/bash

echo "[*] Waiting for all Valkey nodes to be ready..."

# 先确认节点都起来了
for i in {1..6}; do
  port=$((6378+i))
  while ! nc -z 127.0.0.1 $port; do
    echo "Waiting for valkey-node$i (port $port)..."
    sleep 1
  done
done

echo "[*] All nodes are up. Creating cluster..."

# 执行集群创建命令
docker run -i --rm --network host valkey/valkey valkey-cli \
  --cluster create \
  192.168.100.19:6379 \
  192.168.100.19:6380 \
  192.168.100.19:6381 \
  192.168.100.19:6382 \
  192.168.100.19:6383 \
  192.168.100.19:6384 \
  --cluster-replicas 1 \
  -a yourpassword \
  --cluster-yes

echo "[✓] Valkey Cluster created successfully!"