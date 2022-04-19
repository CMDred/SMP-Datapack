#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------TEMPERATURE----------------#
scoreboard players set #BlockFound Temp 0
execute if block 29999977 1 29832 minecraft:torch run function bcsmp:temperature/blocks/check_block/torch
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:soul_torch run function bcsmp:temperature/blocks/check_block/soul_torch
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:glowstone run function bcsmp:temperature/blocks/check_block/glowstone
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:lava run function bcsmp:temperature/blocks/check_block/lava
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:powder_snow run function bcsmp:temperature/blocks/check_block/powder_snow
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:snow run function bcsmp:temperature/blocks/check_block/snow
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:snow_block run function bcsmp:temperature/blocks/check_block/snow_block
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:lantern run function bcsmp:temperature/blocks/check_block/lantern
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:soul_lantern run function bcsmp:temperature/blocks/check_block/soul_lantern
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:campfire run function bcsmp:temperature/blocks/check_block/campfire
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:soul_campfire run function bcsmp:temperature/blocks/check_block/soul_campfire
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:shroomlight run function bcsmp:temperature/blocks/check_block/shroomlight
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:magma_block run function bcsmp:temperature/blocks/check_block/magma_block
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:ice run function bcsmp:temperature/blocks/check_block/ice
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:packed_ice run function bcsmp:temperature/blocks/check_block/packed_ice
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:blue_ice run function bcsmp:temperature/blocks/check_block/blue_ice
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:jack_o_lantern run function bcsmp:temperature/blocks/check_block/jack_o_lantern
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:lava_cauldron run function bcsmp:temperature/blocks/check_block/lava_cauldron
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:powder_snow_cauldron run function bcsmp:temperature/blocks/check_block/powder_snow_cauldron
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:fire run function bcsmp:temperature/blocks/check_block/fire
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:furnace run function bcsmp:temperature/blocks/check_block/furnace
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:blast_furnace run function bcsmp:temperature/blocks/check_block/blast_furnace
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 minecraft:smoker run function bcsmp:temperature/blocks/check_block/smoker
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 #minecraft:candles run function bcsmp:temperature/blocks/check_block/candles
execute if score #BlockFound Temp matches 0 if block 29999977 1 29832 #minecraft:candle_cakes run function bcsmp:temperature/blocks/check_block/candle_cakes

scoreboard players operation #ThisBlockWeight Temp *= #Reach Temp
scoreboard players operation #BlockWeight Temp += #ThisBlockWeight Temp
scoreboard players operation #ThisBlockTemperature Temp *= #ThisBlockWeight Temp
scoreboard players operation #BlockTemperature Temp += #ThisBlockTemperature Temp
scoreboard players set #Reach Temp 0
#------------------------------------------#
