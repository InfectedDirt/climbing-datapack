summon armor_stand ~ ~ ~ {Tags:["climbing.ClimbingStand"],Invisible:1b,Marker:1b,NoGravity:1b}
execute at @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] rotated as @s run tp @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] ~ ~ ~ ~ ~

#Align armor stand facing direction
execute positioned ^ ^ ^.5 align xz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:[climbing.directionMarker]}
execute align xz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Tags:[climbing.directionTester],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @e[tag=climbing.directionTester,sort=nearest,limit=1] at @s run rotate @s facing entity @e[tag=climbing.directionMarker,sort=nearest,limit=1]
execute as @e[tag=climbing.directionTester,sort=nearest,limit=1] at @s run rotate @e[tag=climbing.ClimbingStand,sort=nearest,limit=1] ~ 0
kill @e[tag=climbing.directionMarker]
kill @e[tag=climbing.directionTester]

execute positioned ~ ~ ~ run ride @s mount @e[type=armor_stand,tag=climbing.ClimbingStand,sort=nearest,limit=1]
tag @s add climbing.climbing
