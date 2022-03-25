#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players set #Reach Temp 0
execute store result score #LeaderUUID0 Temp run data get entity @e[tag=InviteManager,distance=..1.5,limit=1] ArmorItems[0].tag.ManagerOf.Leader[0]
execute store result score #LeaderUUID1 Temp run data get entity @e[tag=InviteManager,distance=..1.5,limit=1] ArmorItems[0].tag.ManagerOf.Leader[1]
execute store result score #ThisUUID0 Temp run data get entity @s UUID[0]
execute store result score #ThisUUID1 Temp run data get entity @s UUID[1]
execute if score #LeaderUUID0 Temp = #ThisUUID0 Temp if score #LeaderUUID1 Temp = #ThisUUID1 Temp run function bcsmp:factions/buy_token/success
execute unless score #LeaderUUID0 Temp = #ThisUUID0 Temp run function bcsmp:factions/buy_token/error1
#------------------------------------------#