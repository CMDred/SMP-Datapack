#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--RIGHT CLICKED WITH AXE ON STICKY PISTON-#
#summon slimeball where piston faces
execute if block ~ ~ ~ sticky_piston[facing=down] align xyz run summon item ~0.5 ~-0.5 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,-0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=up] align xyz run summon item ~0.5 ~1.2 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=north] align xyz run summon item ~0.5 ~0.3 ~-0.2 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,-0.1]}
execute if block ~ ~ ~ sticky_piston[facing=south] align xyz run summon item ~0.5 ~0.3 ~1.2 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.0,0.1,0.1]}
execute if block ~ ~ ~ sticky_piston[facing=east] align xyz run summon item ~1.2 ~0.3 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[0.1,0.1,0.0]}
execute if block ~ ~ ~ sticky_piston[facing=west] align xyz run summon item ~-0.2 ~0.3 ~0.5 {Item:{id:"minecraft:slime_ball",Count:1b},PickupDelay:20,Motion:[-0.1,0.1,0.0]}

#particles
execute if block ~ ~ ~ sticky_piston[facing=down] align xyz run particle item_slime ~0.5 ~-0.5 ~0.5 0.2 0.02 0.2 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=up] align xyz run particle item_slime ~0.5 ~1.2 ~0.5 0.2 0.02 0.2 0.01 12 normal

execute if block ~ ~ ~ sticky_piston[facing=north] align xyz run particle item_slime ~0.5 ~0.3 ~-0.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=south] align xyz run particle item_slime ~0.5 ~0.3 ~1.2 0.2 0.2 0.02 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=east] align xyz run particle item_slime ~1.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal
execute if block ~ ~ ~ sticky_piston[facing=west] align xyz run particle item_slime ~-0.2 ~0.3 ~0.5 0.02 0.2 0.2 0.01 12 normal

#replace sticky_piston to piston
execute if block ~ ~ ~ sticky_piston[facing=down] run setblock ~ ~ ~ piston[facing=down]
execute if block ~ ~ ~ sticky_piston[facing=up] run setblock ~ ~ ~ piston[facing=up]
execute if block ~ ~ ~ sticky_piston[facing=north] run setblock ~ ~ ~ piston[facing=north]
execute if block ~ ~ ~ sticky_piston[facing=south] run setblock ~ ~ ~ piston[facing=south]
execute if block ~ ~ ~ sticky_piston[facing=east] run setblock ~ ~ ~ piston[facing=east]
execute if block ~ ~ ~ sticky_piston[facing=west] run setblock ~ ~ ~ piston[facing=west]

#give advancement
advancement grant @s only bcsmp:custom_advancements/slime_off

#play sound
playsound minecraft:item.axe.scrape master @s ~ ~ ~ 1 1.3 1

#take durability
function bcsmp:right_click/actions/consume/take_durability
execute store result score #ItemID Temp run data get entity @s SelectedItem.tag.CustomModelData
execute if score #ItemID Temp matches 9 if score #TakeDurability Temp matches 59 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 10 if score #TakeDurability Temp matches 131 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 11 if score #TakeDurability Temp matches 250 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 12 if score #TakeDurability Temp matches 32 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 13 if score #TakeDurability Temp matches 1561 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 14 if score #TakeDurability Temp matches 2031 run playsound minecraft:item.shield.break player @s ~ ~ ~ 1 1 1
execute if score #ItemID Temp matches 9 if score #TakeDurability Temp matches 59 at @s positioned ~ ~1.2 ~ run particle item minecraft:wooden_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 10 if score #TakeDurability Temp matches 131 at @s positioned ~ ~1.2 ~ run particle item minecraft:stone_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 11 if score #TakeDurability Temp matches 250 at @s positioned ~ ~1.2 ~ run particle item minecraft:iron_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 12 if score #TakeDurability Temp matches 32 at @s positioned ~ ~1.2 ~ run particle item minecraft:golden_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 13 if score #TakeDurability Temp matches 1561 at @s positioned ~ ~1.2 ~ run particle item minecraft:diamond_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 14 if score #TakeDurability Temp matches 2031 at @s positioned ~ ~1.2 ~ run particle item minecraft:netherite_axe ^ ^ ^0.3 0.15 0.15 0.15 0 5
execute if score #ItemID Temp matches 9 if score #TakeDurability Temp matches 59 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 10 if score #TakeDurability Temp matches 131 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 11 if score #TakeDurability Temp matches 250 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 12 if score #TakeDurability Temp matches 32 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 13 if score #TakeDurability Temp matches 1561 run item replace entity @s weapon.mainhand with air
execute if score #ItemID Temp matches 14 if score #TakeDurability Temp matches 2031 run item replace entity @s weapon.mainhand with air
#------------------------------------------#
