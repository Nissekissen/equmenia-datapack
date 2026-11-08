tellraw @s {text: "--- Göm och sök ---", color: "gold"}
execute if score #phase HS matches 1.. run tellraw @s {text: "Ett spel pågår", color: "yellow", italic: true}

data modify storage hs:tmp menu set from storage hs:maps list
function hs:menu/entries

tellraw @s ["", {text: "[Starta]", color: "green", click_event: {action: "run_command", command: "/function hs:start"}, hover_event: {action: "show_text", value: "Starta ett spel på vald karta"}}, " ", {text: "[Avbryt]", color: "red", click_event: {action: "run_command", command: "/function hs:reset"}, hover_event: {action: "show_text", value: "Avbryt spelet och återställ"}}, " ", {text: "[Seekers]", color: "blue", click_event: {action: "run_command", command: "/function hs:seekers/list"}, hover_event: {action: "show_text", value: "Visa valda seekers"}}, " ", {text: "[Gå dit]", color: "aqua", click_event: {action: "run_command", command: "/trigger hs.join"}, hover_event: {action: "show_text", value: "Teleportera till lobbyn"}}]
