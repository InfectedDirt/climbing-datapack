scoreboard players operation @s rpg.id = $rpg.counter rpg.id
scoreboard players add $rpg.counter rpg.id 1
tag @s add rpg.hasStaminaBar
execute store result storage rpg:macro-in ID int 1 run scoreboard players get @s rpg.id
execute store result storage rpg:macro-in STAMINA int 1 run scoreboard players get @s rpg.stamina
function rpg:finish_bossbar with storage rpg:macro-in