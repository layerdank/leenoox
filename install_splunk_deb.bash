#configure ufw
sudo ufw allow 8000/tcp
sudo ufw allow 9997/tcp
sudo ufw allow 8089/tcp
sudo ufw allow 514/udp 

#install splunk> enterprise
wget -O splunk-7.2.4-8a94541dcfac-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.2.4&product=splunk&filename=splunk-7.2.4-8a94541dcfac-linux-2.6-amd64.deb&wget=true'
chmod 744 splunk-7.2.4-8a94541dcfac-linux-2.6-amd64.deb
dpkg -i splunk-7.2.4-8a94541dcfac-linux-2.6-amd64.deb

/opt/splunk/bin/splunk start --accept-license
#Prompts admin password next

/opt/splunk/bin/splunk enable boot-start 