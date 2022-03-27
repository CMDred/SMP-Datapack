##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #ImmediateRespawn GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Players will now respawn instantly!","color":"green"}
gamerule doImmediateRespawn true
function bcsmp:setup_smp/text
#------------------------------------------#