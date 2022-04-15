#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
execute if score @s BrewingStandPotion1 matches 1..8 run item replace block ~ ~ ~ container.0 with air
execute if score @s BrewingStandPotion1 matches 1 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion1 matches 2 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion1 matches 3 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion1 matches 4 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion1 matches 5 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion1 matches 6 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_potion_of_frost_resistance
execute if score @s BrewingStandPotion1 matches 7 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion1 matches 8 run loot replace block ~ ~ ~ container.0 loot bcsmp:brewing/splash_potion_of_frost_resistance

execute if score @s BrewingStandPotion2 matches 1..8 run item replace block ~ ~ ~ container.1 with air
execute if score @s BrewingStandPotion2 matches 1 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion2 matches 2 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion2 matches 3 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion2 matches 4 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion2 matches 5 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion2 matches 6 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_potion_of_frost_resistance
execute if score @s BrewingStandPotion2 matches 7 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion2 matches 8 run loot replace block ~ ~ ~ container.1 loot bcsmp:brewing/splash_potion_of_frost_resistance

execute if score @s BrewingStandPotion3 matches 1..8 run item replace block ~ ~ ~ container.2 with air
execute if score @s BrewingStandPotion3 matches 1 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion3 matches 2 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion3 matches 3 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_lava_bottle
execute if score @s BrewingStandPotion3 matches 4 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_powder_snow_bottle
execute if score @s BrewingStandPotion3 matches 5 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion3 matches 6 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_potion_of_frost_resistance
execute if score @s BrewingStandPotion3 matches 7 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_potion_of_heat_resistance
execute if score @s BrewingStandPotion3 matches 8 run loot replace block ~ ~ ~ container.2 loot bcsmp:brewing/splash_potion_of_frost_resistance

scoreboard players reset @s BrewingStandPotion1
scoreboard players reset @s BrewingStandPotion2
scoreboard players reset @s BrewingStandPotion3
tag @s remove BrewTime1s
#------------------------------------------#
