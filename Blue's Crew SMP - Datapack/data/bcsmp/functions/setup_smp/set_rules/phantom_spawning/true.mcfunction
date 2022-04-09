##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #PhantomSpawning GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Phantom spawning is now enabled!","color":"green"}
gamerule doInsomnia false
function bcsmp:setup_smp/text
#------------------------------------------#