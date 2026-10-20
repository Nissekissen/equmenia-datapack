
execute if score in_wave pve matches 0 run return fail

scoreboard players operation temp trapId = @s trapId
execute as @e[tag=trap_spawner] if score @s trapId = temp trapId at @s run function traps:activate_block
