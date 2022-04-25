#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
execute at @e[type=marker,tag=ThisOutcome] run data modify block ~ ~ ~ Items set from storage bcsmp:shops PlayerInv
tag @s remove EnoughOutcomeChecking
data modify storage bcsmp:shops PlayerInv set from storage bcsmp:shops StorePlayerInv
data modify storage bcsmp:shops PriceItem set from storage bcsmp:shops StorePriceItem
function bcsmp:shops/container/buy/get_bought_item
#------------------------------------------#