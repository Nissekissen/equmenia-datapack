
# tellraw Marreman {"score": {"name": "startCooldown", "objective": "MM"}}

execute if score startStepCooldown MM matches ..0 run scoreboard players remove startCooldown MM 1
execute if score startStepCooldown MM matches ..0 if score startCooldown MM matches 1..5 run function mm:start/text
execute if score startStepCooldown MM matches ..0 run scoreboard players set startStepCooldown MM 20


execute if score startCooldown MM matches ..0 run function mm:start/items

scoreboard players remove startStepCooldown MM 1