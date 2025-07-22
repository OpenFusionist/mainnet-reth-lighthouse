cd ..

if [ -d "network_config" ]; then
    echo "network_config directory exists, pulling latest changes..."
    cd network_config
    git pull origin main
else
    echo "Cloning network_config repository..."
    git clone https://github.com/OpenFusionist/network_config
    cd network_config
fi

./decompress.sh 

cd ../mainnet-reth-lighthouse

