
# tellraw Marreman {"score": {"name": "waitTimer", "objective": "MM"}}

execute if score waitCooldown MM matches ..0 run scoreboard players remove waitTimer MM 1
execute if score waitCooldown MM matches ..0 run title @a title {"score": {"name": "waitTimer", "objective": "MM"}, "color": "red"}
execute if score waitCooldown MM matches ..0 run scoreboard players set waitCooldown MM 20

execute if score waitTimer MM matches ..0 run function mm:start/start

scoreboard players remove waitCooldown MM 1