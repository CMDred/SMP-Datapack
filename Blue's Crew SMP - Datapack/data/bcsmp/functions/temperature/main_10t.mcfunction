#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
execute if predicate bcsmp:temperature/weather/rain as @a at @s if predicate bcsmp:temperature/in_rain/in_biome_with_rain if predicate bcsmp:temperature/in_rain/sky_access run function bcsmp:temperature/being_wet/in_rain
execute as @a[scores={TooHot=0..}] run function bcsmp:temperature/deal_damage/too_hot_timer
execute as @a[scores={TooCold=0..}] run function bcsmp:temperature/deal_damage/too_cold_timer
execute if score #UseTemperature GameRules matches 1 run schedule function bcsmp:temperature/main_10t 10t
#------------------------------------------#
