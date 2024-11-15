# String of commands that run after loading world or using /reload

# Worldborder setup, making it unsafe to be out of the border for even 1 block before taking damage
worldborder set 100000
worldborder damage amount 1
worldborder damage buffer 0
worldborder warning distance 10
# Makes sure everyone spawns at 0,0, that day cycle is disabled and set to 2 minutes of day & 2 minutes of night
gamerule spawnRadius 1
gamerule doDaylightCycle_tc false
time set noon
timecontrol night_length_seconds 180
timecontrol day_length_seconds 180
# Adds all the required Scoreboards and sets requred values to not break
scoreboard objectives add Lives dummy
scoreboard players set @a Lives 4
scoreboard objectives add Stats dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add Kills minecraft.custom:minecraft.player_kills
scoreboard objectives setdisplay list Kills
scoreboard objectives setdisplay sidebar Stats
scoreboard objectives add IsAlive dummy
scoreboard objectives add PrevIsAlive dummy
scoreboard objectives add Tick dummy
scoreboard players reset Tick Tick
scoreboard players reset T Tick
scoreboard objectives add Sec dummy
scoreboard objectives add NextWB dummy
scoreboard objectives add ShrinkingTime dummy
scoreboard players set Start Sec -1
scoreboard players set NextShrink ShrinkingTime -1
# Sends a message that the datapack has been installed properly and to not mind the negative counter
tellraw @a ["",{"text":"The"},{"text":" Datapack","color":"blue"},{"text":" has been"},{"text":" loaded!","color":"green"},{"text":"\nMade by"},{"text":" ASD","obfuscated":true,"color":"black"},{"text":" GlitchedGamerMC","color":"dark_green"},{"text":" ASD","obfuscated":true,"color":"black"}]
tellraw @a {"text":"Don't mind the negative timer! Once the game starts it will be fixed."}