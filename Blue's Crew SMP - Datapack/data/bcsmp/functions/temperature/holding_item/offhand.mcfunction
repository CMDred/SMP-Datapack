#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DETECT ITEM----------------#
scoreboard players reset #ItemFound Temp
execute if predicate bcsmp:temperature/holding_offhand/blaze_powder run function bcsmp:temperature/holding_item/item/blaze_powder
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/blaze_rod run function bcsmp:temperature/holding_item/item/blaze_rod
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/blue_ice run function bcsmp:temperature/holding_item/item/blue_ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/campfire run function bcsmp:temperature/holding_item/item/campfire
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/fire_aspect_1 run function bcsmp:temperature/holding_item/item/fire_aspect_1
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/fire_aspect_2 run function bcsmp:temperature/holding_item/item/fire_aspect_2
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/fire_charge run function bcsmp:temperature/holding_item/item/fire_charge
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/glowstone run function bcsmp:temperature/holding_item/item/glowstone
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/ice run function bcsmp:temperature/holding_item/item/ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/lantern run function bcsmp:temperature/holding_item/item/lantern
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:brewing/holding_lava_bottle_offhand run function bcsmp:temperature/holding_item/item/lava_bottle
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/lava_bucket run function bcsmp:temperature/holding_item/item/lava_bucket
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/magma_block run function bcsmp:temperature/holding_item/item/magma_block
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/magma_cream run function bcsmp:temperature/holding_item/item/magma_cream
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/packed_ice run function bcsmp:temperature/holding_item/item/packed_ice
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:brewing/holding_powder_snow_bottle_offhand run function bcsmp:temperature/holding_item/item/powder_snow_bottle
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/powder_snow_bucket run function bcsmp:temperature/holding_item/item/powder_snow_bucket
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/shroomlight run function bcsmp:temperature/holding_item/item/shroomlight
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/snow run function bcsmp:temperature/holding_item/item/snow
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/snow_block run function bcsmp:temperature/holding_item/item/snow_block
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/snowball run function bcsmp:temperature/holding_item/item/snowball
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/soul_campfire run function bcsmp:temperature/holding_item/item/soul_campfire
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/soul_lantern run function bcsmp:temperature/holding_item/item/soul_lantern
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/soul_torch run function bcsmp:temperature/holding_item/item/soul_torch
execute unless score #ItemFound Temp matches 1 if predicate bcsmp:temperature/holding_offhand/torch run function bcsmp:temperature/holding_item/item/torch
#------------------------------------------#
