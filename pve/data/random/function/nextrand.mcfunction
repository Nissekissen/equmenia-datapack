# random:nextrand

# (ax + c) % m

# a * x
scoreboard players operation temp random = aconst random
scoreboard players operation temp random *= random random

# calculate ax + c
scoreboard players operation temp random += cconst random

# calculate (ax + c) % m
scoreboard players operation temp random %= mconst random
scoreboard players operation random random = temp random

execute if score max random matches 1.. run function random:calcval