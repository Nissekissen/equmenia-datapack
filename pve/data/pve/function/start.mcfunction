
function pve:reset

scoreboard players set gameRunning pve 1

execute positioned as @e[tag=pve_lobby,limit=1] as @a[distance=..100] run tag @s add pve_in_game

# function pve:gates/open
execute as @a[tag=pve_in_game] at @s run tp @s ~ ~-1 ~

function pve:waiting/start
# function pve:nextwave