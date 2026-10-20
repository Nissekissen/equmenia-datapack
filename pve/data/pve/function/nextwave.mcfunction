
scoreboard players set in_wave pve 1
scoreboard players add currentWave pve 1
scoreboard players set @a[tag=pve_in_game] kills 0

tag @a[tag=pve_in_game] add pve_alive

function pve:start/spawn
function pve:gates/close

execute as @a[tag=pve_in_game] at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
title @a title [{"text": "Våg ", "color": "red"}, {"score": {"name": "currentWave", "objective": "pve"}}]