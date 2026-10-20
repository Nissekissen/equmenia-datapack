# Ran as a player that just finished

# If they already have a best time and this run isn't faster, then do nothing
execute if score @s br_highscore matches 1.. if score @s br_time >= @s br_highscore run return 0

# New personal best
scoreboard players operation @s br_highscore = @s br_time
function boatracing:leaderboard/prepare_args
function boatracing:leaderboard/insert_start
tellraw @s {"text": "Nytt personbästa!", "color": "gold"}

function boatracing:leaderboard/refresh

# update split times
scoreboard players operation @s br_pb1 = @s br_split1
scoreboard players operation @s br_pb2 = @s br_split2
scoreboard players operation @s br_pb3 = @s br_split3
scoreboard players operation @s br_pb4 = @s br_split4
scoreboard players operation @s br_pb5 = @s br_split5
