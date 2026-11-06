# SPIKE: run as a player (/function boatracing:leaderboard/test_name) to check
# whether a player's name can be captured into storage as a resolved component.
# Method: a loot table whose set_name resolves {"selector":"@s"} against "this" entity,
# then read custom_name back off the dropped item.

kill @e[type=item,tag=br_tmp]
loot spawn ~ ~ ~ loot boatracing:player_name
tag @n[type=item,distance=..1,nbt={Item:{id:"minecraft:stick"}}] add br_tmp

data modify storage boatracing:tmp name set from entity @n[type=item,tag=br_tmp] Item.components."minecraft:custom_name"
kill @e[type=item,tag=br_tmp]

tellraw @s {"text": "Raw storage value:", "color": "gray"}
tellraw @s {"nbt": "name", "storage": "boatracing:tmp"}
tellraw @s {"text": "Rendered as component:", "color": "gray"}
tellraw @s {"nbt": "name", "storage": "boatracing:tmp", "interpret": true}
