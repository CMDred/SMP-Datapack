#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players set #ThisBlockTemperature Temp -600
execute if block 29999977 1 29832 minecraft:powder_snow_cauldron[level=3] run scoreboard players set #ThisBlockWeight Temp 33
execute if block 29999977 1 29832 minecraft:powder_snow_cauldron[level=2] run scoreboard players set #ThisBlockWeight Temp 22
execute if block 29999977 1 29832 minecraft:powder_snow_cauldron[level=1] run scoreboard players set #ThisBlockWeight Temp 11
scoreboard players set #BlockFound Temp 1
#------------------------------------------#
