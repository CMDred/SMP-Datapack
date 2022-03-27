##
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
##
#-------------------INIT-------------------#
scoreboard players set #MobGriefing GameRules 1
playsound ui.button.click master @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Mobs will now harm the world (Explosions, Endermen picking up blocks...)","color":"green"}
gamerule mobGriefing true
function bcsmp:setup_smp/text
#------------------------------------------#