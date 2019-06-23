# dotnet installation on Raspbian

dotnet-install-raspbian.md

sudo apt-key adv \
    --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF  
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" \
| \
sudo tee /etc/apt/sources.list.d/mono-official-stable.list  
sudo apt update  
sudo apt install mono-devel  
mono --version  

sudo apt install apt-transport-https dirmngr  
sudo apt-key adv \
    --keyserver hkp://keyserver.ubuntu.com:80 \
    --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF  
echo "deb https://download.mono-project.com/repo/ubuntu vs-bionic main" \
| \
sudo tee /etc/apt/sources.list.d/mono-official-vs.list  
sudo apt update  
sudo apt-get install monodevelop  


wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb  
sudo dpkg -i packages-microsoft-prod.deb  
sudo add-apt-repository universe  
sudo apt-get install apt-transport-https  
sudo apt-get update  
sudo apt-get install dotnet-sdk-2.2  
dotnet –version  