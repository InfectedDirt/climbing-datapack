kill @e[tag=climbing.ClimbingStand,distance=..0.5]
scoreboard players set $strength player_motion.api.launch 5000
execute at @s rotated ~ -85 run function player_motion:api/launch_looking
