#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #AmountOfIterations Temp 1
data modify storage bcsmp:factions CheckName set from storage bcsmp:factions Factions[0].Name
execute store success score #IsDifferent Temp run data modify storage bcsmp:factions CheckName set from storage bcsmp:factions NameLookingFor
execute if score #IsDifferent Temp matches 1 run data modify storage bcsmp:factions Factions append from storage bcsmp:factions Factions[0] 
execute if score #IsDifferent Temp matches 1 run data remove storage bcsmp:factions Factions[0]
execute if score #IsDifferent Temp matches 0 run function bcsmp:factions/join_faction/found_faction
execute unless score #IsDifferent Temp matches 0 if score #AmountOfIterations Temp matches 1.. run function bcsmp:factions/join_faction/cycle
#------------------------------------------#