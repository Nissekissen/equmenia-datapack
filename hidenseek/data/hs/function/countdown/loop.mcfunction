execute as @e[type=player, tag=hs.player, scores={hs.deaths=1..}] run function hs:countdown/death

function hs:timer/tick

execute if score #countdown HS matches ..0 run function hs:gameloop/start
