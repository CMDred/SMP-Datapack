#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
# Outpost villager AI
execute as @e[tag=FactionOutpostVillager,tag=!Converted] at @s run function bcsmp:factions/villager/convert
execute as @e[tag=FactionOutpostVillager,tag=Converted,tag=!FactionCreated] at @s run function bcsmp:factions/villager/main
execute as @e[tag=FactionOutpostVillager,tag=Converted] at @s run tp @s ~ ~ ~ facing entity @p feet
# tp @s 1267 70 -1800 -90 5
#------------------------------------------#