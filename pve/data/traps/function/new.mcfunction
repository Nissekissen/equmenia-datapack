
scoreboard players add max trapId 1
scoreboard players operation @s trapId = max trapId

tellraw @s [{"text": "Ny fälla påbörjad. Trap id: ", "color": "green"}, {"score": {"name": "@s", "objective": "trapId"}, "color": "green"}]
summon villager ~ ~ ~ {CustomName:'{"text":"Mathandlar\'n"}',CustomNameVisible:0b,NoAI:1b,Invulnerable:1b,VillagerData:{level:5,profession:"minecraft:butcher",level:2,type:"minecraft:plains"},Offers:{Recipes:[{buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:dried_kelp",count:5},maxUses:9999999,rewardExp:0b},{buy:{id:"minecraft:gold_ingot",count:2},sell:{id:"minecraft:bread",count:3},maxUses:9999999,rewardExp:0b},{buy:{id:"minecraft:gold_ingot",count:3},sell:{id:"minecraft:cooked_porkchop",count:2},maxUses:9999999,rewardExp:0b},{buy:{id:"minecraft:gold_ingot",count:5},sell:{id:"minecraft:golden_apple",count:1},maxUses:9999999,rewardExp:0b}]}}