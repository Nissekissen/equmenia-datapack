# if detective shoots innocent, detective loses
kill @a[team=Detective]

tellraw @s {"text": "Du sköt en oskyldig! Du är nu en åskådare!", "color": "red"}

execute at @s run function mm:bow/spawn