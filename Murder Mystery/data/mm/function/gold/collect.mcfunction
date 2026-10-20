# Give gold to all players that are close

give @a[distance=..1,limit=1,sort=nearest] gold_ingot 1

execute as @a[distance=..1,limit=1,sort=nearest] store result score @s MM run data get entity @s Inventory[{id:"minecraft:gold_ingot"}].count 1
execute as @a[distance=..1,limit=1,sort=nearest] if score @s MM matches 5.. run function mm:gold/arrow

kill @s