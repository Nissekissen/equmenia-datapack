

tellraw @s {"text": "Du dog! Du är nu en åskådare!", "color": "red"}
tellraw @a {"text": "Detektiven har dött, pilbågen är droppad!", "color": "gold"}

# Read the detective's last death location (Int Array) and convert to doubles,
# then spawn the bow at those exact coordinates via a macro.
data modify storage mm:death pos.int set from entity @s LastDeathLocation.pos
execute store result storage mm:death pos.x double 1 run data get storage mm:death pos.int[0]
execute store result storage mm:death pos.y double 1 run data get storage mm:death pos.int[1]
execute store result storage mm:death pos.z double 1 run data get storage mm:death pos.int[2]
execute if data entity @s LastDeathLocation run function mm:bow/spawn_at with storage mm:death pos
