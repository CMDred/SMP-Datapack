#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
#tellraw @s {"text":"ID matched! Checking NBT"}
execute if data storage bcsmp:shops PriceItem{tag:{}} run data remove storage bcsmp:shops PriceItem.tag
data modify storage bcsmp:shops ThisNBT set from storage bcsmp:shops ThisItem.tag
execute store success score #IsDifferent Temp run data modify storage bcsmp:shops ThisNBT set from storage bcsmp:shops PriceItem.tag
execute if score #IsDifferent Temp matches 0 run function bcsmp:shops/container/buy/tag_match
#------------------------------------------#