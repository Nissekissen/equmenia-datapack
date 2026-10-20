
execute if score gameRunning MM matches 1.. run function mm:gold/step

execute if score goldCooldown MM matches ..0 run function mm:gold/spawn

execute at @a[team=Innocent] run function mm:gold/player
execute at @a[team=Detective] run function mm:gold/player