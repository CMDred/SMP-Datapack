#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
execute as @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:water"}}}] run data merge entity @s {Item:{tag:{CustomPotionColor:3232689,CustomPotionEffects:[{Id:26b,Amplifier:0b,Duration:600,ShowParticles:0b}]}}}
execute as @a at @s run function bcsmp:temperature/being_wet/check
execute as @a[scores={ToggleTemperatureDisplay=1..}] run function bcsmp:temperature/display_temperature/toggle_temperature_display
#------------------------------------------#
