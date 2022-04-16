#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# Stop Cycling
#tellraw @s {"text":"Needed count has been reached!"}
scoreboard players set #AmountOfIterations Temp -1
# Find amount that needs to be removed from the slot
scoreboard players operation #NewCount Temp = #FoundCount Temp
scoreboard players operation #NewCount Temp -= #NeededCount Temp

execute store result storage bcsmp:shops PlayerInv[0].Count byte 1 run scoreboard players get #NewCount Temp
#tellraw @s [{"text":"   New Count in that slot: "},{"nbt":"PlayerInv[0].Count","storage":"bcsmp:shops","color":"light_purple"}]
#------------------------------------------#