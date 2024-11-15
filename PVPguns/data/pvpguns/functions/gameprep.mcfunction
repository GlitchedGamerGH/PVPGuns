# A string of commands to prepare for the game

# Sets the worldborder size to 1000
worldborder set 1000
# Deals half a heart per second per block once someone is outside the border
worldborder damage amount 1
# Spawns players anywhere between 0,0 and 50 blocks away from the border
gamerule spawnRadius 900
# Kills players so they respawn somewhere randomly with 3 Lives remaining
kill @a
scoreboard players set @a Lives 4
# Shows text that the games are about to begin as well as it plays a sound
title @a title {"text":"Get ready!","color":"dark_red"}
title @a subtitle {"text":"The game is about to begin!","color":"red"}
execute as @a at @a run playsound block.note_block.xylophone master @s ~ ~ ~ 1 1 1 