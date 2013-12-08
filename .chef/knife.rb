log_level                :info
log_location             STDOUT
node_name                'root'
client_key               '/root/.chef/root.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url 'https://ip-172-31-23-206.ap-northeast-1.compute.internal:443'
syntax_check_cache_path  '/root/.chef/syntax_check_cache'
cookbook_path [File.join(File.dirname(__FILE__), "..", "cookbooks")]

knife[:aws_access_key_id] = 'AKIAIW3B3YH7LEYEM4ZQ'
knife[:aws_ssh_key_id] = 'mobileServer'
knife[:aws_secret_access_key] = '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'
knife[:editor] = 'vi'
