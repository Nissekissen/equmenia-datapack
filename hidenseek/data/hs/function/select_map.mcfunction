execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte byta karta medan ett spel pågår", color: "red"}

$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$data modify storage hs:game map set from storage hs:maps registry.$(id)
$data modify storage hs:game map.id set value "$(id)"
