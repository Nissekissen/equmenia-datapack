# handle the timer


execute if score goldStepCooldown MM matches ..0 run scoreboard players remove goldCooldown MM 1
execute if score goldStepCooldown MM matches ..0 run scoreboard players set goldStepCooldown MM 20

scoreboard players remove goldStepCooldown MM 1