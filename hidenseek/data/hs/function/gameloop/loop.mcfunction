
execute as @e[type=player, tag=hs.player, scores={hs.deaths=1..}] run function hs:gameloop/death
function hs:playersleft

execute if score #seekTime HS matches 1.. run function hs:timer/tick

effect give @a[team=Seeker] minecraft:speed infinite 3 true
effect give @a[team=Seeker] minecraft:strength infinite 100 true
execute as @a[team=Seeker] unless items entity @s armor.head minecraft:dragon_head run item replace entity @s armor.head with minecraft:dragon_head
