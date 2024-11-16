# This function sets the next worldborder size and after the timer runs out sets to that size
# The reason the ShrinkingTime score is set to 70 when it takes a minute to shrink down to each size is for the 10 second grace period, same thing with the 20 second timer for 100 world border size and lower
execute if score NextShrink ShrinkingTime matches 0 if score WB NextWB matches 101.. run scoreboard players remove WB NextWB 100
execute if score NextShrink ShrinkingTime matches 0 if score WB NextWB matches 101.. run scoreboard players set NextShrink ShrinkingTime 70
execute if score NextShrink ShrinkingTime matches 0 if score WB NextWB matches ..100 run scoreboard players remove WB NextWB 10
execute if score NextShrink ShrinkingTime matches 0 if score WB NextWB matches ..100 run scoreboard players set NextShrink ShrinkingTime 20
execute if score Players Stats matches 1 run scoreboard players set NextShrink ShrinkingTime -1
execute if score Players Stats matches 1 run worldborder damage amount 0
# From 1000 to 100 it takes a minute between each change
execute if score WB NextWB matches 900 run worldborder set 900 60
execute if score WB NextWB matches 800 run worldborder set 800 60
execute if score WB NextWB matches 700 run worldborder set 700 60
execute if score WB NextWB matches 600 run worldborder set 600 60
execute if score WB NextWB matches 500 run worldborder set 500 60
execute if score WB NextWB matches 400 run worldborder set 400 60
execute if score WB NextWB matches 300 run worldborder set 300 60
execute if score WB NextWB matches 200 run worldborder set 200 60
execute if score WB NextWB matches 100 run worldborder set 100 60
# From 100 to 0 it takes 10 to shrink the border
execute if score WB NextWB matches 90 run worldborder set 90 10
execute if score WB NextWB matches 80 run worldborder set 80 10
execute if score WB NextWB matches 70 run worldborder set 70 10
execute if score WB NextWB matches 60 run worldborder set 60 10
execute if score WB NextWB matches 50 run worldborder set 50 10
execute if score WB NextWB matches 40 run worldborder set 40 10
execute if score WB NextWB matches 30 run worldborder set 30 10
execute if score WB NextWB matches 20 run worldborder set 20 10
execute if score WB NextWB matches 10 run worldborder set 10 10
execute if score WB NextWB matches 0 run worldborder set 1 10
