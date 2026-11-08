execute at @s align xz positioned ~0.5 ~ ~0.5 summon minecraft:marker run function hs:map/capture_marker

execute store result storage hs:tmp pos.yaw int 1 run data get entity @s Rotation[0]
execute store result storage hs:tmp pos.pitch int 1 run data get entity @s Rotation[1]
