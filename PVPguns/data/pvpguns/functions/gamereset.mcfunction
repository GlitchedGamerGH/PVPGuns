# After the game is done, run this function to put everyone into creative mode and reset all necessary paramaters
scoreboard players set @a Lives 4
worldborder set 10000
gamerule spawnRadius 10000
gamemode creative @a
clear @a
scoreboard players reset @a Kills
scoreboard players set Start Sec -1
scoreboard players set NextShrink ShrinkingTime -1