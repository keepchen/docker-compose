# mysql  

#### 简介  
这是mysql的配置，镜像使用官方镜像，版本`8.0.23`。  

#### 注意事项  
- command解释  
在command配置项中执行了一些指令，它们的作用分别是：
  - lower-case-table-names 
  指定对表名不区分大小写  
  - sql-mode  
  设定sql模式，这里将模式设置为空，如果有一些特殊需求，可以在这个配置上加，例如`ONLY_FULL_GROUP_BY`  
  - default-time-zone  
  设定默认时区为`UTC+8`  
  - innodb_buffer_pool_size  
  设定innodb缓冲池的内存大小，具体数值可按需修改  
  - max_allowed_packet  
  设定mysql接受的数据包大小  
  - bulk_insert_buffer_size  
  设定批量插入数据时，一次写入磁盘数据量的大小  
  - local_infile  
  允许在命令行使用`load data`来导入文件  
  - binlog_expire_logs_seconds  
  设定binlog日志过期时间  
  - skip-name-resolve  
  设定跳过DNS检查  
- custom.cnf  
如果还有其他额外的自定义配置，可以加到custom.cnf文件中，文件`config/custom.cnf`提供了一个范例。

  
  
