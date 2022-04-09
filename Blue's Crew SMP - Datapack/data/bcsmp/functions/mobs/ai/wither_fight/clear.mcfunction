#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#

#------------------STASIS------------------#
data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute at @e[tag=StasisPoint] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
schedule function bcsmp:mobs/ai/wither_fight/stasis 1
#------------------------------------------#