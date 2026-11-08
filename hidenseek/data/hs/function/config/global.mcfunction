$execute unless data storage hs:settings defaults.$(key) run return run tellraw @s {text: "Okänd inställning: $(key)", color: "red"}
$data modify storage hs:settings global.$(key) set value $(value)
$tellraw @s {text: "Global $(key) = $(value)", color: "green"}
