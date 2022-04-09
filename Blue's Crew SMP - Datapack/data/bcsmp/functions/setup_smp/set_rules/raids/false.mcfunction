#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
scoreboard players set #Raids GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Raids are now disabled!","color":"green"}
gamerule disableRaids true
function bcsmp:setup_smp/text
#------------------------------------------#