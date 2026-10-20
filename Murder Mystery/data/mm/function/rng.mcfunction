# Generates a random number between 1 and 3
# Function from online. See https://www.reddit.com/r/MinecraftCommands/comments/vv68n6/tutorial_random_number_generator_by_scoreboard/
# Get the random number from RNG RNG_Variable
# Change the range by changing  C_Range RNG_Constant
scoreboard players add RNGseed RNG_Variable 1
execute store result score RNG RNG_Variable run time query gametime
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_PI RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_e RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNG RNG_Variable
scoreboard players operation RNG RNG_Variable /= C_1000 RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_PI RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_e RNG_Constant
scoreboard players operation RNG RNG_Variable %= C_Range RNG_Constant