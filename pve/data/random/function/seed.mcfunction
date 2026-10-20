# random:seed

execute store result score seed random run data get entity @r Pos[0]
execute if score seed random matches ..0 run scoreboard players operation seed random *= negone random
scoreboard players operation seed random %= mconst random
scoreboard players operation random random = seed random