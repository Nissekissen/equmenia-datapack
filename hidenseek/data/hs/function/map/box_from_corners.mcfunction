# min corner
scoreboard players operation #minX HS = #x1 HS
scoreboard players operation #minX HS < #x2 HS
scoreboard players operation #minY HS = #y1 HS
scoreboard players operation #minY HS < #y2 HS
scoreboard players operation #minZ HS = #z1 HS
scoreboard players operation #minZ HS < #z2 HS

# size = max - min
scoreboard players operation #dX HS = #x1 HS
scoreboard players operation #dX HS > #x2 HS
scoreboard players operation #dX HS -= #minX HS
scoreboard players operation #dY HS = #y1 HS
scoreboard players operation #dY HS > #y2 HS
scoreboard players operation #dY HS -= #minY HS
scoreboard players operation #dZ HS = #z1 HS
scoreboard players operation #dZ HS > #z2 HS
scoreboard players operation #dZ HS -= #minZ HS

execute store result storage hs:tmp box.x int 1 run scoreboard players get #minX HS
execute store result storage hs:tmp box.y int 1 run scoreboard players get #minY HS
execute store result storage hs:tmp box.z int 1 run scoreboard players get #minZ HS
execute store result storage hs:tmp box.dx int 1 run scoreboard players get #dX HS
execute store result storage hs:tmp box.dy int 1 run scoreboard players get #dY HS
execute store result storage hs:tmp box.dz int 1 run scoreboard players get #dZ HS
