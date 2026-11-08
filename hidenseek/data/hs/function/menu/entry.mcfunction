# hidden maps: per-map setting enabled = 0
$execute store result score #enabled HS run data get storage hs:maps registry.$(id).settings.enabled
$execute if data storage hs:maps registry.$(id).settings.enabled if score #enabled HS matches 0 run return 0

# incomplete maps are shown greyed out, with an edit button
$execute unless data storage hs:maps registry.$(id).lobby run return run function hs:menu/entry_incomplete {id: "$(id)", name: "$(name)"}
$execute unless data storage hs:maps registry.$(id).seeker_spawn run return run function hs:menu/entry_incomplete {id: "$(id)", name: "$(name)"}
$execute unless data storage hs:maps registry.$(id).lobby_area run return run function hs:menu/entry_incomplete {id: "$(id)", name: "$(name)"}

# the selected map
$execute if data storage hs:game map{id: "$(id)"} run return run tellraw @s [{text: " ▶ ", color: "green"}, {text: "$(name)", color: "green", bold: true}, " ", {text: "[✎]", color: "gray", click_event: {action: "run_command", command: "/function hs:edit {id: '$(id)'}"}, hover_event: {action: "show_text", value: "Redigera $(name)"}}]

# any other map: click to select
$tellraw @s [{text: " • ", color: "gray"}, {text: "$(name)", color: "aqua", click_event: {action: "run_command", command: "/function hs:menu/pick {id:'$(id)'}"}, hover_event: {action: "show_text", value: "Välj $(name)"}}, " ", {text: "[✎]", color: "gray", click_event: {action: "run_command", command: "/function hs:edit {id:'$(id)'}"}, hover_event: {action: "show_text", value: "Redigera $(name)"}}]
