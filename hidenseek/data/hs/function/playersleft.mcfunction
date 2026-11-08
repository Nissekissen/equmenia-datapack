# will count the amount of players in the "hider" team and set the scoreboard value to that amount

scoreboard players set #playersLeft HS 0
execute as @a[team=Hider] run scoreboard players add #playersLeft HS 1

title @a[tag=hs.player] actionbar [{text: "Spelare kvar: ", color: "red"}, {score: {name: "#playersLeft", objective: "HS"}, color: "red"}]
