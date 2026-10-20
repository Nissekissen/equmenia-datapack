execute if score gameRunning pve matches 1 as @a[tag=pve_in_game] run function pve:display/loop
execute if score gameRunning pve matches 1 run function pve:gameover/loop

execute if score gameRunning pve matches 1 if score in_wave pve matches 1 run function pve:waves/loop

execute if score gameRunning pve matches 1 if score waiting pve matches 1 run function pve:waiting/loop

execute as @a[scores={deaths=1..}, tag=pve_in_game] run function pve:gameover/death

execute if score debug pve matches 1 run function pve:debug/loop

execute if score gameRunning pve matches 1 as @a[tag=pve_in_game] run xp set @s 50 levels