execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte ändra kartor medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$execute unless data storage hs:maps registry.$(id).$(gate)_gate.$(action) run return run tellraw @s {text: "Okänd grind: $(gate) $(action) (använd hider/seeker och open/close)", color: "red"}

$data modify storage hs:maps registry.$(id).$(gate)_gate.$(action) append value {cmd: "$(cmd)"}
$function hs:map/refresh {id: "$(id)"}
$tellraw @s {text: "Lade till i $(gate) $(action): $(cmd)", color: "green"}
