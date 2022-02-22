##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#------------CHECK SLOT CHANGE-------------#
data modify storage bcsmp:inventory Inventory set from entity @s Inventory
scoreboard players set #SlotHasChanged Temp 0
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:0b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_0
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:1b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_1
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:2b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_2
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:3b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_3
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:4b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_4
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:5b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_5
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:6b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_6
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:7b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_7
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:8b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/hotbar_8
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:9b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_0
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:10b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_1
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:11b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_2
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:12b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_3
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:13b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_4
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:14b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_5
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:15b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_6
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:16b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_7
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:17b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_8
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:18b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_9
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:19b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_10
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:20b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_11
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:21b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_12
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:22b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_13
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:23b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_14
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:24b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_15
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:25b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_16
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:26b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_17
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:27b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_18
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:28b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_19
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:29b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_20
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:30b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_21
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:31b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_22
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:32b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_23
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:33b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_24
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:34b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_25
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:35b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_26
execute if score #SlotHasChanged Temp matches 0 if data storage bcsmp:inventory Inventory[{Slot:-106b,tag:{RightClickItem:1b}}] run function bcsmp:right_click/turn_wfoas_back/inventory_-106

advancement revoke @s only bcsmp:right_click/change_wfoas_back
#------------------------------------------#

