#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
tag @s add SplashPotionChecked
execute if data entity @s {Item:{tag:{Potion:"minecraft:water"}}} at @s run function bcsmp:brewing/custom_potions/throw_splash_potions/throw_water
execute if data entity @s {Item:{tag:{Potion:"minecraft:powder_snow"}}} at @s run function bcsmp:brewing/custom_potions/throw_splash_potions/throw_powder_snow
execute if data entity @s {Item:{tag:{Potion:"minecraft:lava"}}} at @s run function bcsmp:brewing/custom_potions/throw_splash_potions/throw_lava
execute if data entity @s {Item:{tag:{Potion:"minecraft:heat_resistance"}}} at @s run function bcsmp:brewing/custom_potions/throw_splash_potions/throw_heat_resistance
execute if data entity @s {Item:{tag:{Potion:"minecraft:frost_resistance"}}} at @s run function bcsmp:brewing/custom_potions/throw_splash_potions/throw_frost_resistance
#------------------------------------------#
