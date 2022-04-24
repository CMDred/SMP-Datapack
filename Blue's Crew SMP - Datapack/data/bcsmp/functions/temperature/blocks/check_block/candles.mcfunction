#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players set #ThisBlockTemperature Temp 5000
execute if block 29999977 1 29832 #minecraft:candles[candles=4] run scoreboard players set #ThisBlockWeight Temp 16
execute if block 29999977 1 29832 #minecraft:candles[candles=3] run scoreboard players set #ThisBlockWeight Temp 12
execute if block 29999977 1 29832 #minecraft:candles[candles=2] run scoreboard players set #ThisBlockWeight Temp 8
execute if block 29999977 1 29832 #minecraft:candles[candles=1] run scoreboard players set #ThisBlockWeight Temp 4
scoreboard players set #BlockFound Temp 1
#------------------------------------------#
