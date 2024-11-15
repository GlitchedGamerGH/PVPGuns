# The infinite effects that players will have including after they die
effect give @a xaerominimap:no_waypoints infinite 0 true
effect give @a xaerominimap:no_entity_radar infinite 0 true
effect give @a saturation infinite 0 true
# Makes sure players are unable to move for the 5 seconds until game starts up
effect give @a slowness 5 9 true
effect give @a jump_boost 5 128 true
# Double check to make sure players have 3 lives
scoreboard players set @a Lives 3
title @a subtitle {"text":"The game starts in 5 seconds!","color":"red"}
title @a title {"text":"Get ready!","color":"dark_red"}
# Starting timer that makes worldborder start moving after it reaches 0
scoreboard players set Start Sec 5
# Sets timer and size for the first border
scoreboard players set NextShrink ShrinkingTime 75
scoreboard players set WB NextWB 900
# Sets time and enables day cycle
gamerule doDaylightCycle_tc true
time set 0