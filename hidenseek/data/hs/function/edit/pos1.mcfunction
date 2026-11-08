execute store result storage hs:edit pos1.x int 1 run data get entity @s Pos[0]
execute store result storage hs:edit pos1.y int 1 run data get entity @s Pos[1]
execute store result storage hs:edit pos1.z int 1 run data get entity @s Pos[2]
tellraw @s [{text: "Pos1 satt: ", color: "light_purple"}, {nbt: "pos1", storage: "hs:edit"}]
