##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #Raids GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Raids are now enabled!","color":"green"}
gamerule disableRaids false
function bcsmp:setup_smp/text
#------------------------------------------#