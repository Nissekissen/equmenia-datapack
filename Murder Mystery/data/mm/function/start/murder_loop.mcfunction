
execute if score temp MM matches ..0 run return fail

execute as @r[team=Innocent] run function mm:start/murderer

scoreboard players remove temp MM 1

function mm:start/murder_loop