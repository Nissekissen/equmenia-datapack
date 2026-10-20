execute if items entity @s hotbar.0 snowball run return fail

scoreboard players set @s br_in_game 0
scoreboard players set @s checkpoint 0
execute on vehicle run kill @s
function boatracing:checkpoints/teleport
function boatracing:spawn_boat