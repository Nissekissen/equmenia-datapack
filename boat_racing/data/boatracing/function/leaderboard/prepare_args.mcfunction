# Ran as the player
execute store result storage boatracing:tmp args.id int 1 run scoreboard players get @s br_id
function boatracing:leaderboard/remove_old with storage boatracing:tmp args
