set -x
proxy_port=${1}
#proxy_port=1080
export ALL_PROXY=socks5://127.0.0.1:${proxy_port}
curl http://ip-api.com/json/?lang=zh-CN
#unset ALL_PROXY
