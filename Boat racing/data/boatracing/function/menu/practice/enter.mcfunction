execute if score @s br_in_game matches 1 run return run tellraw @s {"text": "Du kan inte vara i en omgång för att starta övningsläget!", color: "red"}

scoreboard players set @s br_practice 1
scoreboard players set @s checkpoint 0
clear @s

tellraw @s "Du startade övningsläget."

function boatracing:menu/give {slot: 0, name: "Checkpoint 1", run: "boatracing:menu/practice/tp", arg: "1", item: "minecraft:black_dye"}
function boatracing:menu/give {slot: 1, name: "Checkpoint 2", run: "boatracing:menu/practice/tp", arg: "2", item: "minecraft:green_dye"}
function boatracing:menu/give {slot: 2, name: "Checkpoint 3", run: "boatracing:menu/practice/tp", arg: "3", item: "minecraft:white_dye"}
function boatracing:menu/give {slot: 3, name: "Checkpoint 4", run: "boatracing:menu/practice/tp", arg: "4", item: "minecraft:gray_dye"}
function boatracing:menu/give {slot: 4, name: "Checkpoint 5", run: "boatracing:menu/practice/tp", arg: "5", item: "minecraft:yellow_dye"}
function boatracing:menu/give {slot: 8, name: "Lämna övningsläget", run: "boatracing:menu/practice/exit", arg: "none", item: "minecraft:red_dye"}

function boatracing:checkpoints/teleport
function boatracing:spawn_boat
