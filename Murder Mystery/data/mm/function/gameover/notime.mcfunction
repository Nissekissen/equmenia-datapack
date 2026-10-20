# when detective wins

execute as @a[team=Innocent] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Innocent] run title @s subtitle {"text": "mördaren tog för lång tid på sig!", "color": "green"}

execute as @a[team=Dead] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Dead] run title @s subtitle {"text": "mördaren tog för lång tid på sig!", "color": "green"}

execute as @a[team=Murderer] run title @s title {"text": "DU FÖRLORADE =(", "color": "red"}
execute as @a[team=Murderer] run title @s subtitle {"text": "Du tog för lång tid på dig!", "color": "red"}