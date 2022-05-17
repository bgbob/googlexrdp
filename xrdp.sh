apt update
apt install screen -y
apt install sudo -y
sudo adduser bob --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "bob:OmBobOpreker" | sudo chpasswd
sudo usermod -aG sudo,adm bob
clear
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngr0k > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
nohup ./ngrok tcp --region $CRP 3389 &>/dev/null &
clear
echo "===================================="
echo "Install XFCE"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "Username : bob"
echo "Password : OmBobOpreker"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
rm -rf ngrok.zip xrdp.sh
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
________            __________      ___.     ________                        __                 
\_____  \   _____   \______   \ ____\_ |__   \_____  \ _____________   ____ |  | __ ___________ 
 /   |   \ /     \   |    |  _//  _ \| __ \   /   |   \\____ \_  __ \_/ __ \|  |/ // __ \_  __ \
/    |    \  Y Y  \  |    |   (  <_> ) \_\ \ /    |    \  |_> >  | \/\  ___/|    <\  ___/|  | \/
\_______  /__|_|  /  |______  /\____/|___  / \_______  /   __/|__|    \___  >__|_ \\___  >__|   
        \/      \/          \/           \/          \/|__|               \/     \/    \/       

    $r  Support YT Channel-> https://www.youtube.com/ombobopreker
          
$endc$enda""";
sleep 43200
