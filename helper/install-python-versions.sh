# Function to build and install a specific Python version
install_python() {
    PYTHON_VERSION=$1
    PYTHON_TAR=Python-${PYTHON_VERSION}.tgz
    PYTHON_DIR=Python-${PYTHON_VERSION}

    # Download Python source code
    wget https://www.python.org/ftp/python/${PYTHON_VERSION}/${PYTHON_TAR}

    # Extract the tarball
    tar -xzf ${PYTHON_TAR}

    # Configure and install
    cd ${PYTHON_DIR}
    ./configure --enable-optimizations
    make -j$(nproc)
    make altinstall

    # Clean up
    cd ..
    rm -rf ${PYTHON_DIR} ${PYTHON_TAR}
}

# List of Python versions to install
PYTHON_VERSIONS=(
    "3.5.10"
    "3.6.15"
    "3.7.12"
    "3.8.12"
    "3.9.10"
    "3.10.14"
    "3.11.9"
    "3.12.4"
)

# Loop through and install each version
for version in "${PYTHON_VERSIONS[@]}"; do
    install_python ${version}
done

# Verify installations
for version in "${PYTHON_VERSIONS[@]}"; do
    python3.${version:2:1} --version
done
