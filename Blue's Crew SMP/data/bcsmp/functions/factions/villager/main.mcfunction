#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tp @s ~ ~ ~ facing entity @p feet
execute if entity @a[distance=..10] as @e[type=item,distance=..0.8] at @s if predicate bcsmp:factions/check_paper_nbt run function bcsmp:factions/villager/check_for_banner
#------------------------------------------#