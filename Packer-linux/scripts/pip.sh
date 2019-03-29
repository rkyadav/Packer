wget https://pypi.python.org/packages/packages/source/s/setuptools/setuptools-7.0.tar.gz --no-check-certificate
tar xzf setuptools-7.0.tar.gz
cd setuptools-7.0
python setup.py install
sudo yum install -y python-devel libffi-devel openssl-devel gcc python-pip redhat-rpm-config
sudo pip install --upgrade pip

