# execute positioned 2000 200 2000 as @a[distance=..500] run scoreboard players set @s br_in_game 1

# execute as @a[scores={br_in_game=1}] run scoreboard players set @s br_time 0
execute positioned -2000 200 2000 as @a[distance=..1000, scores={br_practice=0}] run scoreboard players set @s checkpoint 0
execute positioned -2000 200 2000 as @a[distance=..1000, scores={br_practice=0}] run function boatracing:checkpoints/teleport
execute positioned -2000 200 2000 as @a[distance=..1000, scores={br_practice=0}] run function boatracing:spawn_boat

setblock -2016 255 2010 redstone_block
