
execute on vehicle run return fail

execute if score @s checkpoint matches 0 run function boatracing:checkpoints/cancel_run

# only remove boats owned by this player
scoreboard players operation #me br_id = @s br_id
execute as @e[type=spruce_boat,distance=..10] if score @s br_id = #me br_id run kill @s
tellraw @s {"text": "Du hoppade ur din båt!", "color": "red"}
function boatracing:checkpoints/teleport
function boatracing:spawn_boat
