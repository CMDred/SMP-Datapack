#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
execute as @e[type=item,tag=FactionPaper,distance=..1.5,limit=1] store result score #UUID0 Temp run data get entity @s Thrower[0]
execute as @e[type=item,tag=FactionPaper,distance=..1.5,limit=1] store result score #UUID1 Temp run data get entity @s Thrower[1]
execute as @a[distance=..10] run function bcsmp:factions/villager/check_if_owner
execute as @a[tag=Thrower] run function bcsmp:factions/check_if_in/any_faction/start
execute as @a[tag=Thrower,tag=IsInAFaction] at @s run function bcsmp:factions/villager/error3
execute unless entity @a[tag=Thrower,tag=IsInAFaction] run function bcsmp:factions/villager/success
tag @a remove IsInAFaction
#------------------------------------------#
