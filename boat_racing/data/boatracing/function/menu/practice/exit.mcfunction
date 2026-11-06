scoreboard players set @s br_practice 0
scoreboard players set @s checkpoint 0
clear @s
tellraw @s "Du lämnade övningsläget"
execute on vehicle run return run function boatracing:checkpoints/start/teleport
function boatracing:checkpoints/start/teleport
