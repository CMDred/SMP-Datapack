#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--RIGHT CLICKED WITH hoe ON STICKY PISTON-#
#drop loot
execute if block ~ ~ ~ wheat run loot spawn ~ ~ ~ loot bcsmp:right_click_hoe/wheat
execute if block ~ ~ ~ carrots run loot spawn ~ ~ ~ loot bcsmp:right_click_hoe/carrots
execute if block ~ ~ ~ potatoes run loot spawn ~ ~ ~ loot bcsmp:right_click_hoe/potatoes
execute if block ~ ~ ~ beetroots run loot spawn ~ ~ ~ loot bcsmp:right_click_hoe/beetroots

#replace crops with seeds
execute if block ~ ~ ~ wheat run setblock ~ ~ ~ wheat[age=0]
execute if block ~ ~ ~ carrots run setblock ~ ~ ~ carrots[age=0]
execute if block ~ ~ ~ potatoes run setblock ~ ~ ~ potatoes[age=0]
execute if block ~ ~ ~ beetroots run setblock ~ ~ ~ beetroots[age=0]

#play sound
playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1 1

#take durability
function bcsmp:right_click/actions/consume/take_durability
execute store result score #ItemID Temp run data get entity @s SelectedItem.tag.CustomModelData
execute if score #ItemID Temp matches 2 if score #TakeDurability Temp matches 59 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 3 if score #TakeDurability Temp matches 131 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 4 if score #TakeDurability Temp matches 250 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 5 if score #TakeDurability Temp matches 32 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 6 if score #TakeDurability Temp matches 1561 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 7 if score #TakeDurability Temp matches 2031 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 2 if score #TakeDurability Temp matches 59 at @s positioned ~ ~1.2 ~ run particle item minecraft:wooden_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 3 if score #TakeDurability Temp matches 131 at @s positioned ~ ~1.2 ~ run particle item minecraft:stone_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 4 if score #TakeDurability Temp matches 250 at @s positioned ~ ~1.2 ~ run particle item minecraft:iron_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 5 if score #TakeDurability Temp matches 32 at @s positioned ~ ~1.2 ~ run particle item minecraft:golden_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 6 if score #TakeDurability Temp matches 1561 at @s positioned ~ ~1.2 ~ run particle item minecraft:diamond_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 7 if score #TakeDurability Temp matches 2031 at @s positioned ~ ~1.2 ~ run particle item minecraft:netherite_hoe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 2 if score #TakeDurability Temp matches 59 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 3 if score #TakeDurability Temp matches 131 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 4 if score #TakeDurability Temp matches 250 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 5 if score #TakeDurability Temp matches 32 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 6 if score #TakeDurability Temp matches 1561 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 7 if score #TakeDurability Temp matches 2031 run item replace entity @s weapon.mainhand with air
#------------------------------------------#
