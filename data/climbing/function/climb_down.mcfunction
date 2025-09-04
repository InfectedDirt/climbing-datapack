execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s run tp @s ~ ~-.2 ~
execute at @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] unless block ^ ^ ^.5 #climbing:climbable run function climbing:stop_climb
execute as @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] at @s unless block ~ ~-.5 ~ air run kill @s

scoreboard players operation @s rpg.stamina -= $climbing.climb_down_cost rpg.config