#!/bin/bash
read -ep "$c2 Cap: " -i "$PWD" yno; cd $yno;
a1=($(ls))
a2=($(ee ${a1[@]^}))       ## Cap-letter
a4=($(ee ${a2[@]//_/" "})) ## rm _
a6=($(ee ${a4[@]%.*}))     ## rm .*
ee ${a6[@]} 
ops=(${a6[@]})
