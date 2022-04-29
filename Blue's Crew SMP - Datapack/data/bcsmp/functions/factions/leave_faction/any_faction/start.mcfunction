#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players operation #Search Temp = @s FactionID
execute as @e[type=villager,tag=FactionOutpostVillager,tag=Converted] if score @s FactionID = #Search Temp run tag @s add ThisVillager
execute unless entity @e[type=villager,tag=ThisVillager] run function bcsmp:factions/leave_faction/any_faction/fail
execute if entity @e[type=villager,tag=ThisVillager] run function bcsmp:factions/leave_faction/any_faction/success
scoreboard players reset @s LeaveFaction
#------------------------------------------#