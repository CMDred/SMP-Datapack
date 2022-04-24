##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #ShopPriceIncrease GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Prices in shops will now be 20% higher for people who are not in the same faction as the vendor!","color":"green"}
function bcsmp:setup_smp/text
#------------------------------------------#