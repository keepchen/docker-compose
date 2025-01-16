#### Prometheus docker-compose  

#### 项目结构

```
├── README.md
├── alertmanager
│   └── alertmanager.yml
├── blackbox-exporter
│   └── blackbox.yml
├── dingtalk-webhook
│   ├── config.yml
│   └── templates
├── docker-compose.yml
└── prometheus
    └── prometheus.yml
```

#### 主要组件

- **Prometheus**: 用于收集和存储监控数据；
- **Node Exporter**: 用于收集主机级别的系统指标（如 CPU、内存、磁盘等）；
  - 注：node-exporter可能存在操作系统兼容性，推荐使用Linux作为运行环境;
- **Blackbox Exporter**: 用于探测网络服务的可用性（如 HTTP、TCP、ICMP 等）；
- **Alertmanager**: 用于管理告警，支持去重、分组、静默等功能；
- **DingTalk Webhook**: 用于将告警信息推送到钉钉群组；
- **Grafana**: 用于可视化展示监控数据；

#### 快速开始

1. 环境准备
   - Docker
   - Docker Compose
2. 启动服务
   - 拷贝`prometheus-stack`文件夹到你需要持久化存储的路径；
   - 执行`docker-compose up -d`来自动拉取镜像和部署；
3. 访问服务：
   - Prometheus: [http://localhost:9090](http://localhost:9090/)
   - Alertmanager: [http://localhost:9093](http://localhost:9093/)
   - Grafana: [http://localhost:3000](http://localhost:3000/)
     - 默认用户名：`admin`
     - 默认密码：`admin`
   - Blackbox Exporter: [http://localhost:9115](http://localhost:9115/)
   - DingTalk Webhook: [http://localhost:8060](http://localhost:8060/)

