# will be ran as a player with deaths = 1

team join Seeker @s
title @s title {"text": "Du blev hittad!", "color": "red"}
tp @s -497.5 130 -284.5 90 0

effect give @s minecraft:strength infinite 100 true
effect give @s minecraft:speed infinite 3 true
item replace entity @s armor.head with minecraft:dragon_head

scoreboard players set @s deaths 0