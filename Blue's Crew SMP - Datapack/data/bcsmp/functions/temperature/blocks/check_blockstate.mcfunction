#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------BLOCK CHECK----------------#
execute if block ~ ~ ~ minecraft:furnace[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ minecraft:blast_furnace[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ minecraft:smoker[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ #minecraft:candles[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ #minecraft:candle_cakes[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
execute if block ~ ~ ~ #minecraft:campfires[lit=true] run function bcsmp:temperature/blocks/initiate_raycast
#------------------------------------------#
