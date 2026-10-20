# when detective wins

execute as @a[team=Innocent] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Innocent] run title @s subtitle {"text": "mördaren dog!", "color": "green"}

execute as @a[team=Dead] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Dead] run title @s subtitle {"text": "mördaren dog!", "color": "green"}

execute as @a[team=Murderer] run title @s title {"text": "DU FÖRLORADE =(", "color": "red"}
execute as @a[team=Murderer] run title @s subtitle {"text": "Du blev skjuten!", "color": "red"}