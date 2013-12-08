#
# Cookbook Name:: was
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "disable_hostcheckgithub" do
  cwd "/root"
  user "root"
  code <<-EOH
    grep "Host github.com" /root/.ssh/config > /dev/null
    if [ $? -ne 0 ]; then
      echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
    fi
    EOH
end

cookbook_file "/root/.ssh/id_rsa" do
  source "id_rsa"
  mode 00600
  action :create_if_missing
end

git "/root/mobileserver" do
  repository "git@github.com:luna1x/mobileServer.git"
  reference "master"
  action :sync
  notifies :run, "bash[restart_was]"
end

bash "restart_was" do
  cwd "/root/mobileserver"
  user "root"
  code <<-EOH
    nohup /usr/local/bin/node /root/mobileserver/index.js &
  EOH
  action :nothing
end
    
    


