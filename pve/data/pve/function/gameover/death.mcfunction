
tp @s @e[tag=pve_lobby, limit=1]
tag @s remove pve_alive
title @s title {"text": "Du dog!", "bold": true, "color": "red"}

scoreboard players set @s deaths 0