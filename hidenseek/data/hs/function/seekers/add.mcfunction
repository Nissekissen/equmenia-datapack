# {name}
$execute unless entity $(name) run return run tellraw @s {text: "Hittar ingen spelare: $(name)", color: "red"}
$tag $(name) add hs.chosen
function hs:seekers/list
