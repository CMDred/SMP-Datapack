#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
execute as @e[type=item,tag=FactionBanner] run data modify entity @s Motion set value [1.0,0.8,0.0]
execute as @e[type=item,tag=FactionWool] run data modify entity @s Motion set value [1.0,0.8,0.0]
execute as @e[type=item,tag=FactionPaper] run data modify entity @s Motion set value [1.0,0.8,0.0]
tellraw @p {"text":"You already are in a faction!","color":"red"}
#------------------------------------------#