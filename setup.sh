#!/bin/bash
# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

# Universal vars
success=false

# Vesktop setup
vesktop_theme_dir=~/.config/vesktop/themes/
vesktop_theme_name=ClearVision_v6.theme.css
if [ -d "$vesktop_theme_dir" ]; then
    echo -e "Do you wish to install the "$vesktop_theme_name" theme for "$BIPurple"Vesktop"$Color_Off"?"
    select input in "Yes" "No"; do
        case $input in
            Yes ) rm -rf ""$vesktop_theme_dir"/"$vesktop_theme_name""
                    echo -e "Removing old '"$BICyan""$vesktop_theme_name""$Color_Off"' file..."
                    echo -e "Copying '"$BICyan""$vesktop_theme_name""$Color_Off"' to '"$BICyan""$vesktop_theme_dir""$Color_Off"'"
                    cp ./themes/"$vesktop_theme_name" "$vesktop_theme_dir";
                    echo -e ""$BIPurple"Vesktop Theme"$Color_Off" "$BIGreen"was successfully installed :3"$Color_Off""
                    success=true
                    break;;
            No )  break;;
        esac
    done
else
    echo -e ""$BIRed"It seems like "Vesktop" is not installed"
    echo -e ""$Red"Install it with 'yay -S vesktop'"$Color_Off""
fi

# .bashrc setup (neofetch)
neofetch_dir=~/.config/neofetch/
neofetch_config_name=config.conf
if [ -d "$neofetch_dir" ]; then
    echo -e "Do you want to bocchify your terminal?"
    select input in "Yes" "No"; do
        case $input in
            Yes ) rm -rf ""$neofetch_dir"/"$neofetch_config_name""
                    echo -e "Removing old '"$BICyan""$neofetch_config_name""$Color_Off"' file..."
                    echo -e "Copying '"$BICyan""$neofetch_config_name""$Color_Off"' to '"$BICyan""$neofetch_dir""$Color_Off"'"
                    cp ./bashrc/"$neofetch_config_name" "$neofetch_dir";
                    echo -e ""$BIPurple"Terminal"$Color_Off" "$BIGreen"was successfully bocchified >\\\\\\<"$Color_Off""
                    success=true
                    break;;
            No )  break;;
        esac
    done
else
    echo -e ""$BIRed"It seems like "neofetch" is not installed"
    echo -e ""$Red"Install it with 'yay -S neofetch'"$Color_Off""
fi

if [ "$success" = true ] ; then
    echo -e ""$BIGreen"Setup succesfully completed!"$Color_Off""
else
    echo -e ""$BIRed"Setup was cancelled."$Color_Off""
fi
