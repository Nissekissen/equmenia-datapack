
title @a[tag=pve_in_game] title {"text": "Game over!", "bold": true, "color": "red"}

execute as @a[tag=pve_in_game] at @s run playsound entity.wither.death master @s ~ ~ ~ 0.5 1

function pve:reset