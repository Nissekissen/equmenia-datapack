execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte ändra kartor medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$execute unless data storage hs:settings defaults.$(key) run return run tellraw @s {text: "Okänd inställning: $(key)", color: "red"}

$data modify storage hs:maps registry.$(id).settings.$(key) set value $(value)
$function hs:map/refresh {id: "$(id)"}
$tellraw @s {text: "$(id): $(key) = $(value)", color: "green"}
