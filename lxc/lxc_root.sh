yum install openssh-server -y
systemctl enable sshd
systemctl start sshd
echo "q1w2e3/" | passwd --stdin root
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2NY3XnsD6RSLyUAWNun6PqusaXZelYIXXU9TSe6vOsYcxQQ8Oz6qUfba4v3weDaFkv5O1OO9RXXN+HXLF3F5kVt5optreXTdlM2xq+IHHl0wFk/srzIrtV8IWA4bemLfzfrW0P8MKCF6cDcl3xFz7qRk5S8O47VWnXH0JFLhLexUVktWEYKHmYNPHns+ET24baQ4m3yWq3FVbZHcy3W1K/piPNj9rh3YsDZVX/hagnJvphRpz7qE3IAsS/IZGOG9a31ODSJlaHFr5hLfo5JdJszLUzB2nuxmQFT9GTEr9I+scsgbs0ARkQjfrMNDKdh/vSHeklwPWOwHAM/P2hx6/ vagrant@lxc" >> /root/.ssh/authorized_keys

