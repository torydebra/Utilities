alias kmap=~/Documenti/tastiera.sh

alias git='LANG=en_GB git'

alias killgz='killall gzserver || killall gzclient'

alias killros='killall rosmaster || killall roscore'

alias tpo='cd ~/TelePhysicalOperation/ && source centauro/devel/setup.bash'

alias tpo_emb='cd ~/TelePhysicalOperation/tpo_embedded && source ./devel/setup.bash'

alias tpo_gui='cd ~/TelePhysicalOperation/tpo_gui && source ./devel/setup.bash'

alias kdev='~/Applications/KDevelop-5.6.1-x86_64_98f9d552ad467fee6aabde145f22b64b.AppImage & disown && exit'

alias tpo_pull='echo -e "\e[96mPulling telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git pull &&
                echo -e "\e[96mPulling tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git pull &&
                echo -e "\e[96mPushing tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git pull &&
                echo -e "\e[96mPushing tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git pull &&
                echo -e "\e[96mPushing tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git pull &&
                cd ~/TelePhysicalOperation'
                
alias tpo_push='echo -e "\e[96mPushing telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git push &&
                echo -e "\e[96mPushing tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git push &&
                echo -e "\e[96mPushing tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git push &&
                echo -e "\e[96mPushing tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git push &&
                echo -e "\e[96mPushing tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git push &&
                cd ~/TelePhysicalOperation'
               
alias tpo_status='echo -e "\e[96mStatusing telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git status &&
                echo -e "\e[96mStatusing tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git status &&
                echo -e "\e[96mStatusing tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git status &&
                echo -e "\e[96mStatusing tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git status &&
                echo -e "\e[96mStatusing tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git status &&
                cd ~/TelePhysicalOperation'
