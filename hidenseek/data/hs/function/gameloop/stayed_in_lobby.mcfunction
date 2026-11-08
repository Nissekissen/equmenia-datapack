title @s subtitle {text: "Du stannade i lobbyn!", color: "red"}
tellraw @a[tag=hs.player] [{selector: "@s", color: "red"}, {text: " blev hittad!", color: "red"}]
function hs:gameloop/death

# staying in the lobby should not make you "last found"
tag @s remove hs.last
