# select_map.mcfunction {id}

$execute unless data storage mm:maps registry.$(id) run return run tellraw @s {"text": "Unknown map: $(id)", "color": "red"}

$data modify storage mm:game map set from storage mm:maps registry.$(id)
$data modify storage mm:game map.id set value "$(id)"

tellraw @s [{"text": "Map selected: ", "color": "gray"}, {"nbt": "map.name", "storage": "mm:game", "color": "yellow"}]
