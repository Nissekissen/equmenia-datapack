# Set endType before running this function
# 0 => Murder has killed everyone
# 1 => The detective killed the murderer
# 2 => An innocent has killed the murderer

# tellraw Marreman {"score": {"name": "endType", "objective": "MM"}}

execute if score skip MM matches 1.. run return run scoreboard players set skip MM 0

execute if score endType MM matches ..0 run function mm:gameover/murdererwon
execute if score endType MM matches 1 run function mm:gameover/detectivewon
execute if score endType MM matches 2 run function mm:gameover/innocentwon
execute if score endType MM matches 4 run function mm:gameover/notime

# Teleport all players to lobby
execute as @a[team=Murderer] run function mm:positions/lobby
execute as @a[team=Detective] run function mm:positions/lobby
execute as @a[team=Dead] run function mm:positions/lobby
execute as @a[team=Innocent] run function mm:positions/lobby

function mm:reset