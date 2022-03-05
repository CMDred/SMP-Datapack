#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tag @s remove FactionAvailable
function bcsmp:factions/check_if_color_taken/start
function bcsmp:factions/check_if_name_taken/start
execute if entity @s[tag=ColorAvailable,tag=NameAvailable] run tag @s add FactionAvailable
#------------------------------------------#