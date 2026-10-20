# when murderer wins

execute as @a[tag=murderer] run title @s title {"text": "DU VANN!", "color": "green"}
execute as @a[tag=murderer] run title @s subtitle {"text": "Du dödade alla spelarna!", "color": "green"}

execute as @a[team=Dead] run title @s title {"text": "DU FÖRLORADE =(", "color": "red"}
execute as @a[team=Dead] run title @s subtitle {"text": "Mördaren dödade alla spelarna!", "color": "red"}
