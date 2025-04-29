# Valkey - Cluster  

#### 介绍  
此目录是Valkey组件的集群安装集成。  

#### 部署流程  
- 修改ip地址为你真实的地址  
在此目录下全局搜索`192.168.100.19`并替换为你真实的ip地址。  

- 修改认证密码  
在此目录下全局搜索`yourpassword`并替换为你真实的认证密码。  

- 启动容器  
    ```shell
    docker compose up -d
    ```  

- 执行自动化集群发现脚本  
    ```shell
    sh create-cluster.sh
    ```  

#### 其他  
- 端口监听范围  
  - 6379~6384
  - 16379~16384  
- 镜像版本  
此集成使用的是官方镜像`valkey/valkey:latest`，为了环境的稳定性，建议使用者将latest修改为固定的稳定版本。