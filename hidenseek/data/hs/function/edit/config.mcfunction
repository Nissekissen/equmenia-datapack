execute unless data storage hs:edit map run return run tellraw @s {text: 'Välj en karta först: /function hs:edit {id: "..."}', color: "red"}
$data modify storage hs:edit args set value {key: "$(key)", value: $(value)}
data modify storage hs:edit args.id set from storage hs:edit map.id
function hs:config/map with storage hs:edit args
