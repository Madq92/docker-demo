**demo**
#### 一个简单监控java服务的项目，使用jmxtrans做metric收集，Influxdb做数据存储，Grafana用于前端展现监控数据

docker,docker-compose,jmxtrans,grafana,influxdb

![](http://img.mikaka.cc/20180926161017.png)


#### 使用docker-compose部署
  - `$ cd $PROJECT_ROOT`
  - `$ docker-compose build`
  - `$ docker stack deploy -c docker-compose.yml myapp`