scoreboard objectives add rpg.stamina dummy
scoreboard objectives add rpg.id dummy
execute unless score $rpg.counter rpg.id matches 0.. run scoreboard players set $rpg.counter rpg.id 0

scoreboard objectives add rpg.jumps custom:jump


function #rpg:config