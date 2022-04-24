##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #BlocksAffectTemperature GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Surrounding blocks now affect temperature!","color":"green"}
function bcsmp:setup_smp/text
#------------------------------------------#
