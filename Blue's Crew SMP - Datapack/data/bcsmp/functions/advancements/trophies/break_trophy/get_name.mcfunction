#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------TROPHY------------------#
data modify storage bcsmp:trophy AwardedPlayerName set from entity @s Item.tag.SkullOwner.Name
loot spawn ~ ~ ~ loot bcsmp:trophies/spawn_trophy
kill @s
#------------------------------------------#
