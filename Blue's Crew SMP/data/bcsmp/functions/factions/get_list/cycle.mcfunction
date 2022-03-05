#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #AmountOfIterations Temp 1

function bcsmp:factions/get_list/tellraw
data modify storage bcsmp:factions Factions append from storage bcsmp:factions Factions[0] 
data remove storage bcsmp:factions Factions[0]

execute if score #AmountOfIterations Temp matches 1.. run function bcsmp:factions/get_list/cycle
#------------------------------------------#