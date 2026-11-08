execute unless entity @a[tag=hs.last] run title @a[tag=hs.player] subtitle {text: "Ingen vann!", color: "gray"}
execute unless entity @a[tag=hs.last] run title @a[tag=hs.player] title {text: "Alla hittades!", color: "red"}
execute unless entity @a[tag=hs.last] run return run tellraw @a[tag=hs.player] {text: "Ingen vann", color: "gray"}

title @a[tag=hs.player] subtitle [{selector: "@a[tag=hs.last]", color: "gold"}, {text: " vann!", color: "gold"}]
title @a[tag=hs.player] title {text: "Alla hittades!", color: "red"}
tellraw @a[tag=hs.player] [{text: "Vinnare: ", color: "gold"}, {selector: "@a[tag=hs.last]"}]
