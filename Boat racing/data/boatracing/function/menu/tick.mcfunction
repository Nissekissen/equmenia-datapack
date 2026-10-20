execute unless score @s br_in_game matches 0.. run scoreboard players set @s br_in_game 0

execute if score @s br_in_game matches 0 if score @s br_practice matches 0 unless items entity @s hotbar.8 paper run function boatracing:menu/give {slot: 8, name: "Övningsläge", run: "boatracing:menu/practice/enter", arg: "none", item: "minecraft:paper"}

