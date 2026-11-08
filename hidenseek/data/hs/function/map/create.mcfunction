# {id, name}
execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte ändra kartor medan ett spel pågår", color: "red"}


$execute if data storage hs:maps registry.$(id) run return run tellraw @s {text: "Kartan $(id) finns redan", color: "red"}

$data modify storage hs:maps registry.$(id) set value {name: "$(name)", hider_gate: {open: [], close: []}, seeker_gate: {open: [], close: []}, settings: {}}
$data modify storage hs:maps list append value {id: "$(id)", name: "$(name)"}

$data modify storage hs:edit map set value {id: "$(id)"}
$tellraw @s {text: "Skapade $(name) ($(id)). Sätt lobby, seeker_spawn och lobby_area", color: "green"}
