execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s run tp @s ~ ~.05 ~
execute at @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] unless block ^ ^ ^.5 #climbing:climbable run function climbing:stop_climb
execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s unless block ~ ~2 ~ air run kill @s
scoreboard players operation @s rpg.stamina -= $climbing.climb_up_cost rpg.config