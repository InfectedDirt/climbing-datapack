scoreboard objectives add rpg.config dummy

##Config
#Change the values here to change how exactly the datapack behaves. 
#Keep in mind that these only have effect when this datapack is the last to load.

#How much stamina you regain per tick when not climbing and on the ground. (Default: 33)
scoreboard players set $rpg.stamina_refresh_speed rpg.config 33

#Stamina bar style
#0 : no notches
#1 : 6 notches
#2 : 10 notches
#3 : 12 notches
#4 : 20 notches
#(Default: 2)
scoreboard players set $rpg.stamina_bar_style rpg.config 2