# Runs as one murderer (@s). List the OTHER murderers by name.
# Tag self temporarily so the selector can exclude us, then untag.
tag @s add thisMurderer
tellraw @s [{"text": "Dina medmördare: ", "color": "red"}, {"selector": "@a[team=Murderer,tag=!thisMurderer]", "color": "red"}]
tag @s remove thisMurderer
