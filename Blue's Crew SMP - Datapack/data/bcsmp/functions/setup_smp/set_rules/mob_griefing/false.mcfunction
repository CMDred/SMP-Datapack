##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #MobGriefing GameRules 0
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Mobs will no longer harm the world (Explosions, Endermen picking up blocks...)","color":"green"}
gamerule mobGriefing false
function bcsmp:setup_smp/text
#------------------------------------------#