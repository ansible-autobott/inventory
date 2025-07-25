#!/bin/bash

# Set password for 'vagrant' user
echo "setting vagrant user:pw to vagrant:vagrant"
echo "vagrant:vagrant" | sudo chpasswd

echo "allow ssh password login"
# Enable password authentication in sshd config
sudo sed -i 's/^#\?PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
# Make sure ChallengeResponseAuthentication is disabled (or yes if you want)
sudo sed -i 's/^#\?ChallengeResponseAuthentication yes/ChallengeResponseAuthentication no/' /etc/ssh/sshd_config
# Restart SSH service to apply changes
sudo systemctl restart sshd || sudo service ssh restart