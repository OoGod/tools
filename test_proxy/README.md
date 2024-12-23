## ssr
* [TyrantLucifer/ssr-command-client](https://github.com/TyrantLucifer/ssr-command-client)

## v2ray
* [v2fly/fhs-install-v2ray](https://github.com/v2fly/fhs-install-v2ray)
* [ToutyRater/v2ray-guide](https://github.com/ToutyRater/v2ray-guide)

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
export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
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

- 配置[clash web管理界面](https://github.com/Dreamacro/clash-dashboard)
```shell
pnpm install
pnpm start --host=0.0.0.0 --port=8080
```
* [centos使用clash](https://i.jakeyu.top/2021/11/27/centos-%E4%BD%BF%E7%94%A8-Clash-%E6%A2%AF%E5%AD%90/)
* [clash_premium](https://github.com/Dreamacro/clash/releases/tag/premium)
* [clash配置开机启动](https://einverne.github.io/post/2021/03/linux-use-clash.html)
* [Debian 部署 Clash Web 管理页-仅参考](https://www.modb.pro/db/399645)


## network
* [http网络排错](https://www.cnblogs.com/hujuntao/p/11984700.html)
#### 碰到的一些报错
- wget报错 `Unable to establish SSL connection` 对应增加参数`--no-check-certificate`解决
- curl报错 `curl: (51) Unable to communicate securely with peer: requested domain name does not match the server's certificate.` 对应增加参数`--insecure`
- curl报错 `curl: (35) Encountered end of file` 
  - 查看443端口状态`firewall-cmd --zone=public --query-port=443/tcp`, yes表示开启,若未开启执行`irewall-cmd --zone=public --add-port=443/tcp`开启
  - 若已开启, 仍有报错，可能网络问题，多试几次;

### wget
- wget url -e http_proxy=http://ip:port

### git
- 方法一: git config
  - 全局: git config --global http.proxy 127.0.0.1:9090
  - 本地: git config --local http.proxy 127.0.0.1:9090
- 方法二 [git设置代理](https://wenku.baidu.com/view/0b4c153cfc00bed5b9f3f90f76c66137ee064fec.html)
```shell
cat >> ~/.ssh/config  <<EOF
## github
Host github.com
    HostName github.com
    identityFile ~/.ssh/id_rsa_github
    ProxyCommand nc -v -x 127.0.0.1:9090 %h %p
    # ProxyCommand connect -S 127.0.0.1:9090 %h %p # for windows
EOF
```

### github
* [github无法访问的问题] (https://www.cnblogs.com/wanpi/p/14668174.html)
