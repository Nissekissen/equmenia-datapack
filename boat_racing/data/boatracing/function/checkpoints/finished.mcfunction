
# Teleport player back to the start

scoreboard players set @s br_in_game 0
scoreboard players set @s checkpoint 0

tag @s add finisher
execute positioned -2000 200 2000 as @a[distance=..1000] run function boatracing:timer/finish_print
tag @s remove finisher

execute at @s run function boatracing:leaderboard/submit

execute on vehicle run function boatracing:checkpoints/start/teleport
