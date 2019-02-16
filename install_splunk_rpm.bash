#configure firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8000/tcp
sudo firewall-cmd --zone=public --permanent --add-port=9997/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8089/tcp
sudo firewall-cmd --zone=public --permanent --add-port=514/udp

sudo systemctl restart network
sudo systemctl reload firewalld

#install splunk> enterprise
wget -O splunk-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.2.4&product=splunk&filename=splunk-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm&wget=true'
chmod 744 splunk-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm
rpm -i splunk-7.2.4-8a94541dcfac-linux-2.6-x86_64.rpm

/opt/splunk/bin/splunk start --accept-license
#Prompts admin password next

/opt/splunk/bin/splunk enable boot-start 