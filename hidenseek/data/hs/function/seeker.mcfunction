# will be ran as the seeker

team join Seeker @s
# coords = seeker spawn
tp @s -492.5 130 -284.5 90 0
title @s title {"text": "Du letar!", "color": "blue"}
tellraw @a [{"color": "blue", "extra": [{"selector": "@s"}], "text": ""}, {"text": " letar!", "color": "blue"}]