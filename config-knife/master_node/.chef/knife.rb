current_dir = File.dirname(__FILE__)

#puts "d=#{current_dir}"


local_mode true

# ???
ssl_verify_mode    :verify_none

knife[:ssh_attribute] = "knife_zero.host"
#knife[:use_sudo] = true
knife[:use_sudo] = false
## use specific key file to connect server instead of ssh_agent(use ssh_agent is set true by default).
#knife[:identity_file] = "~/.ssh/id_rsa"


#chef_repo_path   File.expand_path('../' , __FILE__)
#cookbook_path            ["#{current_dir}/../cookbooks", '/mnt/data/projects/mmx/chef-repo/cookbooks']

dir_base_repo = File.expand_path('../../../../', __FILE__)
#puts "d=#{dir_base_repo}"

cookbook_path            [
  "#{dir_base_repo}/cookbooks-apps",
  "#{dir_base_repo}/cookbooks",
  "#{dir_base_repo}/cookbooks-common"
]



## Attributes of node objects will be saved to json file.
## the automatic_attribute_whitelist option limits the attributes to be saved.
knife[:automatic_attribute_whitelist] = %w[
  fqdn
  os
  os_version
  hostname
  ipaddress
  roles
  recipes
  ipaddress
  platform
  platform_version
  platform_version
  cloud
  cloud_v2
  chef_packages
]
