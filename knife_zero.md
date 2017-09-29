#
knife zero bootstrap 51.0.12.21 --ssh-user vagrant --node-name devapi

# run command
knife ssh "name:devapi" --ssh-user vagrant touch /tmp/5.txt

# provision from cookbook

knife zero converge "name:devapi" --ssh-user vagrant --override-runlist ex1::temp1


# info
knife node info devapi
