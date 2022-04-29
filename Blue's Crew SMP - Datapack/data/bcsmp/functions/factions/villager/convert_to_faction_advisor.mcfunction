#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
tag @s add FactionCreated

summon villager ~ ~ ~1 {NoAI:1b,Tags:["FactionOutpostVillager","InviteManager"],Invulnerable:1b}

summon villager ~1 ~ ~ {NoAI:1b,Tags:["FactionOutpostVillager","ShopManager"],Invulnerable:1b,VillagerData:{profession:"cleric",level:99}}

execute store result score @s FactionID run scoreboard players add #Global FactionID 1
scoreboard players operation @e[type=villager,distance=..3,tag=!Converted] FactionID = @s FactionID
scoreboard players operation @e[type=marker,tag=FactionCenter,sort=nearest,limit=1] FactionID = @s FactionID

# set player's faction id
scoreboard players operation @a[tag=Thrower] FactionID = @s FactionID

effect give @e[type=villager,tag=InviteManager,sort=nearest,limit=1] resistance 999999 5 true
effect give @e[type=villager,tag=ShopManager,sort=nearest,limit=1] resistance 999999 5 true

data modify entity @e[type=villager,tag=InviteManager,sort=nearest,limit=1] ArmorItems[0] set value {id:"minecraft:scute",Count:1b}
data modify entity @e[type=villager,tag=InviteManager,sort=nearest,limit=1] ArmorItems[0].tag.ManagerOf set from storage bcsmp:factions FactionToCreate

execute in overworld run setblock 29999977 1 29832 oak_sign{Text1:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":"\'s banner","color":"white"}]',Text2:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":" advisor","color":"white"}]',Text3:'[{"nbt":"NewFaction.Color","storage":"bcsmp:factions","interpret":true,"italic":false},{"nbt":"NewFaction.Name","storage":"bcsmp:factions","interpret":true},{"text":" invite manager","color":"white"}]'}

data modify entity @s Offers.Recipes set value [{rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:white_banner",Count:1b}},{rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveAdvisor"]},MoveEgg:1b,display:{Name:'{"text":"Advisor Move Egg","color":"white","italic":false}'}}}},                      {rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveInviteManager"]},MoveEgg:1b,display:{Name:'{"text":"Invite Manager Move Egg","color":"white","italic":false}'}}}},          {rewardExp:0b,maxUses:99999,buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:villager_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:marker",Tags:["MoveShopManager"]},MoveEgg:1b,display:{Name:'{"text":"Shop Manager Move Egg","color":"white","italic":false}'}}}}]
execute store result entity @s Offers.Recipes[1].sell.tag.MoveID int 1 run scoreboard players get @s FactionID
execute store result entity @s Offers.Recipes[2].sell.tag.MoveID int 1 run scoreboard players get @s FactionID
execute store result entity @s Offers.Recipes[3].sell.tag.MoveID int 1 run scoreboard players get @s FactionID

execute in overworld run data modify entity @s Offers.Recipes[0].sell.tag.display.Name set from block 29999977 1 29832 Text1
data modify entity @s Offers.Recipes[0].sell set from storage bcsmp:factions NewFaction.Banner
data modify entity @s Offers.Recipes[0].sell.tag.display.Name set from block 29999977 1 29832 Text1
data modify entity @s Offers.Recipes[0].sell.Count set value 1b

execute in overworld run data modify entity @s CustomName set from block 29999977 1 29832 Text2
execute in overworld run data modify entity @e[type=villager,tag=InviteManager,sort=nearest,limit=1] CustomName set from block 29999977 1 29832 Text3

execute in overworld run setblock 29999977 1 29832 air


tag @e[type=villager,tag=InviteManager,tag=!Converted] add Converted
execute as @e[type=villager,tag=ShopManager,tag=!Converted] run function bcsmp:factions/villager/shop_manager
#------------------------------------------#
