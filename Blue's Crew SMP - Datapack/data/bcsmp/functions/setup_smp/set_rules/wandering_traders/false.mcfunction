##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #WanderingTraders GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Wandering Traders are now disabled!","color":"green"}
gamerule doTraderSpawning false
function bcsmp:setup_smp/text
#------------------------------------------#