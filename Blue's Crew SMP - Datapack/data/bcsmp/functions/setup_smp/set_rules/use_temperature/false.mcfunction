##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #UseTemperature GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Temperature is now disabled!","color":"green"}
schedule clear bcsmp:temperature/main_10t
schedule clear bcsmp:temperature/main_1s
function bcsmp:setup_smp/text
#------------------------------------------#