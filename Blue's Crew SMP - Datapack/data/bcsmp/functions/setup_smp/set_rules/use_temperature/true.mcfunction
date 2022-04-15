##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #UseTemperature GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Temperature is now enabled!","color":"green"}
schedule function bcsmp:temperature/main_10t 10t
function bcsmp:setup_smp/text
#------------------------------------------#
