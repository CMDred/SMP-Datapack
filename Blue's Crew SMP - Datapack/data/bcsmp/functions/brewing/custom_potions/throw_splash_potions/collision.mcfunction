#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------POTIONS----------------#
execute if entity @s[tag=SplashWater] align xyz positioned ~0.5 ~0.5 ~0.5 run function bcsmp:brewing/custom_potions/throw_splash_potions/collision/splash_water_bottle
execute if entity @s[tag=SplashPowderSnow] align xyz positioned ~0.5 ~0.5 ~0.5 run function bcsmp:brewing/custom_potions/throw_splash_potions/collision/splash_powder_snow_bottle
execute if entity @s[tag=SplashLava] align xyz positioned ~0.5 ~0.5 ~0.5 run function bcsmp:brewing/custom_potions/throw_splash_potions/collision/splash_lava_bottle
execute if entity @s[tag=SplashHeatResistance] align xyz positioned ~0.5 ~0.5 ~0.5 run function bcsmp:brewing/custom_potions/throw_splash_potions/collision/splash_potion_of_heat_resistance
execute if entity @s[tag=SplashFrostResistance] align xyz positioned ~0.5 ~0.5 ~0.5 run function bcsmp:brewing/custom_potions/throw_splash_potions/collision/splash_potion_of_frost_resistance
kill @s
#------------------------------------------#
