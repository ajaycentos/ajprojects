yum install openssh-server -y
systemctl enable sshd
systemctl start sshd
echo "q1w2e3/" | passwd --stdin root
rm -rf ~/.ssh
mkdir ~/.ssh
chmod 700 ~/.ssh
