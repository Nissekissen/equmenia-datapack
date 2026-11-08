scoreboard players set #phase HS 3
bossbar set timer visible false
title @a[tag=hs.player] clear
effect clear @a[team=Seeker] minecraft:blindness
effect clear @a[team=Hider] minecraft:speed

execute as @a[tag=hs.player] at @s run playsound minecraft:entity.ender_dragon.ambient block @s ~ ~ ~ 1 1

function hs:gate/seeker/open

execute if score #seekTime HS matches 1.. run function hs:gameloop/start_timer

# hiders who never jumped down count as found
function hs:gameloop/lobby_check with storage hs:game map.lobby_area
