
function hs:playersleft

execute as @a[team=Hider,scores={deaths=1..}] run function hs:gameloop/death

execute as @a[team=Seeker] run effect give @s minecraft:speed infinite 3 true
execute as @a[team=Seeker] run effect give @s minecraft:strength infinite 100 true
