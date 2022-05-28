## redis
* [redis安装白话](https://zhuanlan.zhihu.com/p/34527270)
* [redis操作白话](https://blog.csdn.net/icetime17/article/details/45767559)
```shell
yum install -y redis
## 修改 /etc/redis.conf 注释掉bind && requirepass 取消注释,修改密码
systemctl restart redis
```
- 连接数据库: redis-cli -h 127.0.0.1 -p 6379 -a password
- 操作: [redis操作白话](https://blog.csdn.net/icetime17/article/details/45767559) 
