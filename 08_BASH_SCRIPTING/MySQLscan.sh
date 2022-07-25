#!
# find hosts with MySQL installed

echo "default SQL port is 3306"

echo "Enter IP address: "

read ip

echo "IP: $ip"

nmap -sT $ip -p 3306 > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2
