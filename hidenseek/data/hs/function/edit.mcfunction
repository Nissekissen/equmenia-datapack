$execute unless data storage hs:maps registry.$(id) run return run tellraw @s {text: "Okänd karta: $(id)", color: "red"}
$data modify storage hs:edit map set value {id: "$(id)"}
$tellraw @s {text: "Redigerar $(id)", color: "light_purple"}
