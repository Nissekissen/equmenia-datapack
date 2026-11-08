execute store result storage hs:edit pos2.x int 1 run data get entity @s Pos[0]
execute store result storage hs:edit pos2.y int 1 run data get entity @s Pos[1]
execute store result storage hs:edit pos2.z int 1 run data get entity @s Pos[2]
tellraw @s [{text: "Pos2 satt: ", color: "light_purple"}, {nbt: "pos2", storage: "hs:edit"}]
