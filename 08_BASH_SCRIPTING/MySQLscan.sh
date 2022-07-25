#!
# find hosts with MySQL installed

echo "Enter starting ip address: "
read first_ip

echo "Enter the last octet of the last ip address"
read last_octet_ip

echo "Enter the port number you want to scan"
echo "3306 is the default port for Open Source MySQL"
echo "1433 is the default port for the Microsoft SQL Server Database"
echo "DYOR"
read port

nmap -sT $first_ip-$last_octet_ip -p $port > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2
