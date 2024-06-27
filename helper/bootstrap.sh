#!/bin/bash

# Install dependencies for building Python from source
apt-get update
apt-get install -y \
    wget \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libgdbm-dev \
    libdb5.3-dev \
    libbz2-dev \
    libexpat1-dev \
    liblzma-dev \
    tk-dev

#### -------------------------------- didn't work
#### apt-get update -y
#### apt-get install software-properties-common -y
#### apt-get install --reinstall ca-certificates
#### apt-get install python3-launchpadlib
#### add-apt-repository -y 'ppa:deadsnakes/ppa'
#### apt-get update -y
#### 
#### tox -e py39
#### 
