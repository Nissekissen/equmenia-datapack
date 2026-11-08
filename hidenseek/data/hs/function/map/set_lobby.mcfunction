execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte ändra kartor medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}

function hs:map/capture_pos
$data modify storage hs:maps registry.$(id).lobby set from storage hs:tmp pos
$function hs:map/refresh {id: "$(id)"}
$tellraw @s {text: "Lobbyn för $(id) uppdaterad.", color: "green"}
