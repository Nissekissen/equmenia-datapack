
function boatracing:leaderboard/my_rank

# no entry yet
execute unless score #rank br matches 1.. run return run title @s actionbar {text: "Du har ingen tid än", color: "gray"}

# format the personal best
scoreboard players operation #t br = @s br_highscore
function boatracing:leaderboard/split_time

data modify storage boatracing:tmp me set value {pad: ""}
execute store result storage boatracing:tmp me.rank int 1 run scoreboard players get #rank br
execute store result storage boatracing:tmp me.m int 1 run scoreboard players get #m br
execute store result storage boatracing:tmp me.s int 1 run scoreboard players get #s br
execute store result storage boatracing:tmp me.d int 1 run scoreboard players get #d br
execute if score #s br matches 0..9 run data modify storage boatracing:tmp me.pad set value "0"

function boatracing:leaderboard/show_self_print with storage boatracing:tmp me
