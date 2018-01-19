echo "Welcome to ez-chili"
echo /n
echo "This script will install chilipeppr-grbl and it’s underlying requirements."/n
echo "This script will begin installation in 10 seconds."/n
echo "Type Crtl-C now to cancel this script if you don’t wish to install."/n
sleep 1
echo "10"/n
sleep 1
echo "9"/n
sleep 1
echo "8"/n
sleep 1
echo "7"/n
sleep 1
echo "6"/n
sleep 1
echo "5"/n
sleep 1
echo "4"/n
sleep 1
echo "3"/n
sleep 1
echo "2"/n
sleep 1
echo "1"/n
sleep 1
echo "Beginning installation now."/n

echo "Installing Docker"/n
curl -sSL https://get.docker.com|sh
echo "Docker installed."/n
echo "Starting Docker service."/n
sudo systemctl start docker
echo "Enabling Docker service auto-start."/n
sudo systemctl enable docker
echo "Setting user pi to docker group."/n
sudo usermod -aG docker "$(whoami)"
echo "Docker configured"/n
echo "Downloading georgegeorgulasiv/docker-chilipeppr-grbl"/n
docker pull georgegeorgulasiv/docker-chilipeppr-grbl
echo "Downloaded latest version of docker image"/n
echo "Starting docker-chilipeppr-grbl container as a daemon."
docker run -d georgegeorgulasiv/docer-chilipeppr-grbl
