#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------MAKE WET-----------------#
scoreboard players reset #InWater Temp

execute if score @s WetTimer matches 1.. run function bcsmp:temperature/being_wet/dry

execute unless score #InWater Temp matches 1.. positioned ~ ~1.62 ~ if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 3
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~1.62 ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 3
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~1.62 ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 3
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~1.62 ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 3
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~1.62 ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 3

execute unless score #InWater Temp matches 1.. positioned ~ ~0.81 ~ if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 2
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~0.81 ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 2
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~0.81 ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 2
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~0.81 ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 2
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~0.81 ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 2

execute unless score #InWater Temp matches 1.. if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 1
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~ ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 1
execute unless score #InWater Temp matches 1.. positioned ~0.3 ~ ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 1
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~ ~0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 1
execute unless score #InWater Temp matches 1.. positioned ~-0.3 ~ ~-0.3 if predicate bcsmp:temperature/in_water run scoreboard players set #InWater Temp 1

execute unless score #InWater Temp matches 1.. if block ~ ~ ~ water_cauldron run function bcsmp:temperature/being_wet/in_cauldron

execute if score #InWater Temp matches 1 unless score @s WetTimer matches 8000.. run scoreboard players set @s WetTimer 8000
execute if score #InWater Temp matches 2 unless score @s WetTimer matches 24000.. run scoreboard players set @s WetTimer 24000
execute if score #InWater Temp matches 3 unless score @s WetTimer matches 40000.. run scoreboard players set @s WetTimer 40000

execute unless score #InWater Temp matches 1 if score @s WetTimer matches 1..8000 run particle minecraft:falling_water ~ ~0.1 ~ 0.175 0.1 0.175 0.5 1
execute unless score #InWater Temp matches 2 if score @s WetTimer matches 8001..24000 run particle minecraft:falling_water ~ ~0.5 ~ 0.175 0.1 0.175 0.5 1
execute unless score #InWater Temp matches 3 if score @s WetTimer matches 24001..40000 run particle minecraft:falling_water ~ ~1 ~ 0.175 0.3 0.175 0.5 1
#------------------------------------------#
