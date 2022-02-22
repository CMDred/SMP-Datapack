#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
execute store result score #UUID0 Temp run data get entity @s UUID[0]
execute if score #SearchUUID0 Temp = #UUID0 Temp if entity @s[type=#minecraft:skeletons] at @s run function bcsmp:advancements/you_broke/shot
#------------------------------------------#

