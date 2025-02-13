# ASP.NET Core on Raspbian

asp.net.core-raspbian.md


# OS Installation

1.   install newest Raspbian

2.  do the system update

3.   open ssh

```
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
```

## App Setup

create folder

```
mkdir ~/etk/
mkdir ~/etk/LabDemo/
```

Install prerequisites:

```
sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get clean

sudo apt-get -y install \
    curl \
    libunwind8 \
    gettext \
    apt-transport-https
```

Install .NET Core:

```
# https://github.com/dotnet/core-setup#daily-builds
curl -vsSL \
    -o dotnet.tar.gz \
    https://dotnetcli.blob.core.windows.net/dotnet/Runtime/master/dotnet-runtime-latest-linux-arm.tar.gz
sudo mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet 
sudo ln -s /opt/dotnet/dotnet /usr/local/bin
dotnet –help
```

## Deploy App from Development box (Windows/Linux/Mac)


```
dotnet publish \
    -c Release \
    -r linux-arm
```

Copy app to RPi:

Mac:

```
export RPI_IP=192.168.1.104
scp -r -v \
    ./bin/Release/netcoreapp2.2/linux-arm/publish/* \
    pi@$RPI_IP:/home/pi/etk/LabDemo/
```
Windows (use powershell, opr putty, pscp)


## Run/Test the app on Rpi

```
cd ~/etk/LabDemo
./LabDemoWebApp.ASPnetCore
```

### Prepare web-server/reverse-proxy

Deployed kestrel server is not ideal to be exposed on public network (intenet).

Install nginx

```
sudo apt-get -y install \
    nginx
```

Start nginx service:

```
sudo service nginx start
```

Nginx conf (TODO):

```
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
```

Launch app as service:

```
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
```

Service debugging:

```
systemctl --no-page -t service -a | less
journalctl --no-page -u LabDemoWebApp.ASPnetCore.service
```

## Browser Launch

Launching `chromium` browser in fullscreen kiosk mode:

```
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
```

Config for LXDE startup script:

```
mkdir ~/.config/lxsession
mkdir ~/.config/lxsession/LXDE-pi
sudo nano ~/.config/lxsession/LXDE-pi/autostart
```

LXDE startup script:

```
@xset s off
@xset -dpms
@xset s noblank
/home/pi/etk/launcher.sh
```

## References / Links

https://blogs.msdn.microsoft.com/david/2017/07/20/setting_up_raspian_and_dotnet_core_2_0_on_a_raspberry_pi/

https://laurentkempe.com/2017/04/14/ASPNET-Core-MVC-app-running-on-raspberry-pi/

https://jaredrhodes.com/2018/01/01/creating-an-asp-net-core-application-for-raspberry-pi/

https://www.thomaslevesque.com/2018/04/17/hosting-an-asp-net-core-2-application-on-a-raspberry-pi/

https://www.codeproject.com/Articles/1241773/%2FArticles%2F1241773%2FSet-Up-an-ASP-NET-Core-CMS-Run-Site-on-Raspberry-P

