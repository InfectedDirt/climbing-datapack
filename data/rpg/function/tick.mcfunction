#Bossbars
execute as @a[tag=!rpg.hasStaminaBar] run function rpg:setup_bossbar
execute as @a[tag=rpg.hasStaminaBar] run function rpg:setup_update_bossbar

#Cleanup
execute as @e[tag=!climbing.climbing,predicate=!rpg:sprinting,tag=!rpg.tired,scores={rpg.stamina=..2000},nbt={OnGround:true}] run scoreboard players operation @s rpg.stamina += $rpg.stamina_refresh_speed rpg.config
execute as @e[tag=!climbing.climbing,tag=rpg.tired,scores={rpg.stamina=..2000},nbt={OnGround:true}] run scoreboard players add @s rpg.stamina 17
execute as @e[scores={rpg.stamina=2001..}] run scoreboard players set @s rpg.stamina 2000
execute as @e[scores={rpg.stamina=..0}] run scoreboard players set @s rpg.stamina 0

#Tiredness
execute as @e[scores={rpg.stamina=..0}] run tag @s add rpg.tired
execute as @e[scores={rpg.stamina=2000..}] run tag @s remove rpg.tired
execute at @e[tag=rpg.tired] anchored eyes positioned ~ ~1.8 ~ run particle falling_water ^ ^ ^-0.3 .13 .128 .13 .1 1 force

execute at @e[scores={rpg.stamina=..300}] if predicate rpg:low_stamina_sweat_chance anchored eyes positioned ~ ~1.8 ~ run particle falling_water ^ ^ ^-0.3 .13 .128 .13 .1 1 force

#Jump detection
execute as @a[scores={rpg.jumps=1..}] run function rpg:on_jump