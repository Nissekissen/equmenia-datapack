# Runs as the picking-up player (@s). Guaranteed same player for all three actions.
give @s minecraft:bow 1
tellraw @s {"text": "Du plockade upp pilbågen!", "color": "green"}
team join Detective @s

# Match what start/detective sets up so the new detective isn't missing anything.
tellraw @s {"text": "Du är nu detektiv!", "color": "blue"}
