#!/bin/bash

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer -o pyenv-installer.sh
chmod u+x ./pyenv-installer.sh 
./pyenv-installer.sh 

cat << 'EOF' >> /root/.bashrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF

# pyenv install --list

# $ sudo apt install ca-certificates curl git libjpeg-dev build-essential make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev -y
# CC=clang pyenv install 3.5.10
# CC=clang pyenv install 3.6.15
# CC=clang pyenv install 3.7.12
# CC=clang pyenv install 3.8.12
# CC=clang pyenv install 3.9.10
# CC=clang pyenv install 3.10.14
CC=clang pyenv install 3.11.9  # <-- Homepage
# CC=clang pyenv install 3.12.4

# pyenv global 3.5.10 3.6.15 3.7.12 3.8.12 3.9.10 3.10.14 3.11.9 3.12.4 # only compatible up to 3.11
pyenv global 3.11.9 # <-- Homepage

pip install tox
pip install pytest # Use python 3.11. imp is deprecated and is turned into importlib in 3.12.



##### ---------------------------------- aus
##### 
##### --> never worked --> v v v
##### # curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
##### curl https://bootstrap.pypa.io/pip/3.5/get-pip.py  -o get-pip3.5.py && python3.5 get-pip3.5.py
##### curl https://bootstrap.pypa.io/pip/3.6/get-pip.py  -o get-pip3.6.py && python3.6 get-pip3.6.py
##### curl https://bootstrap.pypa.io/pip/3.7/get-pip.py  -o get-pip3.7.py && python3.7 get-pip3.7.py
##### curl https://bootstrap.pypa.io/pip/3.8/get-pip.py  -o get-pip3.8.py && python3.8 get-pip3.8.py
##### curl https://bootstrap.pypa.io/pip/3.9/get-pip.py  -o get-pip3.9.py && python3.9 get-pip3.9.py
##### 
##### # Older version of SSL for older versions of Python
##### curl https://openssl.org/source/openssl-1.0.2k.tar.gz -o openssl-1.0.2k.tar.gz
##### tar -xvf openssl-1.0.2k.tar.gz
##### cd openssl-1.0.2k
##### ./config --prefix=/app/helper/openssl-1.0.2k/local --openssldir=/usr/lib/ssl enable-ssl2 enable-ssl3 no-shared
##### make depend
##### make
##### make -i install
##### # rm -rf openssl-1.0.2k
##### # rm openssl-1.0.2k.tar.gz
##### # Older versions of Python
##### ### CC=clang CFLAGS=-I/usr/include/openssl LDFLAGS=-L/usr/lib pyenv install -v 3.4.10
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.1.3  # Warnings: readline, bzip2
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.2.3  # Warnings: readline, bzip2
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.3.7. # Warnings: readline
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.4.6
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.5.6  # BUILD FAILED
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.6.9  # BUILD FAILED (ssl)
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 2.7.18 # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 3.0.1  # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 3.1.5. # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 3.2.6. # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 3.3.7. # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### CC=clang PKG_CONFIG_PATH="/app/helper/openssl-1.0.2k/local/lib/pkgconfig" CONFIGURE_OPTS="--with-openssl=/app/helper/openssl-1.0.2k/local" SSH="/app/helper/openssl-1.0.2k/local" LDFLAGS="-Wl,-rpath,/app/helper/openssl-1.0.2k/local/lib,-L/app/helper/openssl-1.0.2k/local/lib" CPPFLAGS="-I/app/helper/openssl-1.0.2k/local/include" CFLAGS="-I/app/helper/openssl-1.0.2k/local/include" pyenv install -v 3.4.10 # ERROR: The Python ssl extension was not compiled. Missing the OpenSSL lib?
##### 