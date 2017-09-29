# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)


#chef_server_url          "https://51.0.12.101/organizations/fd"
local_mode true


log_level                :info
log_location             STDOUT
node_name                "admin"
client_key               "#{current_dir}/admin.pem"
validation_client_name   "fd-validator"
validation_key           "#{current_dir}/fd-validator.pem"


#knife[:ssh_attribute] = "knife_zero.host"
#knife[:use_sudo] = true

#chef_repo_path   File.expand_path('../' , __FILE__)
cookbook_path            ["#{current_dir}/../cookbooks"]
