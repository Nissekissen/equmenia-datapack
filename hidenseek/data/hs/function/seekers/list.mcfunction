execute unless entity @a[tag=hs.chosen] run return run tellraw @s {text: "Inga valda seekers, slumpas.", color: "gray"}
tellraw @s [{text: "Valda seekers: ", color: "blue"}, {selector: "@a[tag=hs.chosen]"}]
