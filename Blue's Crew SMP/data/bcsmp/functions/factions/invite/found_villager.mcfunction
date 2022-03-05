#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
scoreboard players set #Reach Temp 0
data modify storage bcsmp:factions CheckName set from entity @e[tag=InviteManager,distance=..1.5,limit=1] ArmorItems[0].tag.ManagerOf.Name
data modify storage bcsmp:factions CheckName2 set from entity @s SelectedItem.tag.FactionInvite.Name
execute store success score #IsDifferent Temp run data modify storage bcsmp:factions CheckName set from storage bcsmp:factions CheckName2
execute if score #IsDifferent Temp matches 0 run function bcsmp:factions/invite/right_manager
execute if score #IsDifferent Temp matches 1 run function bcsmp:factions/invite/error2
#------------------------------------------#