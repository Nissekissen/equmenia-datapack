
scoreboard players set #rank br -1
scoreboard players set #i br 0
data modify storage boatracing:tmp args set value {i: 0}
function boatracing:leaderboard/rank_scan with storage boatracing:tmp args

# Make the rank start at 1 instead of 0
execute if score #rank br matches 0.. run scoreboard players add #rank br 1
