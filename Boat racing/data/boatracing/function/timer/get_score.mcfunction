# return the score of the player in seconds

function boatracing:timer/update
scoreboard players set score br 0

scoreboard players set 60 br 60

scoreboard players operation @s br_minutes *= 60 br
scoreboard players operation score br += @s br_minutes
scoreboard players operation score br += @s br_seconds

return run scoreboard players get score br