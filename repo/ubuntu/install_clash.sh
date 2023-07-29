clash_name=$1
set -x
mv $clash_name clash_temp.tar.gz

mkdir ~/.app
#tar -zxvf Clash.for.Windows-0.19.12-x64-linux.tar.gz -C ~/.app
tar -zxvf clash_temp.tar.gz -C ~/.app
cd ~/.app
#mv Clash\ for\ Windows-0.19.12-x64-linux/ clash
mv Clash* clash
cd clash

sudo wget https://cdn.jsdelivr.net/gh/Dreamacro/clash@master/docs/logo.png
#vim clash.desktop

user=simon

cat > clash.desktop << EOF
# 输入下面的内容
[Desktop Entry]
 Name=clash
 Comment=Clash
 Exec=/home/${user}/.app/clash/cfw
 Icon=/home/${user}/.app/clash/logo.png
 Type=Application
 Categories=Development;
 StartupNotify=true
 NoDisplay=false
EOF

sudo mv clash.desktop /usr/share/applications/
