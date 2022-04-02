#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------DRAGON FIGHT---------------#
bossbar set bcsmp:totem_health color red
scoreboard players set #HasChanged Temp 1
particle block red_concrete ~ ~ ~ 3 3 3 0.01 300 force
playsound block.beacon.activate hostile @a ~ ~ ~ 10 1 1
team join ProtectiveTotem_Melee
scoreboard players set #CurrentType Temp 1
data modify entity @e[tag=ProtectiveTotem_Visual,limit=1] HandItems[0] set value {id:"minecraft:iron_sword",Count:1b}
#------------------------------------------#