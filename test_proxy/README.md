## v2ray
[v2fly/fhs-install-v2ray](https://github.com/v2fly/fhs-install-v2ray)

[ToutyRater/v2ray-guide](https://github.com/ToutyRater/v2ray-guide)


## clash

#### 测试可用的操作 [clash配置开机启动](https://einverne.github.io/post/2021/03/linux-use-clash.html)
- 测试环境：centos7.6
- 安装版本：[clash-linux-386-2022 .05.18.gz](https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-386-2022.05.18.gz)   
  - 更多版本见 [clash_premium](https://github.com/Dreamacro/clash/releases/tag/premium)
- 操作步骤
```shell
wget https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-386-2022.05.18.gz 
gunzip clash-linux-386-2022.05.18.gz
mv clash-linux-386-2022.05.18 ~/clash
chmod +x ~/clash
cd ~
# 初次运行会生成config.yaml和Country.mmdb到~/.config/clash/目录下
./clash 
# 若Country.mmdb下载失败，手动下载到配置目录下
# wget https://cdn.jsdelivr.net/gh/Dreamacro/maxmind-geoip@release/Country.mmdb -O ~/.config/clash/Country.mmdb
# 更新本地订阅
wget https://clash_url -O ~/.config/clash/config.yaml
# 后台运行
./clash &
```
- 登录[远程管理界面](http://clash.razord.top/)修改配置
  - Host: ip地址
  - Port: 通常为9090，具体见 `~/.config/clash/config.yaml`中的`external-controller`
  - Secret: 可配置，无则不填，具体见`~/.config/clash/config.yaml`中的`secret` 
- (非必要,仅参考)根据api本地修改配置 [clash_restful_api](https://clash.gitbook.io/)
```shell
## 仅参考
selector=$1
name=$2
selector=`echo -n "$selector"| xxd -ps | tr -d '\n' | sed -r 's/(..)/%\1/g'`
curl -v -X PUT 127.0.0.1:9090/proxies/${selector} -d '{"name":'$name'}'
```

[centos使用clash](https://i.jakeyu.top/2021/11/27/centos-%E4%BD%BF%E7%94%A8-Clash-%E6%A2%AF%E5%AD%90/)

[clash_premium](https://github.com/Dreamacro/clash/releases/tag/premium)

[clash配置开机启动](https://einverne.github.io/post/2021/03/linux-use-clash.html)


## network
[http网络排错](https://www.cnblogs.com/hujuntao/p/11984700.html)
#### 碰到的一些报错
- wget报错 `Unable to establish SSL connection` 对应增加参数`--no-check-certificate`解决
- curl报错 `curl: (51) Unable to communicate securely with peer: requested domain name does not match the server's certificate.` 对应增加参数`--insecure`
