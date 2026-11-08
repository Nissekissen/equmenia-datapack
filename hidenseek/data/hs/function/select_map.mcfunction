execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte byta karta medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$execute unless data storage hs:maps registry.$(id).lobby run return run tellraw @s {text: "Kartan $(id) saknar lobby", color: "red"}
$execute unless data storage hs:maps registry.$(id).seeker_spawn run return run tellraw @s {text: "Kartan $(id) saknar seeker_spawn", color: "red"}
$execute unless data storage hs:maps registry.$(id).lobby_area run return run tellraw @s {text: "Kartan $(id) saknar lobby_area", color: "red"}

$data modify storage hs:game map set from storage hs:maps registry.$(id)
$data modify storage hs:game map.id set value "$(id)"
$tellraw @s {text: "Karta $(id) vald", color: "green"}
