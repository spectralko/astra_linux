USERNAME="rdp-user" #Введите имя пользователя, где будет запускаться рдп
IP_RDP="0.0.0.0" #Введите ип ржп сервера

PATH_TO_RDP=/home/$USERNAME/.config/autostart
EXEC_CMD='xfreerdp +clipboard /v:'"$IP_RDP"' /d: /cert:ignore /f /u:$(zenity --entry --title="Введите логин" --text="Логин:") /p:$(zenity --entry --hide-text --title="Введите пароль" --text="Пароль:")'

cat > $PATH_TO_RDP/rdp_arch.desktop << EOF
[Desktop Entry]
Type=Application
Terminal=false
Exec=$EXEC_CMD
Name=FreeRDP
Name[ru]=РДП для Счетной палаты
EOF

chown $USERNAME $PATH_TO_RDP/rdp_arch.desktop
