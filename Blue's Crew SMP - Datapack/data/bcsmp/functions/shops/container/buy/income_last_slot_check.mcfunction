#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
# copy income storage into placeholder storage
setblock 29999977 -64 29832 red_shulker_box
execute at @e[type=marker,tag=ThisIncome] run data modify block 29999977 -64 29832 Items set from block ~ ~ ~ Items

# put bought item into shulker box
setblock 29999977 -63 29832 yellow_shulker_box{Items:[{Slot:0b,id:"minecraft:wheat_seeds",Count:1b}]}
data remove storage bcsmp:shops PriceItem.Slot
data modify block 29999977 -63 29832 Items[{Slot:0b}] set from storage bcsmp:shops PriceItem

# store red shulker box data
data modify storage bcsmp:shops StoreItems set from block 29999977 -64 29832 Items

# try to insert in the red shulker box from the yellow one
loot insert 29999977 -64 29832 mine 29999977 -63 29832 air{drop_contents:true}

# if the data has changed, that means the income storage is able to handle the arriving item
execute store success score #IsDifferent Temp run data modify storage bcsmp:shops StoreItems set from block 29999977 -64 29832 Items
# can't handle the arriving item
execute if score #IsDifferent Temp matches 0 run function bcsmp:shops/container/buy/error2
# loot insert has successfuly changed the container : the income storage CAN handle the arriving item
execute if score #IsDifferent Temp matches 1 run function bcsmp:shops/container/buy/check_if_enough_outcome
#------------------------------------------#