# run as the item (bow). Bind the nearest innocent ONCE, then do everything as them.
# Repeating the distance search per line was unstable: the player could drift just
# past 1 block between lines, so give/tellraw fired but team join missed.

execute as @a[distance=..1,limit=1,sort=nearest,team=Innocent] run function mm:bow/become_detective

kill @s
