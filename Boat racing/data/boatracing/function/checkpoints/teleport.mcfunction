# start
execute as @s[type=player] if score @s checkpoint matches 0 run function boatracing:checkpoints/start/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 0 on vehicle run function boatracing:checkpoints/start/teleport

# checkpoint 1
execute as @s[type=player] if score @s checkpoint matches 1 run function boatracing:checkpoints/1/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 1 on vehicle run function boatracing:checkpoints/1/teleport

# checkpoint 2
execute as @s[type=player] if score @s checkpoint matches 2 run function boatracing:checkpoints/2/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 2 on vehicle run function boatracing:checkpoints/2/teleport

# checkpoint 3
execute as @s[type=player] if score @s checkpoint matches 3 run function boatracing:checkpoints/3/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 3 on vehicle run function boatracing:checkpoints/3/teleport

# checkpoint 4
execute as @s[type=player] if score @s checkpoint matches 4 run function boatracing:checkpoints/4/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 4 on vehicle run function boatracing:checkpoints/4/teleport

# checkpoint 5
execute as @s[type=player] if score @s checkpoint matches 5 run function boatracing:checkpoints/5/teleport
execute as @s[type=spruce_boat] on controller if score @s checkpoint matches 5 on vehicle run function boatracing:checkpoints/5/teleport