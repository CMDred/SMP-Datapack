#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------CHECK-------------------#
data modify storage bcsmp:item_name_token TextStorage set from entity @s SelectedItem.tag.pages[0]
setblock 29999977 319 29832 oak_sign
data modify block 29999977 319 29832 Text1 set from storage bcsmp:item_name_token TextStorage
execute store success score #JsonCheck Temp if data block 29999977 319 29832 {Text1:'{"text":""}'}
execute if score #JsonCheck Temp matches 1 run function bcsmp:cosmetics/item_name_token/error_no_json
execute if score #JsonCheck Temp matches 0 store success score #OffhandCheck Temp if data entity @s Inventory[{Slot:-106b}]
execute if score #JsonCheck Temp matches 0 if score #OffhandCheck Temp matches 0 run function bcsmp:cosmetics/item_name_token/error_no_item
execute if score #JsonCheck Temp matches 0 if score #OffhandCheck Temp matches 1 if predicate bcsmp:holding_invalid_item_name_token_item_offhand run function bcsmp:cosmetics/item_name_token/error_invalid_item
execute if score #JsonCheck Temp matches 0 if score #OffhandCheck Temp matches 1 unless predicate bcsmp:holding_invalid_item_name_token_item_offhand run function bcsmp:cosmetics/item_name_token/change_item_name
setblock 29999977 319 29832 air
#------------------------------------------#
