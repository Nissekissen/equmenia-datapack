# will be ran as the seeker

team join Seeker @s
function hs:positions/teleport with storage hs:game map.seeker_spawn
title @s title {text: "Du letar!", color: "blue"}
tellraw @a [{"color": "blue", "extra": [{"selector": "@s"}], "text": ""}, {"text": " letar!", "color": "blue"}]
