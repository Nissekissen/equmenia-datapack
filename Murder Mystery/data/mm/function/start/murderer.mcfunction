# Making the selected player the murderer

team join Murderer @s
title @s title {"text":"Du är Mördare!", "color": "red"}
tellraw @s {"text": "Du har blivit vald till mördare! Din uppgift är att mörda alla andra spelare, utan att själv bli skjuten av detektiven!", "color": "red"}
# item replace entity @s hotbar.0 with iron_sword 1

tag @s add murderer