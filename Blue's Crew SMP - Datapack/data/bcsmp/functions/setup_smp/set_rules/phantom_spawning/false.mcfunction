##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #PhantomSpawning GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Phantom spawning is now disabled!","color":"green"}
gamerule doInsomnia true
function bcsmp:setup_smp/text
#------------------------------------------#