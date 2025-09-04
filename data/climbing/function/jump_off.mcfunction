scoreboard players remove @s rpg.stamina 400
kill @e[tag=climbing.ClimbingStand,sort=nearest,limit=1]
scoreboard players set $strength player_motion.api.launch 6000
execute at @s rotated ~ ~-90 run function player_motion:api/launch_looking