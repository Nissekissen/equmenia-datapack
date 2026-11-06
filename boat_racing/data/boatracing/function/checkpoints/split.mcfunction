$scoreboard players operation @s br_split$(n) = @s br_time
scoreboard players operation #t br = @s br_time
function boatracing:leaderboard/split_time

data modify storage boatracing:tmp me set value {pad: ""}
execute store result storage boatracing:tmp me.m int 1 run scoreboard players get #m br
execute store result storage boatracing:tmp me.s int 1 run scoreboard players get #s br
execute store result storage boatracing:tmp me.d int 1 run scoreboard players get #d br
execute if score #s br matches 0..9 run data modify storage boatracing:tmp me.pad set value "0"

$data modify storage boatracing:tmp me.n set value $(n)

$execute unless score @s br_pb$(n) matches 0.. run return run function boatracing:checkpoints/split_print_first with storage boatracing:tmp me

scoreboard players operation #delta br = @s br_time
$scoreboard players operation #delta br -= @s br_pb$(n)

data modify storage boatracing:tmp me.sign set value "+"
data modify storage boatracing:tmp me.color set value "red"
execute if score #delta br matches ..-1 run data modify storage boatracing:tmp me.sign set value "-"
execute if score #delta br matches ..-1 run data modify storage boatracing:tmp me.color set value "green"
execute if score #delta br matches ..-1 run scoreboard players operation #delta br *= neg1 br

execute if score #delta br matches 0 run data modify storage boatracing:tmp me.sign set value "±"
execute if score #delta br matches 0 run data modify storage boatracing:tmp me.color set value "gray"

scoreboard players operation #t br = #delta br
function boatracing:leaderboard/split_time

data modify storage boatracing:tmp me.dpad set value ""
execute store result storage boatracing:tmp me.dm int 1 run scoreboard players get #m br
execute store result storage boatracing:tmp me.ds int 1 run scoreboard players get #s br
execute store result storage boatracing:tmp me.dd int 1 run scoreboard players get #d br
execute if score #s br matches 0..9 run data modify storage boatracing:tmp me.dpad set value "0"

function boatracing:checkpoints/split_print with storage boatracing:tmp me
