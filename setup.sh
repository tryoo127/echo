#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="tryoo127"
green='\e[32m'
RED='\033[0;31m'
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl -sS https://raw.githubusercontent.com/tryoo127/access/main/ip | awk '{print $4}' | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "\e[0;32m           I.p Permission Accepted ✅ \e[0m"
sleep 0.8
else
clear
echo ""
rm -f setup.sh
echo -e "\e[1;31m           I.p Permission Denied ❎ \e[0m"
echo -e "${green}Please Contact @XoolVPN To Register Your I.p\e[0m"
sleep 5
exit 0
fi
clear
#Provider script
echo ""
echo -e "    \e[0;32mPLEASE ENTER A NAME OF PROVIDER FOR THE SCRIPT\e[0m"
read -p "    Provider Name : " nm
echo $nm > /root/provided
echo ""
sleep 2
echo -e "    \e[0;32mPLEASE ENTER YOUR POINTING DOMAIN\e[0m"
read -p "    Domain / Subdomain : " host1
echo "IP=" >> /var/lib/premium-script/ipvps.conf
echo $host1 > /root/domain
echo ""
clear
echo -e "\e[0;32mREADY FOR INSTALLATION SCRIPT...\e[0m"
sleep 2
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
echo -e "\e[0;32mDONE INSTALLING SSH & OVPN\e[0m"
clear
#install Xray
echo -e "\e[0;32mINSTALLING XRAY CORE...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/ins-xray.sh && chmod +x ins-xray.sh && screen -S ins-xray ./ins-xray.sh
echo -e "\e[0;32mDONE INSTALLING XRAY CORE\e[0m"
clear
#install Trojan GO
echo -e "\e[0;32mINSTALLING TROJAN GO...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/trojan-go.sh && chmod +x trojan-go.sh && screen -S trojan-go ./trojan-go.sh
echo -e "\e[0;32mDONE INSTALLING TROJAN GO\e[0m"
clear
#install ohp-server
echo -e "\e[0;32mINSTALLING OHP...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/ohp.sh && chmod +x ohp.sh && ./ohp.sh
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
echo -e "\e[0;32mDONE INSTALLING OHP PORT\e[0m"
clear
#install websocket
echo -e "\e[0;32mINSTALLING WEBSOCKET...\e[0m"
wget https://raw.githubusercontent.com/tryoo127/echo/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
echo -e "\e[0;32mDONE INSTALLING WEBSOCKET PORT\e[0m"
clear
#install SET-BR
echo -e "\e[0;32mINSTALLING SET-BR...\e[0m"
sleep 1
wget https://raw.githubusercontent.com/tryoo127/echo/main/install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
echo -e "\e[0;32mDONE INSTALLING SET-BR...\e[0m"
clear
rm -f /root/ssh-vpn.sh
rm -f /root/ins-xray.sh
rm -f /root/trojan-go.sh
rm -f /root/set-br.sh
rm -f /root/ohp.sh
rm -f /root/ohp-dropbear.sh
rm -f /root/ohp-ssh.sh
rm -f /root/websocket.sh
# Colour Default
echo "1;36m" > /etc/banner
echo "30m" > /etc/box
echo "1;31m" > /etc/line
echo "1;32m" > /etc/text
echo "1;33m" > /etc/below
echo "47m" > /etc/back
echo "1;35m" > /etc/number
echo 3d > /usr/bin/test
clear
echo " "
echo -e "       \e[0;32mINSTALLATION HAS BEEN COMPLETED!!\e[0m"
echo " "
echo -e "\e[1;32m══════════════════Autoscript PREMIUM══════════════════\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI SSH & OpenVPN]" | tee -a log-install.txt
echo "    -------------------------" | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200"  | tee -a log-install.txt
echo "   - OpenVPN SSL             : 110"  | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 442, 109"  | tee -a log-install.txt
echo "   - OHP Dropbear            : 8585"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8686"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8787"  | tee -a log-install.txt
echo "   - Websocket SSH(HTTP)     : 2081"  | tee -a log-install.txt
echo "   - Websocket SSL(HTTPS)    : 222"  | tee -a log-install.txt
echo "   - Websocket OpenVPN       : 2084"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI Sqd, Bdvp, Ngnx]" | tee -a log-install.txt
echo "    ---------------------------" | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8000 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI XRAY]"  | tee -a log-install.txt
echo "    ----------------" | tee -a log-install.txt
echo "   - Xray Vmess Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Tcp Xtls     : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls  : 8443"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls  : 8442"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI TROJAN]"  | tee -a log-install.txt
echo "    ------------------" | tee -a log-install.txt
echo "   - Xray Trojan Tcp Tls     : 443"  | tee -a log-install.txt
echo "   - Trojan Go               : 2083"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI CLASH FOR ANDROID (YAML)]"  | tee -a log-install.txt
echo "    -----------------------------------" | tee -a log-install.txt
echo "   - Xray Vmess Ws Yaml      : Yes"  | tee -a log-install.txt
echo "   - Shadowsocks Yaml        : Yes"  | tee -a log-install.txt
echo "   - ShadowsocksR Yaml       : Yes"  | tee -a log-install.txt
echo "   --------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Kuala_Lumpur (GMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo -e "\e[1;32m══════════════════Autoscript By Someone══════════════════\e[0m" | tee -a log-install.txt
echo ""
echo -e "       \e[0;32mSERVER WILL AUTOMATICALLY REBOOT IN 10 SECONDS\e[0m"
rm -r setup.sh
sleep 10
reboot
