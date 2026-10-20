
scoreboard players set gameRunning pve 0
scoreboard players set waiting pve 0
scoreboard players set currentWave pve 0
scoreboard players set in_wave pve 0
scoreboard players set glowing pve 0

execute positioned as @e[tag=pve_lobby,limit=1] run tag @a[distance=..500] add in_reach

clear @a[tag=in_reach]
give @a[tag=in_reach] wooden_sword
give @a[tag=in_reach] bread 10
execute positioned as @e[tag=pve_lobby,limit=1] run spawnpoint @a[tag=in_reach] ~ ~ ~

tag @a remove pve_alive
tag @a remove pve_in_game

function pve:gates/close

kill @e[tag=pve_enemy]

execute positioned as @e[tag=pve_lobby,limit=1] as @e[type=item, distance=..200] run kill @s

tag @a[tag=in_reach] remove in_reach