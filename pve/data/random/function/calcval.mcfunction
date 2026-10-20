
scoreboard players operation diff random = max random
scoreboard players operation diff random -= min random

scoreboard players operation randval random = random random
execute if score diff random matches 1.. run scoreboard players operation randval random %= diff random
execute if score diff random matches 0 run scoreboard players operation randval random = 0 random
scoreboard players operation randval random += min random
