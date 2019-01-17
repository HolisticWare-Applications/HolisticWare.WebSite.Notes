# ASP.NET Core on Raspbian

asp.net.core-raspbian.md

https://blogs.msdn.microsoft.com/david/2017/07/20/setting_up_raspian_and_dotnet_core_2_0_on_a_raspberry_pi/

https://laurentkempe.com/2017/04/14/ASPNET-Core-MVC-app-running-on-raspberry-pi/

https://jaredrhodes.com/2018/01/01/creating-an-asp-net-core-application-for-raspberry-pi/

https://www.thomaslevesque.com/2018/04/17/hosting-an-asp-net-core-2-application-on-a-raspberry-pi/

sudo systemctl enable ssh.service
sudo systemctl start ssh.service

mkdir ~/etk/
mkdir ~/etk/LabDemo/

cd ~/etk/LabDemo
./LabDemoWebApp.ASPnetCore


dotnet publish \
    -c Release \
    -r linux-arm

export RPI_IP=192.168.1.104
scp -r -v \
    ./bin/Release/netcoreapp2.2/linux-arm/publish/* \
    pi@$RPI_IP:/home/pi/etk/LabDemo/



sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get clean

sudo apt-get -y install \
    curl \
    libunwind8 \
    gettext \
    apt-transport-https


# https://github.com/dotnet/core-setup#daily-builds
curl -vsSL \
    -o dotnet.tar.gz \
    https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-linux-arm.tar.gz
sudo mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet 
sudo ln -s /opt/dotnet/dotnet /usr/local/bin
dotnet –help





https://www.codeproject.com/Articles/1241773/%2FArticles%2F1241773%2FSet-Up-an-ASP-NET-Core-CMS-Run-Site-on-Raspberry-P


sudo apt-get -y install \
    nginx

sudo service nginx start

echo \
"
location / 
{
        proxy_pass http://localhost:5000/;
        proxy_http_version 1.1;
        proxy_set_header Connection keep-alive;
}
" >> /etc/nginx/sites-available/default
cat /etc/nginx/sites-available/default
sudo nginx -s reload

sudo \
    echo \
"
[Unit]
Description=LabDemo ETK ASP.NET Core Web App
After=nginx.service
 
[Service]
Type=simple
User=pi
WorkingDirectory=/home/pi/etk/LabDemo
ExecStart=/home/pi/apps/etk/LabDemo/LabDemoWebApp.ASPnetCore
Restart=always
 
[Install]
WantedBy=multi-user.target
" \
    >> /lib/systemd/system/LabDemoWebApp.ASPnetCore.service
cat /lib/systemd/system/LabDemoWebApp.ASPnetCore.service

sudo systemctl enable LabDemoWebApp.ASPnetCore
sudo systemctl start  LabDemoWebApp.ASPnetCore




chromium-browser \
    --app=http://localhost:5000/ \
    --start-fullscreen \
    --kiosk \
    --incognito \
    --noerrdialogs \
    --disable-translate \
    --no-first-run \
    --fast \
    --fast-start \
    --disable-infobars \
    --disable-features=TranslateUI \
    --disk-cache-dir=/dev/null


mkdir ~/.config/lxsession
mkdir ~/.config/lxsession/LXDE-pi
sudo nano ~/.config/lxsession/LXDE-pi/autostart



@xset s off
@xset -dpms
@xset s noblank
/home/pi/etk/launcher.sh


systemctl --no-page -t service -a | less
journalctl --no-page -u LabDemoWebApp.ASPnetCore.service