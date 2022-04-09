#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
data remove entity @s HandItems[0]
scoreboard players set #Reach Temp 40
function bcsmp:advancements/you_broke/find_player_raycast
advancement grant @a[tag=ThisPlayer] only bcsmp:custom_advancements/you_broke
#------------------------------------------#

