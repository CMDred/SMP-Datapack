#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------TIMER-------------------#
scoreboard players set @s TemperatureDamageTimer 10
execute unless predicate bcsmp:temperature/burning at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b}]}
#------------------------------------------#
