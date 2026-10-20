# Teleport @s to a random position from the list

execute store result score C_Range RNG_Constant run data get storage mm:game map.spawns
function mm:rng

# if 32-bit overflow happens and RNG is negative
execute if score RNG RNG_Variable matches ..-1 run scoreboard players operation RNG RNG_Variable *= C_NEG_1 RNG_Constant

execute store result storage mm:tmp args.i int 1 run scoreboard players get RNG RNG_Variable
function mm:positions/get_from_map with storage mm:tmp args

