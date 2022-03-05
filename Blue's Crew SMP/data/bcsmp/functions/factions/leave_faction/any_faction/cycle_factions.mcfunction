#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #AmountOfIterations Temp 1
function bcsmp:factions/leave_faction/any_faction/cycle_uuid
execute if entity @s[tag=!Found] run data modify storage bcsmp:factions Factions append from storage bcsmp:factions Factions[0] 
execute if entity @s[tag=!Found] run data remove storage bcsmp:factions Factions[0]
execute if entity @s[tag=Found] run function bcsmp:factions/leave_faction/any_faction/found
execute if entity @s[tag=!Found] if score #AmountOfIterations Temp matches 1.. run function bcsmp:factions/leave_faction/any_faction/cycle_factions
#------------------------------------------#