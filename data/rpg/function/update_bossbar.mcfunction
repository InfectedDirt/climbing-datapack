$bossbar set rpg:$(ID) value $(STAMINA)
$execute if entity @s[scores={rpg.stamina=..600}] run bossbar set rpg:$(ID) color yellow
$execute if entity @s[scores={rpg.stamina=..300}] run bossbar set rpg:$(ID) color red
$execute if entity @s[scores={rpg.stamina=601..}] run bossbar set rpg:$(ID) color green
$execute if entity @s[tag=rpg.tired] run bossbar set rpg:$(ID) color red

$execute if score $rpg.stamina_bar_style rpg.config matches 0 run bossbar set rpg:$(ID) style progress
$execute if score $rpg.stamina_bar_style rpg.config matches 1 run bossbar set rpg:$(ID) style notched_6
$execute if score $rpg.stamina_bar_style rpg.config matches 2 run bossbar set rpg:$(ID) style notched_10
$execute if score $rpg.stamina_bar_style rpg.config matches 3 run bossbar set rpg:$(ID) style notched_12
$execute if score $rpg.stamina_bar_style rpg.config matches 4 run bossbar set rpg:$(ID) style notched_20

$bossbar set rpg:$(ID) visible true
$execute if entity @s[scores={rpg.stamina=2000..}] run bossbar set rpg:$(ID) visible false