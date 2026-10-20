# respawn
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=5] run function boatracing:checkpoints/reset
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=4] run function boatracing:checkpoints/reset
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=3] run function boatracing:checkpoints/reset
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=2] run function boatracing:checkpoints/reset
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=0] run function boatracing:checkpoints/reset
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=1] run function boatracing:checkpoints/reset

# checkpoint flags
execute as @a[scores={checkpoint=0}] at @s if block ~ ~ ~ light[level=14] run function boatracing:checkpoints/start/start
execute as @a[scores={br_in_game=1, checkpoint=..0}] at @s if block ~ ~ ~ light[level=13] run function boatracing:checkpoints/1/start
execute as @a[scores={br_in_game=1, checkpoint=..1}] at @s if block ~ ~ ~ light[level=12] run function boatracing:checkpoints/2/start
execute as @a[scores={br_in_game=1, checkpoint=..2}] at @s if block ~ ~ ~ light[level=11] run function boatracing:checkpoints/3/start
execute as @a[scores={br_in_game=1, checkpoint=..3}] at @s if block ~ ~ ~ light[level=10] run function boatracing:checkpoints/4/start
execute as @a[scores={br_in_game=1, checkpoint=..4}] at @s if block ~ ~ ~ light[level=9] run function boatracing:checkpoints/5/start
execute as @a[scores={br_in_game=1}] at @s if block ~ ~ ~ light[level=8] run function boatracing:checkpoints/finished
