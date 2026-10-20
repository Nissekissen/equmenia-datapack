
scoreboard players set zombieCount pve 0
execute as @e[tag=pve_enemy] run scoreboard players add zombieCount pve 1

scoreboard players set playersLeft pve 0
execute as @a[tag=pve_alive] run scoreboard players add playersLeft pve 1

execute if score in_wave pve matches 1 if score zombieCount pve matches 0 run function pve:gameover/waveover
execute if score in_wave pve matches 1 if score zombieCount pve matches 1.. if score playersLeft pve matches 0 run function pve:gameover/lose