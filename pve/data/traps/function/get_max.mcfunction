
scoreboard players set max trapId 0
execute as @e[tag=trap_spawner] if score @s trapId > max trapId run scoreboard players operation max trapId = @s trapId