##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #ImmediateRespawn GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Players will no longer respawn instantly!","color":"green"}
gamerule doImmediateRespawn false
function bcsmp:setup_smp/text
#------------------------------------------#