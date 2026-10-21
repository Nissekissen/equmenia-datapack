execute unless score @s br_in_game matches 1 run return fail
scoreboard players set @s br_in_game 0
scoreboard players set @s checkpoint 0
clear @s
execute on vehicle run return run function boatracing:checkpoints/teleport
function boatracing:checkpoints/teleport
function boatracing:spawn_boat
