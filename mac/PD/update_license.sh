# ref_url.md
# method 1: trigger regeneration of license after deletion
sudo rm -rf /Library/Preferences/Parallels/licenses.json

# method 2: modify local time to available time before startup pd
update
begin=`python3 -c "import json;f=open('/Library/Preferences/Parallels/licenses.json', 'r');data=f.read();f.close();license=json.loads(json.loads(data)['license']);print(license['started_at'])"`
#date -r $(date -j -f  %Y-%m-%d 2022-04-23 +%s) '+%Y%m%d%H%M%S
sudo date -f $begin
sleep 300
sudo sntp -sS time.apple.com
