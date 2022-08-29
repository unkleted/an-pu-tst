amazon-linux-extras install epel -y
yum install git ansible -y

ansible-pull -U https://github.com/unkleted/an-pu-tst.git -i 127.0.0.1,