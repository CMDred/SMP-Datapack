#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DETECT ITEM----------------#
scoreboard players reset #ItemFound Temp
execute if predicate bcsmp:temperature/holding_mainhand/blaze_powder run function bcsmp:temperature/holding_item/item/blaze_powder
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/blaze_rod run function bcsmp:temperature/holding_item/item/blaze_rod
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/blue_ice run function bcsmp:temperature/holding_item/item/blue_ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/campfire run function bcsmp:temperature/holding_item/item/campfire
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/fire_aspect_1 run function bcsmp:temperature/holding_item/item/fire_aspect_1
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/fire_aspect_2 run function bcsmp:temperature/holding_item/item/fire_aspect_2
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/fire_charge run function bcsmp:temperature/holding_item/item/fire_charge
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/glowstone run function bcsmp:temperature/holding_item/item/glowstone
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/ice run function bcsmp:temperature/holding_item/item/ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/lantern run function bcsmp:temperature/holding_item/item/lantern
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:brewing/holding_lava_bottle_mainhand run function bcsmp:temperature/holding_item/item/lava_bottle
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/lava_bucket run function bcsmp:temperature/holding_item/item/lava_bucket
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/magma_block run function bcsmp:temperature/holding_item/item/magma_block
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/magma_cream run function bcsmp:temperature/holding_item/item/magma_cream
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/packed_ice run function bcsmp:temperature/holding_item/item/packed_ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:brewing/holding_powder_snow_bottle_mainhand run function bcsmp:temperature/holding_item/item/powder_snow_bottle
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/powder_snow_bucket run function bcsmp:temperature/holding_item/item/powder_snow_bucket
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/shroomlight run function bcsmp:temperature/holding_item/item/shroomlight
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/snow run function bcsmp:temperature/holding_item/item/snow
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/snow_block run function bcsmp:temperature/holding_item/item/snow_block
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/snowball run function bcsmp:temperature/holding_item/item/snowball
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/soul_campfire run function bcsmp:temperature/holding_item/item/soul_campfire
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/soul_lantern run function bcsmp:temperature/holding_item/item/soul_lantern
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/soul_torch run function bcsmp:temperature/holding_item/item/soul_torch
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_mainhand/torch run function bcsmp:temperature/holding_item/item/torch
#------------------------------------------#
