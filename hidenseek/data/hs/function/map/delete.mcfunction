execute if score #phase HS matches 1.. run return run tellraw @s {text: "Du kan inte ändra kartor medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$execute if data storage hs:game map{id: "$(id)"} run return run tellraw @s {text: "Kan inte ta bort den valda kartan. Välj en annan först", color: "red"}

$data remove storage hs:maps registry.$(id)
$data remove storage hs:maps list[{id: "$(id)"}]

$execute if data storage hs:edit map{id: "$(id)"} run data remove storage hs:edit map

$tellraw @s {text: "Tog bort $(id)", color: "green"}
