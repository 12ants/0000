#!/bin/bash
## login
echo "Banner /etc/issue" >> /etc/ssh/sshd_config
echo '

      _____    _______  ________  ________   _________  ________      
     / __  \  /  ___  \|\   __  \|\   ___  \|\___   ___\\   ____\     
    |\/_|\  \/__/|_/  /\ \  \|\  \ \  \\ \  \|___ \  \_\ \  \___|_    
    \|/ \ \  \__|//  / /\ \   __  \ \  \\ \  \   \ \  \ \ \_____  \   
         \ \  \  /  /_/__\ \  \ \  \ \  \\ \  \   \ \  \ \|____|\  \  
          \ \__\|\________\ \__\ \__\ \__\\ \__\   \ \__\  ____\_\  \ 
           \|__| \|_______|\|__|\|__|\|__| \|__|    \|__| |\_________\
                                      12ants.github.io     \|_________|
                                                                                                                      

' > /etc/issue
