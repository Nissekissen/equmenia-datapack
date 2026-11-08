execute as @e[type=player, tag=hs.player, scores={hs.deaths=1..}] run function hs:countdown/death

function hs:timer/tick

execute if score #countdownCooldown HS matches 20 if score #countdown HS matches 1..10 run function hs:countdown/lobby_warn with storage hs:game map.lobby_area

execute if score #countdown HS matches ..0 run function hs:gameloop/start
