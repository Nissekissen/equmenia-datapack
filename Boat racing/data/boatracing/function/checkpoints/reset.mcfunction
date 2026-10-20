execute if score @s checkpoint matches 0 run function boatracing:checkpoints/cancel_run
tellraw @s {"text": "Du ramlade av kartan!", "color": "red"}
execute on vehicle run function boatracing:checkpoints/teleport
