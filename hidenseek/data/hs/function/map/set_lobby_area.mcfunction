execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte ändra kartor medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
execute unless data storage hs:edit pos1 run return run tellraw @s {text: "Sätt pos1 först (hs:map/pos1)", color: "red"}
execute unless data storage hs:edit pos2 run return run tellraw @s {text: "Sätt pos2 först (hs:map/pos2)", color: "red"}

execute store result score #x1 HS run data get storage hs:edit pos1.x
execute store result score #y1 HS run data get storage hs:edit pos1.y
execute store result score #z1 HS run data get storage hs:edit pos1.z
execute store result score #x2 HS run data get storage hs:edit pos2.x
execute store result score #y2 HS run data get storage hs:edit pos2.y
execute store result score #z2 HS run data get storage hs:edit pos2.z
function hs:map/box_from_corners

$data modify storage hs:maps registry.$(id).lobby_area set from storage hs:tmp box
$function hs:map/refresh {id: "$(id)"}
$tellraw @s [{text: "Lobbyområdet för $(id) satt: ", color: "green"}, {nbt: "box", storage: "hs:tmp"}]
