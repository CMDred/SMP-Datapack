#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
execute store result score #ThisUUID0 Temp run data get entity @s UUID[0]
execute store result score #ThisUUID1 Temp run data get entity @s UUID[1]
execute if score #ThisUUID0 Temp = #UUID0 Temp if score #ThisUUID1 Temp = #UUID1 Temp run tag @s add Thrower
#------------------------------------------#