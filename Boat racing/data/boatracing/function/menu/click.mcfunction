advancement revoke @s only boatracing:menu_click
execute if score @s br_menu_hold matches 1.. run return run scoreboard players set @s br_menu_hold 3
scoreboard players set @s br_menu_hold 3

data modify storage boatracing:menu in set from entity @s SelectedItem.components."minecraft:custom_data".menu
function boatracing:menu/dispatch with storage boatracing:menu in
