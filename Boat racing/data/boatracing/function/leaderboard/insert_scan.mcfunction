# takes i as argument, index of entries

# end of list => append
$execute unless data storage boatracing:leaderboard entries[$(i)] run return run data modify storage boatracing:leaderboard entries append from storage boatracing:tmp entry

# compare this entry's time with the new one
$execute store result score #cur br run data get storage boatracing:leaderboard entries[$(i)].time
$execute if score #cur br > #new br run return run data modify storage boatracing:leaderboard entries insert $(i) from storage boatracing:tmp entry

# not here yet => next index
scoreboard players add #i br 1
execute store result storage boatracing:tmp args.i int 1 run scoreboard players get #i br
function boatracing:leaderboard/insert_scan with storage boatracing:tmp args
