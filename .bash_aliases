alias kmap=~/Documenti/tastiera.sh

alias git='LANG=en_GB git'

alias killgz='killall gzserver || killall gzclient'

alias killros='killall rosmaster || killall roscore'

alias tpo='cd ~/TelePhysicalOperation/ && source ./devel/setup.bash'

alias tpo_emb='cd ~/TelePhysicalOperation/tpo_embedded && source ./devel/setup.bash'

alias tpo_gui='cd ~/TelePhysicalOperation/tpo_gui && source ./devel/setup.bash'

alias rob='cd ~/TelePhysicalOperation/robots && source ./devel/setup.bash'

alias kdev='~/Applications/KDevelop-5.6.1-x86_64_98f9d552ad467fee6aabde145f22b64b.AppImage & disown && exit'

alias groot='/usr/local/lib/groot/Groot'
alias groot2='~/BehaviorTreeLibs/Groot2/bin/groot2'

alias tpo_pull='echo -e "\e[96mPulling telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git pull &&
                echo -e "\e[96mPulling tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git pull &&
                echo -e "\e[96mPulling tpo_gazebo...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_gazebo && git pull &&
                echo -e "\e[96mPulling tpo_vision...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_vision && git pull &&
                echo -e "\e[96mPulling tpo_bt...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_bt && git pull &&
                echo -e "\e[96mPulling tpo_haptic...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_haptic && git pull &&
                echo -e "\e[96mPulling tpo_matlab...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_matlab && git pull &&
                echo -e "\e[96mPulling tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git pull &&
                echo -e "\e[96mPulling tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git pull &&
                echo -e "\e[96mPulling tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git pull &&
                cd ~/TelePhysicalOperation'
                
alias tpo_push='echo -e "\e[96mPushing telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git push &&
                echo -e "\e[96mPushing tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git push &&
                echo -e "\e[96mPushing tpo_gazebo...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_gazebo && git push &&   
                echo -e "\e[96mPushing tpo_vision...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_vision && git push &&   
                echo -e "\e[96mPushing tpo_bt...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_bt && git push && 
                echo -e "\e[96mPushing tpo_haptic...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_haptic && git push && 
                echo -e "\e[96mPushing tpo_matlab...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_matlab && git push &&                
                echo -e "\e[96mPushing tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git push &&
                echo -e "\e[96mPushing tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git push &&
                echo -e "\e[96mPushing tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git push &&
                cd ~/TelePhysicalOperation'
               
alias tpo_status='echo -e "\e[96mStatusing telephysicaloperation...\e[0m" && cd ~/TelePhysicalOperation/src && git status &&
                echo -e "\e[96mStatusing tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_msgs && git status &&
                echo -e "\e[96mStatusing tpo_gazebo...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_gazebo && git status &&
                echo -e "\e[96mStatusing tpo_vision...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_vision && git status &&
                echo -e "\e[96mStatusing tpo_bt...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_bt && git status &&  
                echo -e "\e[96mStatusing tpo_haptic...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_haptic && git status &&                                
                echo -e "\e[96mStatusing tpo_matlab...\e[0m" && cd ~/TelePhysicalOperation/src/tpo_matlab && git status &&
                echo -e "\e[96mStatusing tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/src/tpo_embedded && git status &&
                echo -e "\e[96mStatusing tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/src/tpo_web_gui && git status &&
                echo -e "\e[96mStatusing tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/src/tpo_gui && git status &&
                cd ~/TelePhysicalOperation'
                
alias tpo_make='echo -e "\e[96mCompiling telephysicaloperation and tpo_msgs...\e[0m" && cd ~/TelePhysicalOperation/ && catkin_make &&
                echo -e "\e[96mCompiling tpo_embedded...\e[0m" && cd ~/TelePhysicalOperation/tpo_embedded/ && catkin_make &&
                echo -e "\e[96mCompiling tpo_web_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_web_gui/ && catkin_make &&
                echo -e "\e[96mCompiling tpo_gui...\e[0m" && cd ~/TelePhysicalOperation/tpo_gui/ && catkin_make &&
                cd ~/TelePhysicalOperation'
