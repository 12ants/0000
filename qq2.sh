#!/bin/bash
reset ; 
unset 
tput cup 0;
tput ed;
echo "

  ------------------------------------------
  ------------ $green hello $re ---------------------
  ------------------------------------------ 
  --$dim Choose:  [$re Up / Down$dim ]$re
  --$dim Select:  [$re Space$dim ]$re
  --$dim Confirm: [$re Enter$dim ]$re
  ------------------------------------------
  -- Choose multiple options: --------------
  ------------------------------------------
 "
function prompt_for_multiselect () {

    # little helpers for terminal print control and key input
    ESC=$( printf "\033")
    cursor_blink_on()   { printf "$ESC[?25h"; }
    cursor_blink_off()  { printf "$ESC[?25l"; }
    cursor_to()         { printf "$ESC[$1;${2:-1}H"; }
    print_inactive()    { printf "$2   $1 "; }
    print_active()      { printf "$2  $ESC[7m $1 $ESC[27m"; }
    get_cursor_row()    { IFS=';' read -sdR -p $'\E[6n' ROW COL; echo ${ROW#*[}; }
    key_input()         {
      local key
      IFS= read -rsn1 key 2>/dev/null >&2
      if [[ $key = ""      ]]; then echo enter; fi;
      if [[ $key = $'\x20' ]]; then echo space; fi;
      if [[ $key = $'\x1b' ]]; then
        read -rsn2 key
        if [[ $key = [A ]]; then echo up;    fi;
        if [[ $key = [B ]]; then echo down;  fi;
      fi 
    }
    toggle_option()    {
      local arr_name=$1
      eval "local arr=(\"\${${arr_name}[@]}\")"
      local option=$2
      if [[ ${arr[option]} == true ]]; then
        arr[option]=
      else
        arr[option]=true
      fi
      eval $arr_name='("${arr[@]}")'
    }

    local retval=$1
    local options
    local defaults

    IFS=';' read -r -a options <<< "$2"
    if [[ -z $3 ]]; then
      defaults=()
    else
      IFS=';' read -r -a defaults <<< "$3"
    fi
    local selected=()

    for ((i=0; i<${#options[@]}; i++)); do
      selected+=("${defaults[i]:-false}")
      printf "\n"
    done

    # determine current screen position for overwriting the options
    local lastrow=`get_cursor_row`
    local startrow=$(($lastrow - ${#options[@]}))

    # ensure cursor and input echoing back on upon a ctrl+c during read -s
    trap "cursor_blink_on; stty echo; printf '\n'; exit" 2
    cursor_blink_off

    local active=0
    while true; do
        # print options by overwriting the last lines
        local idx=0
        for option in "${options[@]}"; do
            local prefix="    [ ]"
            if [[ ${selected[idx]} == true ]]; then
              prefix="    [$green*$re]"
            fi

            cursor_to $(($startrow + $idx))
            if [ $idx -eq $active ]; then
                print_active "$option" "$prefix"
            else
                print_inactive "$option" "$prefix"
            fi
            ((idx++))
        done

        # user key control
        case `key_input` in
            space)  toggle_option selected $active;;
            enter)  break;;
            up)     ((active--));
                    if [ $active -lt 0 ]; then active=$((${#options[@]} - 1)); fi;;
            down)   ((active++));
                    if [ $active -ge ${#options[@]} ]; then active=0; fi;;
        esac
    done

    # cursor position back to normal
    cursor_to $lastrow
    printf "\n"
    cursor_blink_on

    eval $retval='("${selected[@]}")'
}
echo -e "\n\n\n\n"
# Usage Example
cd $ghh/0000/etc 2>/dev/null; 
ov1=($(ls))
ov2=(${ov1[@]^})
OPTIONS_VALUES=(${ov2[@]//.*/ })


# OPTIONS_LABELS=("Apple" "Microsoft" "Google")

for i in "${!OPTIONS_VALUES[@]}"; do
	OPTIONS_STRING+="${OPTIONS_VALUES[$i]} (${OPTIONS_LABELS[$i]});"
done

prompt_for_multiselect SELECTED "$OPTIONS_STRING"

for i in "${!SELECTED[@]}"; do
	if [ "${SELECTED[$i]}" == "true" ]; then
		CHECKED+=("${OPTIONS_VALUES[$i]}")
	fi
done

echo -e "\n\n\t You chose: \n\t ${CHECKED[@]/#/"$c2 "} \n\n\n\n";
read -n1 -ep "
$up1$up1$ll$c2 Do you wish to proceed? "$dim"["$re$bold"Y"$dim"/"$re$bold"n"$re$dim"] $re" "yn"; 
if [ "$yn" != "${yn#[Nn]}" ]; then echo "$c2 nope";exit 1; else echo "$ll$c2 OK"; fi ; tput cup 0; 
# source $ghh/0000/snips/coolors.sh;
sleep 1; cd $ghh/0000/etc 
##
for i in "${CHECKED[@],,}"; 
do echo -e "$i=true \n"
done 


# source ./enter.sh 
# export "${CHECKED[@]=y}"
##
##
for i in "${CHECKED[@],,}"; 
do 
echo -e "\n\t\t $c2 Installing $i   \n\n"; sleep 1; 
source "$i.sh" ;
echo -e "\n\t gg \n\n"; sleep 1; 
source $ghh/0000/snips/coolors.sh; sleep 1; 
done
echo -e "\n\n\n\n\t\t$c2 All done\n\n\n\n";
tput cup 0; source $ghh/0000/snips/coolors.sh; source $ghh/0000/snips/coolors.sh;  tput cuu 6; echo;echo;echo; tput cuu 2;source $ghh/0000/snips/timer.sh; source $ghh/0000/snips/coolors.sh; 
echo -e "byeeeeeeeee"

##
##