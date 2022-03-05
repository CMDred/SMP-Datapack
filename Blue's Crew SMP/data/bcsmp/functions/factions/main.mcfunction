#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
# Outpost villager AI
execute as @e[tag=FactionOutpostVillager,tag=!Converted,tag=!InviteManager] at @s run function bcsmp:factions/villager/convert
execute as @e[tag=FactionOutpostVillager,tag=Converted,tag=!FactionCreated] at @s run function bcsmp:factions/villager/main
execute as @e[tag=FactionOutpostVillager,tag=Converted] at @s run tp @s ~ ~ ~ facing entity @p feet

execute as @a at @s run function bcsmp:factions/area_of_effect/main

execute as @a[scores={GetFactionList=1..}] run function bcsmp:factions/get_list/start
scoreboard players enable @a GetFactionList
#------------------------------------------#