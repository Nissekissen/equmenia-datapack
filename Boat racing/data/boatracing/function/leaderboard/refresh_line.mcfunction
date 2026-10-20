# Takes in r (row number) and i (list index) as arguments

# No etry for this row => placeholder
$execute unless data storage boatracing:leaderboard entries[$(i)] run return run data modify entity @n[type=text_display, tag=br_lb_$(r)] text set value {text: "$(r). ---", color: "dark_gray"}

# Split the time into minutes / seconds / tenths
$execute store result score #t br run data get storage boatracing:leaderboard entries[$(i)].time

function boatracing:leaderboard/split_time

$data modify storage boatracing:tmp line set value {r: $(r), pad: ""}
$data modify storage boatracing:tmp line.name set from storage boatracing:leaderboard entries[$(i)].name
execute store result storage boatracing:tmp line.m int 1 run scoreboard players get #m br
execute store result storage boatracing:tmp line.s int 1 run scoreboard players get #s br
execute store result storage boatracing:tmp line.d int 1 run scoreboard players get #d br
execute if score #s br matches 0..9 run data modify storage boatracing:tmp line.pad set value "0"

function boatracing:leaderboard/refresh_line2 with storage boatracing:tmp line

