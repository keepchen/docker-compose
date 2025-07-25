# Etcd  

## 简介  
这是etcd的配置，使用`bitnami`镜像，版本为`3.6.3`  

## 配置  
`conf.yml`配置文件内容拷贝自官方示例文件，[官方示例文件](https://github.com/etcd-io/etcd/blob/main/etcd.conf.yml.sample)。  

## 认证  
- 环境变量  
```shell
export ETCDCTL_USER="root:changeMe"

etcdctl get some-key
```  

- 命令行参数  
```shell
etcdctl --user="root:changeMe" get some-key
```

