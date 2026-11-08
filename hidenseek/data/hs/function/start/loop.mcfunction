
scoreboard players remove #startCooldown HS 1
execute if score #startCooldown HS matches ..0 run scoreboard players remove #startCountdown HS 1
execute if score #startCooldown HS matches ..0 if score #startCountdown HS matches 1.. run title @a[tag=hs.player] title {"score": {"name": "#startCountdown", "objective": "HS"},"color": "yellow"}
execute if score #startCooldown HS matches ..0 run scoreboard players set #startCooldown HS 20

execute if score #startCountdown HS matches ..0 run function hs:countdown/start

execute if score #seekersLeft HS matches 1.. run function hs:start/seeker
execute if score #seekersLeft HS matches 1.. run scoreboard players remove #seekersLeft HS 1
