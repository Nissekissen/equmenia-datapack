scoreboard players set @s br_practice 0
scoreboard players set @s checkpoint 0
execute on vehicle run kill @s
clear @s
function boatracing:checkpoints/start/teleport
tellraw @s "Du lämnade övningsläget"
