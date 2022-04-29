#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------INIT-------------------#
tag @s add Converted
effect give @s resistance 999999 5 true
data modify entity @s Invulnerable set value 1b
data modify entity @s VillagerData.profession set value "minecraft:cartographer"
data modify entity @s Offers.Recipes set value [{rewardExp:0b,maxUses:1,buy:{id:"minecraft:emerald_block",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{FactionPaper:1b,display:{Name:'{"text":"Enter Faction Name...","color":"white","italic":false}'}}}}]
execute if predicate bcsmp:factions/villager_type/plains run data modify entity @s VillagerData.type set value "minecraft:plains"
execute if predicate bcsmp:factions/villager_type/savanna run data modify entity @s VillagerData.type set value "minecraft:savanna"
execute if predicate bcsmp:factions/villager_type/snow run data modify entity @s VillagerData.type set value "minecraft:snow"
execute if predicate bcsmp:factions/villager_type/swamp run data modify entity @s VillagerData.type set value "minecraft:swamp"
execute if predicate bcsmp:factions/villager_type/taiga run data modify entity @s VillagerData.type set value "minecraft:taiga"
execute if predicate bcsmp:factions/villager_type/desert run data modify entity @s VillagerData.type set value "minecraft:desert"
execute if predicate bcsmp:factions/villager_type/jungle run data modify entity @s VillagerData.type set value "minecraft:jungle"
data modify entity @s CustomName set value '{"text":"Faction Outpost Manager","color":"red"}'
data modify entity @s VillagerData.level set value 99
#------------------------------------------#

