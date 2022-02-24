##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #WanderingTraders GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Wandering Traders are now enabled!","color":"green"}
gamerule doTraderSpawning true
function bcsmp:setup_smp/text
#------------------------------------------#