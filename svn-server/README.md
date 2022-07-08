#### svn-server  

- 配置  
> 参见docker-compose.yml  

```yaml
version: "3"

services:
  svn-server:
    image: elleflorio/svn-server:latest
    ports:
      - "80:80"
      - "3690:3690"
    volumes:
      - ./data/svndata:/home/svn
      - ./data/config/subversion-access-control:/etc/subversion/subversion-access-control
    restart: always
```  

#### 命令  

- 创建仓库  
```shell
docker exec -t $(docker ps -a|grep svn-server|awk '{print $1}') svnadmin create /home/svn/myrepo
```  

注意：创建仓库后，可能会遇到客户端访问提示没有权限的问题，如：`Can't open file '/home/svn/myrepo/db/txn-current-lock': Permission`,
此时需要更改存放目录的访问权限。根据上面的配置，可以知道需要更改`./data/svndata`目录的权限，因此执行命令：
```shell
sudo chmod a+wxr -R ./data/svndata/myrepo
```  

- web访问仓库  
```text
http://127.0.0.1/svn/myrepo
```  

- 小乌龟(tortoise)访问地址  
```text
http://127.0.0.1/svn/myrepo
```

- 创建用户  
```shell
docker exec -t $(docker ps -a|grep svn-server|awk '{print $1}') htpasswd -b /etc/subversion/passwd username password
```  

#### 其他问题  
- Error: Access to '/svn/Demo/!svn/me' forbidden when commit file [#19](https://github.com/elleFlorio/svn-docker/issues/19)