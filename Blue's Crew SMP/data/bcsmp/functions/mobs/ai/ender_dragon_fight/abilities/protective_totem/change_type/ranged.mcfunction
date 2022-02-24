#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
bossbar set bcsmp:totem_health color blue
scoreboard players set #HasChanged Temp 1
particle block light_blue_concrete ~ ~ ~ 3 3 3 0.01 300 force
playsound block.beacon.activate hostile @a ~ ~ ~ 10 1 1
team join ProtectiveTotem_Ranged
scoreboard players set #CurrentType Temp 2
#------------------------------------------#