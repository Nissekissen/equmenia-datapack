
scoreboard players set in_wave pve 0
scoreboard players set glowing pve 0

execute if score currentWave pve matches 20 run function pve:gameover/victory

function pve:waiting/start
function pve:gates/open

execute as @a[tag=pve_in_game] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1
execute as @a[tag=pve_in_game] run function pve:gameover/extra_gold

execute as @a[tag=pve_in_game] run scoreboard players set @s kills 0