
# end of list => not found, #rank stays -1
$execute unless data storage boatracing:leaderboard entries[$(i)] run return 0

# is this my entry?
$execute store result score #cur br run data get storage boatracing:leaderboard entries[$(i)].id
execute if score #cur br = @s br_id run return run scoreboard players operation #rank br = #i br

# next index
scoreboard players add #i br 1
execute store result storage boatracing:tmp args.i int 1 run scoreboard players get #i br
function boatracing:leaderboard/rank_scan with storage boatracing:tmp args
