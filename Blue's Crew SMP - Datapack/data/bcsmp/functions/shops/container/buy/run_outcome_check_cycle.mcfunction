#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------SHOPS-------------------#
data modify storage bcsmp:shops StorePlayerInv set from storage bcsmp:shops PlayerInv
data modify storage bcsmp:shops StorePriceItem set from storage bcsmp:shops PriceItem
execute at @e[tag=ThisOutcome] run data modify storage bcsmp:shops PlayerInv set from block ~ ~ ~ Items
execute at @e[tag=ThisOutcome] run data modify storage bcsmp:shops PriceItem set from storage bcsmp:shops SoldItem
tag @s add EnoughOutcomeChecking
function bcsmp:shops/container/buy/start_cycle
#------------------------------------------#