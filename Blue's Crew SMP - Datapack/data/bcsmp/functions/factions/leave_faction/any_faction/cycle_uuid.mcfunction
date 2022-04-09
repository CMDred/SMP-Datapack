#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players set #IsDifferent Temp 1
execute store result score #ThisUUID0 Temp run data get storage bcsmp:factions Factions[0].Players[0][0]
execute store result score #ThisUUID1 Temp run data get storage bcsmp:factions Factions[0].Players[0][1]
execute if score #ThisUUID0 Temp = #UUID0 Temp if score #ThisUUID1 Temp = #UUID1 Temp run scoreboard players set #IsDifferent Temp 0
execute if score #IsDifferent Temp matches 1 run data modify storage bcsmp:factions Factions[0].Players append from storage bcsmp:factions Factions[0].Players[0]
execute if score #IsDifferent Temp matches 1 run data remove storage bcsmp:factions Factions[0].Players[0]
execute if score #IsDifferent Temp matches 0 run tag @s add Found 
execute if score #IsDifferent Temp matches 1 run function bcsmp:factions/leave_faction/any_faction/cycle_uuid
#------------------------------------------#