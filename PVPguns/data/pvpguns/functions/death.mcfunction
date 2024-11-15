# Giving the players the effects back after they die
effect give @a xaerominimap:no_waypoints infinite 0 true
effect give @a xaerominimap:no_entity_radar infinite 0 true
effect give @a saturation infinite 0 true
# A string of commands for when a player dies on their last life
execute as @a[scores={Lives=0},gamemode=survival] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[gamemode=survival,scores={Lives=0}] run tellraw @a {"text":"A player has been eliminated!","color":"red"}
# Once a players score 'Lives' reaches 0 they are stuck in spectator mode until the end of the game
execute as @a[scores={Lives=0}] run gamemode spectator @s