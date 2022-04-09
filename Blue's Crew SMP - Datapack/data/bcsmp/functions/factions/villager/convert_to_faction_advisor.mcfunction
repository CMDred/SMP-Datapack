#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
tag @s add FactionCreated

summon villager ~ ~ ~1 {NoAI:1b,Tags:["FactionOutpostVillager","InviteManager","Converted"],Invulnerable:1b}

effect give @e[tag=InviteManager,sort=nearest,limit=1] resistance 999999 5 true

data modify entity @e[tag=InviteManager,sort=nearest,limit=1] ArmorItems[0] set value {id:"minecraft:scute",Count:1b}
data modify entity @e[tag=InviteManager,sort=nearest,limit=1] ArmorItems[0].tag.ManagerOf set from storage bcsmp:factions FactionToCreate

execute in overworld run setblock 29999977 1 29832 oak_sign{Text1:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":"\'s banner","color":"white"}]',Text2:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":" advisor","color":"white"}]',Text3:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":" invite manager","color":"white"}]'}

data modify entity @s Offers.Recipes set value [                            {rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:white_banner",Count:1b}},                {rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveAdvisor"]},MoveEgg:1b,display:{Name:'{"text":"Advisor Move Egg","color":"white","italic":false}'}}}},                      {rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveManager"]},MoveEgg:1b,display:{Name:'{"text":"Invite Manager Move Egg","color":"white","italic":false}'}}}}]

execute in overworld run data modify entity @s Offers.Recipes[0].sell.tag.display.Name set from block 29999977 1 29832 Text1
data modify entity @s Offers.Recipes[0].sell set from storage bcsmp:factions NewFaction.Banner
data modify entity @s Offers.Recipes[0].sell.tag.display.Name set from block 29999977 1 29832 Text1

execute in overworld run data modify entity @s CustomName set from block 29999977 1 29832 Text2
execute in overworld run data modify entity @e[tag=InviteManager,sort=nearest,limit=1] CustomName set from block 29999977 1 29832 Text3

execute in overworld run setblock 29999977 1 29832 air
#------------------------------------------#

