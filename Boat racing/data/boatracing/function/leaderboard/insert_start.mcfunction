# Ran as the player

# build the entry
execute store result storage boatracing:tmp entry.id int 1 run scoreboard players get @s br_id
execute store result storage boatracing:tmp entry.time int 1 run scoreboard players get @s br_time

# capture the name trick
kill @e[type=item, tag=br_tmp]
loot spawn ~ ~ ~ loot boatracing:player_name
tag @n[type=item, distance=..1, nbt={Item:{id: "minecraft:stick"}}] add br_tmp
data modify storage boatracing:tmp entry.name set from entity @n[type=item, tag=br_tmp] Item.components."minecraft:custom_name".text
kill @e[type=item, tag=br_tmp]

# start scanning at index 0
scoreboard players operation #new br = @s br_time
scoreboard players set #i br 0
data modify storage boatracing:tmp args set value {i: 0}
function boatracing:leaderboard/insert_scan with storage boatracing:tmp args
