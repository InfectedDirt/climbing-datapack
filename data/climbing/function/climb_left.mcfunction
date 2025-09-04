execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s run tp @s ^.05 ^ ^
execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s unless block ^ ^ ^.5 #climbing:climbable run kill @s
execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s unless block ~ ~-.5 ~ air run kill @s
execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s unless block ^.5 ^ ^ air run rotate @s ~-90 ~
scoreboard players operation @s rpg.stamina -= $climbing.climb_side_cost rpg.config