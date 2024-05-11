command=""
isActive=true
hyperlink_start="\033]8;;"
hyperlink_end="\033\\"
underline=${tput smul}
nounderline=$(tput rmul) 
reset=$(tput sgr0)
main(){
    startsession
}

startsession(){
    echo "started session"
    printBanner
    printOpeningline
    while $isActive;
    do
        awaitcommand
    done   
   
}

printBanner(){
cat << "EOF";
       _,.
     ,` -.)
    '( _/'-\\-.               
   /,|`--._,-^|            ,     
   \_| |`-._/||          ,'|       
     |  `-, / |         /  /      
     |     || |        /  /       
      `r-._||/   __   /  /  
  __,-<_     )`-/  `./  /
 '  \   `---'   \   /  / 
     |           |./  /  
     /           //  /     
 \_/' \         |/  /         
  |    |   _,^-'/  /              
  |    , ``  (\/  /_        
   \,.->._    \X-=/^         
   (  /   `-._//^`  
    `Y-.____(__}              
     |     {__)           
           ()`     



"$$\'                                   '$$\'     '$$\'                                       '$$\'         '$$\'  '$$\'    '$$\'              '$$\'              '$$$$$$$\'                        '$$\"     
"$$ |'                                  '$$ |'    '$$ |'                                      '$$ |'        '$$ |' '$$ |'  '\__|'              '\__|'             '$$  __$$\                         $$ \"    
"$$$$$$$\   $$$$$$\  $$\   $$\       $$$$$$\   $$$$$$$\   $$$$$$\   $$$$$$\   $$$$$$\        $$ |      $$$$$$\   $$$$$$$\  $$\  $$$$$$$\       $$\  $$$$$$$\       $$ |  $$ | $$$$$$\  $$\  $$$$$$\$$$$$$\'   
"$$  __$$\ $$  __$$\ $$ |  $$ |      \_$$  _|  $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\       $$ |      \_$$  _|  $$  __$$\ $$ |$$  _____|      $$ |$$  _____|      $$$$$$$  | \____$$\ \__| \____$$\_$$  _|'  
'$$ |  $$ |$$$$$$$$ |$$ |  $$ |        $$ |    $$ |  $$ |$$$$$$$$ |$$ |  \__|$$$$$$$$ |      \__|        $$ |    $$ |  $$ |$$ |\$$$$$$\        $$ |\$$$$$$\        $$  __$$<  $$$$$$$ |$$\  $$$$$$$ |$$ |'    
'$$ |  $$ |$$   ____|$$ |  $$ |        $$ |$$\ $$ |  $$ |$$   ____|$$ |      $$   ____|                  $$ |$$\ $$ |  $$ |$$ | \____$$\       $$ | \____$$\       $$ |  $$ |$$  __$$ |$$ |$$  __$$ |$$ |$$\' 
'$$ |  $$ |\$$$$$$$\ \$$$$$$$ |        \$$$$  |$$ |  $$ |\$$$$$$$\ $$ |      \$$$$$$$\       $$\         \$$$$  |$$ |  $$ |$$ |$$$$$$$  |      $$ |$$$$$$$  |      $$ |  $$ |\$$$$$$$ |$$ |\$$$$$$$ |\$$$$  |'
'\__|  \__| \_______| \____$$ |         \____/ \__|  \__| \_______|\__|       \_______|      \__|         \____/ \__|  \__|\__|\_______/       \__|\_______/       \__|  \__| \_______|$$ | \_______| \____/ '
                   '$$\   $$ |                                                                                                                                                  $$\   $$ | '                 
                   '\$$$$$$  |'                                                                                                                                                  '\$$$$$_/'                                                                                                                                                                                           
                     '\______/' 

                                                                                                                                                                          
EOF
}

printOpeningline(){
    echo " for the list of available commands, type help"
}

awaitcommand(){
    read -p ">>> " command
    executecommand
}

executecommand() {
    case $command in
            "")
            executemptycommand
            ;;
        "help")
            Helpcommandexecuted
            ;;
        "exit")
            exitterminal
            ;;
        "who is")
            executewhoiscommand
            ;;
        "github")
            executegithublink
            ;;
        "projects")
            executeproject
            ;;
        "social")
            excecutesocial
            ;;                
        *)
            commandNotfound
            ;;
    esac
}

Helpcommandexecuted() {
    echo "who is            Who is Rajat?"
    echo "whoami            Who are you?"
    echo "video             View YouTube videos"
    echo "github            GitHub profile link"
    echo "projects          Techy projects"
    echo "social            social media link"
    echo "help              Do you really need help?"
    echo "clear             Clear the terminal screen"
    echo "exit              Exit the terminal"
}
   executewhoiscommand(){
    echo "This is Rajat kumar "
    echo "from Greater Noida .."
    echo "G.L. Bajaj Institute of technology and Management"
    echo "IT undergrad "
    echo "BATCH - 2025 "
   }

   executegithublink(){
    printf "github link ${underline}${hyperlink_start}https://github.com/Rajat-24227${hyperlink_end}Visit my GitHub${reset}${nounderline}\n"
   }

   excecutesocial(){
   printf "LinkedIn profile ${underline}${hyperlink_start}https://www.linkedin.com/in/rajatkumar07/${hyperlink_end}Visit my LinkedIn${reset}${nounderline}\n"
   }
   executeproject(){
   printf "github link ${underline}${hyperlink_start}https://github.com/Rajat-24227${hyperlink_end}Visit my GitHub${reset}${nounderline}\n"
   }

   executemptycommand(){
    echo "Please enter the command,for the list of commands,type 'help' "
   }
   commandNotfound(){
    echo "Command '$command' not found . for the list of commands , type 'help' "
   }
   exitterminal(){
    isActive=false
  }

# case expression in  // case statement syntax bash -- scripting
#     pattern1)
#         # commands for pattern1
#         ;;
#     pattern2)
#         # commands for pattern2
#         ;;
#     ...
#     patternN)
#         # commands for patternN
#         ;;
#     *)
#         # default commands
#         ;;
# esac
   
main