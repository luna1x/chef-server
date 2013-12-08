#!/bin/sh

knife_replacefrom="chef_server_url.*"
knife_replaceto="chef_server_url ""\'https:\/\/"`hostname -f`":443\'"
sed -i "s/$knife_replacefrom/$knife_replaceto/g" /root/chef-repo/.chef/knife.rb

pedant_replacefrom="chef_server.*"
pedant_replaceto="chef_server ""\"https:\/\/"`hostname -f`"\""
sed -i "s/$pedant_replacefrom/$pedant_replaceto/g" /var/opt/chef-server/chef-pedant/etc/pedant_config.rb

erchef_replacefrom="{s3_url,.*"
erchef_replaceto="{s3_url, ""\"https:\/\/"`hostname -f`"\"},"
sed -i "s/$erchef_replacefrom/$erchef_replaceto/g" /var/opt/chef-server/erchef/etc/app.config

/opt/chef-server/bin/chef-server-ctl restart
