sudo yum -y update
sudo yum -y install sssd realmd krb5-workstation samba-common-tools
sudo realm join -U join_account@example.com example.com(The fully-qualified DNS name of your directory.) --verbose
sudo vi /etc/ssh/sshd_config
PasswordAuthentication yes
sudo service sssd start
https://docs.aws.amazon.com/directoryservice/latest/admin-guide/join_linux_instance.html