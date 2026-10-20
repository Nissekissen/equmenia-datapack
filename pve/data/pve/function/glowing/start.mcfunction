
execute if score glowing pve matches 1 run return fail

execute as @a[tag=pve_in_game] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1

scoreboard players set glowing pve 1

schedule function pve:glowing/effect 1.5s