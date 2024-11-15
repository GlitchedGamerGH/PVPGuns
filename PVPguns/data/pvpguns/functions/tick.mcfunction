# I recommend not touching anything here as it is what is the backbone of most other functions

# Adds number to the side display to show current worldborder size
execute store result score Border Stats run worldborder get
# Adds a tag to every player that is in survival mode and removes it when they exit survival mode
tag @a add IsAliveTrue
tag @a[gamemode=!survival] remove IsAliveTrue
# Sets the current count of players on the side display that are in survival mode and thus in game
scoreboard players operation Players PrevIsAlive = Players IsAlive
scoreboard players set Players IsAlive 0
execute as @a[tag=IsAliveTrue] run scoreboard players add Players IsAlive 1
execute store result score Players Stats run scoreboard players get Players IsAlive

# Once a player dies it removes 1 life from their 'Lives' count and resets their death count afterwards (i know i could optimize this but i have spent too long on this rn to do that right now)
execute as @a[scores={Deaths=1}] run scoreboard players remove @s Lives 1
scoreboard players reset @a Deaths
execute as @a[scores={Deaths=1}] run function pvpguns:death
# Adds 1 to the tick counter and resets once it reaches 20 to count as a second
scoreboard players add T Tick 1
execute if score T Tick matches 20.. run scoreboard players set T Tick 0
execute if score T Tick matches 0 run scoreboard players remove Start Sec 1
execute if score Start Sec matches 0 run function pvpguns:wbshrink
execute if score T Tick matches 0 run scoreboard players remove NextShrink ShrinkingTime 1
execute if score NextShrink ShrinkingTime matches 0 run function pvpguns:wbshrink
execute store result score NextShrink Stats run scoreboard players get NextShrink ShrinkingTime
# Displays the number of lives that player has and what size is the next world border going to be above their hotbar
execute as @a run title @s actionbar ["",{"text":"Lives: "},{"score":{"name":"@s","objective":"Lives"}},{"text":" | Next Border Size: "},{"score":{"name":"WB","objective":"NextWB"}}]