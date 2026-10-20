
kill @e[type=text_display, tag=br_lb]

summon text_display ~ ~ ~ {Tags: ["br_lb", "br_lb_1"], billboard: "fixed", text: {text: "1. ---", color: "dark_gray"}}
summon text_display ~ ~-0.3 ~ {Tags: ["br_lb", "br_lb_2"], billboard: "fixed", text: {text: "2. ---", color: "dark_gray"}}
summon text_display ~ ~-0.6 ~ {Tags: ["br_lb", "br_lb_3"], billboard: "fixed", text: {text: "3. ---", color: "dark_gray"}}
summon text_display ~ ~-0.9 ~ {Tags: ["br_lb", "br_lb_4"], billboard: "fixed", text: {text: "4. ---", color: "dark_gray"}}
summon text_display ~ ~-1.2 ~ {Tags: ["br_lb", "br_lb_5"], billboard: "fixed", text: {text: "5. ---", color: "dark_gray"}}
summon text_display ~ ~-1.5 ~ {Tags: ["br_lb", "br_lb_6"], billboard: "fixed", text: {text: "6. ---", color: "dark_gray"}}
summon text_display ~ ~-1.8 ~ {Tags: ["br_lb", "br_lb_7"], billboard: "fixed", text: {text: "7. ---", color: "dark_gray"}}
summon text_display ~ ~-2.1 ~ {Tags: ["br_lb", "br_lb_8"], billboard: "fixed", text: {text: "8. ---", color: "dark_gray"}}
summon text_display ~ ~-2.4 ~ {Tags: ["br_lb", "br_lb_9"], billboard: "fixed", text: {text: "9. ---", color: "dark_gray"}}
summon text_display ~ ~-2.7 ~ {Tags: ["br_lb", "br_lb_10"], billboard: "fixed", text: {text: "10. ---", color: "dark_gray"}}

tag @s add br_setup
# execute as @e[type=text_display, tag=br_lb] run rotate @s facing entity @a[tag=br_setup,limit=1]
execute as @e[type=text_display, tag=br_lb] at @s rotated as @a[tag=br_setup, limit=1] run tp @s ~ ~ ~ ~ ~
tag @s remove br_setup
