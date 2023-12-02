#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='\033[0m'

# Functions

get_miner_name() {
    local ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
    local miner_name=$ip

    echo "$miner_name"
}

get_distributor_id() {
    local disctributor_id=$(lsb_release -ds | grep -o "^\w*\b" | tr "[:upper:]" "[:lower:]")
    echo "$disctributor_id"
}

# Variables

branch="main"
scripts_folder_name="scripts"
package_installer_file_postfix="-package-installer.sh"
package_installer_raw_file_url="https://raw.githubusercontent.com/Qubic-World/qubicli-miner-installer/$branch/$scripts_folder_name/$(get_distributor_id)$package_installer_file_postfix"

# Installing the required packages depending on the Distributor ID

status=$(curl --head --silent $package_installer_raw_file_url | head -n 1)

if echo "$status" | grep -q 404; then
  echo -e "${RED}Could not find package installer for Distibutor Id: $(get_distributor_id) at link: $package_installer_raw_file_url${NOCOLOR}"
  exit 1
fi

echo -e "${GREEN}Installing the required packages${NOCOLOR}"
curl $package_installer_raw_file_url | sudo bash

# Validate argumets

toker=$1
if [ -z "$1" ]; then
    echo "<TOKEN>: Your personal token to access the API"
    echo "[IGNORE_NUMBER_OF_THREADS] (OPTIONAL) if possible, exclude N processing units"
    echo "[DISABLE_AVX2] (OPTIONAL) disables AVX512"
    exit 1
fi

# Get ignore number of threads
ignore_number_of_threads=0
if [ "$2" ]; then
    ignore_number_of_threads=$2
fi

# Display miner info

token=$1
thread_number=$(nproc --ignore=$ignore_number_of_threads)
miner_name=$(get_miner_name)
echo -e "Miner name: ${GREEN}${miner_name}${NOCOLOR}"
echo -e "Nmber of threads: ${GREEN}${thread_number}${NOCOLOR}"

# Install client
# Install wine
apt-get install wine -y
# download service installation script
rm qli-Service-install.sh || wget https://dl.qubic.li/cloud-init/qli-Service-install.sh
# set the script as executable
chmod u+x qli-Service-install.sh
systemctl stop qli
# install qubic.li client as systemd service
# Syntax: qli-Service-install.sh <threads> <accessToken|payoutId> [alias]
./qli-Service-install.sh $thread_number $token $miner_name

# Disable AVX512 and enable AVX2
if [ "$3" == "avx2" ]; then
     service qli stop
     jq '.Settings += {useAvx2:true}' /q/appsettings.json > out.tmp && cat out.tmp > /q/appsettings.json && rm out.tmp
     service qli start
fi

# show systemd service
tail -f /var/log/qli.log
