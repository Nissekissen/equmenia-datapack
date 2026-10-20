tellraw REEEEEEEboi [{"text": "Kills: "}, {"score": {"name": "@s", "objective": "kills"}}]
execute if score @s kills matches ..5 run function pve:gameover/gold/5
execute if score @s kills matches 6..10 run function pve:gameover/gold/3
