#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players remove #AmountOfIterations Temp 1
execute store result score #AmountOfUUIDInterations Temp run data get storage bcsmp:factions Factions[0].Players
function bcsmp:factions/check_if_in/any_faction/cycle_uuid
execute if entity @s[tag=!Found] run data modify storage bcsmp:factions Factions append from storage bcsmp:factions Factions[0] 
execute if entity @s[tag=!Found] run data remove storage bcsmp:factions Factions[0]
execute if entity @s[tag=!Found] if score #AmountOfIterations Temp matches 1.. run function bcsmp:factions/check_if_in/any_faction/cycle_factions
#------------------------------------------#