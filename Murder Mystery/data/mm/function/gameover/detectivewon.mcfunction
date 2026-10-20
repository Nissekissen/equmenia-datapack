# when detective wins

execute as @a[team=Detective] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Detective] run title @s subtitle {"text": "Du sköt mördaren!", "color": "green"}

execute as @a[team=Innocent] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Innocent] run title @s subtitle {"text": "Detektiven sköt mördaren!", "color": "green"}

execute as @a[team=Dead] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[team=Dead] run title @s subtitle {"text": "Detektiven sköt mördaren!", "color": "green"}

execute as @a[tag=murderer,team=Dead] run title @s title {"text": "DU FÖRLORADE =(", "color": "red"}
execute as @a[tag=murderer,team=Dead] run title @s subtitle {"text": "Detektiven sköt dig!", "color": "red"}