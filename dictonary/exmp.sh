#!/bin/bash -x
declare -A sounds
sounds[dog]="bhaw"
sounds[crow]="kaw"
sounds[cats]="mu"
sounds[parrot]="mittu"
echo "dog sounds " ${sounds[dog]}
echo "All Animal sounds " ${sounds[@]}
echo "Animal " ${!sounds[@]}
echo "Number of animal " ${#sounds[@]}
unset sounds[dog]
echo "Animal " ${!sounds[@]}
echo "All Animal sounds " ${sounds[@]}
