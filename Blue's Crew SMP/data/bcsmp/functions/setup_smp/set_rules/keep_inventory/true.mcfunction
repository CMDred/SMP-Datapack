##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #KeepInventory GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Players will no longer lose items when dying!","color":"green"}
gamerule keepInventory true
function bcsmp:setup_smp/text
#------------------------------------------#