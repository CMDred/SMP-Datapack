#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------------FACTIONS-----------------#
tellraw @s {"text":"You bought an Invite Token!"}
playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand bcsmp:right_click/consume_item
data modify storage bcsmp:factions Faction set from entity @e[type=villager,tag=InviteManager,distance=..1.5,limit=1] ArmorItems[0].tag.ManagerOf
execute in overworld run setblock 29999977 1 29832 oak_sign{Text1:'[{"nbt":"Faction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"Faction.Name","storage":"bcsmp:factions","interpret":true},{"text":" Invite Token","color":"white"}]'}
execute at @s run summon item ~ ~ ~ {PickupDelay:1,Tags:["InviteToken"],Item:{id:"minecraft:paper",Count:1b,tag:{display:{Lore:['{"text":"Faction Invite Token","color":"gray","italic":false}']},InviteToken:1b,Enchantments:[{}]}}}
execute at @s as @e[type=item,tag=InviteToken,distance=..1] in overworld run data modify entity @s Item.tag.display.Name set from block 29999977 1 29832 Text1
execute as @e[type=item,tag=InviteToken,sort=nearest,limit=1] run data modify entity @s Item.tag.FactionInvite set from storage bcsmp:factions Faction
execute in overworld run setblock 29999977 1 29832 air
#------------------------------------------#
