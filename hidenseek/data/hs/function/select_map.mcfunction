execute if score #phase HS matches 1.. run return run tellraw @s {text: "Kan inte byta karta medan ett spel pågår", color: "red"}
$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$execute unless data storage hs:maps registry.$(id).lobby run return run tellraw @s {text: "Kartan $(id) saknar lobby", color: "red"}
$execute unless data storage hs:maps registry.$(id).seeker_spawn run return run tellraw @s {text: "Kartan $(id) saknar seeker_spawn", color: "red"}
$execute unless data storage hs:maps registry.$(id).lobby_area run return run tellraw @s {text: "Kartan $(id) saknar lobby_area", color: "red"}

# only announce when the selected map actually changes (not on refresh after an edit)
$execute store success score #mapChanged HS unless data storage hs:game map{id: "$(id)"}

$data modify storage hs:game map set from storage hs:maps registry.$(id)
$data modify storage hs:game map.id set value "$(id)"

execute if score #mapChanged HS matches 1 run tellraw @a [{text: "Kartan är nu ", color: "gold"}, {nbt: "map.name", storage: "hs:game", color: "gold"}, " ", {text: "[Gå dit]", color: "green", click_event: {action: "run_command", command: "/trigger hs.join"}, hover_event: {action: "show_text", value: "Teleportera till lobbyn"}}]
