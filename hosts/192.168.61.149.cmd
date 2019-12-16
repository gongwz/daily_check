passport 端口状态#netstat -na | grep 8405 | grep LISTEN|grep -v grep | wc -l#=1
passport mysql数据库状态#cat  /root/health.json |grep mysql_passport|awk -F":" '{print $2}'#="ok"
192.168.61.149 磁盘空间#df -lP | grep -e '/$' | awk '{print $5}'#<85%
192.168.61.149 内存#free -m | sed -n '3p' | awk '{printf("%d%\n", 1319/30793*100)}'#<80%