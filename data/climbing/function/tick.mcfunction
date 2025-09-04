

#Clean up
execute as @e[tag=climbing.ClimbingStand] at @s unless entity @e[distance=..2,type=player] run kill @s
execute as @a[tag=climbing.climbing] at @s unless entity @e[tag=climbing.ClimbingStand,distance=..1] run tag @s remove climbing.climbing
execute as @e[tag=climbing.climbing] run scoreboard players remove @s rpg.stamina 1
execute as @e[tag=climbing.climbing] at @s store result entity @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] Health float 0.01 run scoreboard players get @s rpg.stamina



#Start climbing
execute as @a[tag=!climbing.climbing,tag=!rpg.tired,nbt={OnGround:false},predicate=climbing:falling] at @s anchored eyes if block ^ ^ ^0.5 #climbing:climbable if block ~ ~-0.5 ~ air run function climbing:start_climb

#Movement
execute as @e[tag=climbing.climbing,predicate=climbing:press_forward] run function climbing:climb_up
execute as @e[tag=climbing.climbing,predicate=climbing:press_backward] run function climbing:climb_down
execute as @e[tag=climbing.climbing,predicate=climbing:press_left] run function climbing:climb_left
execute as @e[tag=climbing.climbing,predicate=climbing:press_right] run function climbing:climb_right
execute as @e[tag=climbing.climbing,predicate=climbing:press_jump] at @s run function climbing:jump_off
