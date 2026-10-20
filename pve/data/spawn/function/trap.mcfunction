
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {NoGravity: true, Invisible: true, Tags: ["trap_spawner", "trap_temp"]}
scoreboard players operation @e[tag=trap_temp, limit=1] trapId = @s trapId
tag @e[tag=trap_temp,limit=1] remove trap_temp

tellraw @s {"text": "Nytt trap-block spawnat!", "color": "green"}