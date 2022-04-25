#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------TIMER-------------------#
scoreboard players set @s TemperatureDamageTimer 10
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:20b,Amplifier:5b,Duration:1,ShowParticles:0b}]}
tag @s add DealTemperatureDamage
gamerule showDeathMessages false
schedule function bcsmp:temperature/deal_damage/remove_tag 1t
#------------------------------------------#
