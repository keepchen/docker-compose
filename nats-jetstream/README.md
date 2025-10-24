# Nats-Jetsream  
这是一个nats消息队列集群的配置，服务启动了3个节点和一个管理容器（nats-box）。使用nats-box可以在不安装nats客户端的情况下对nats集群进行管理。  
## 版本  
此配置使用的版本为**2.10**  

## 使用nats-box  
```shell
docker exec -it nats-box /bin/sh
```  

## 创建流  
```shell
nats stream add photos --replicas 3 --storage file
```  

## 认证  
此配置使用简单的帐号密码，使用者请按需修改。  
```txt  
帐号：user123
密码：pass123
```

[官方文档](https://docs.nats.io/running-a-nats-service/nats_docker)