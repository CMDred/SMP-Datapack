#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#------------------RESET-------------------#
scoreboard players operation @s PreviousSlot = $CurrentSlot Temp
#----------------CALC STATS----------------#
function stats:calculate/stats
#---------------UPDATE LORE----------------#
data modify storage bcsmp:loreb Item set from entity @s SelectedItem
function items:edit_lore/start/from_storage
item modify entity @s weapon.mainhand items:apply_back
#-------------------MENU-------------------#
tag @s add WillCheck
schedule clear menu:check_summon
schedule function menu:check_summon 2t
execute if score @s MainHand matches 1 unless entity @s[tag=Menu] at @s run function menu:summon_menu
execute if score @s MenuSpawnDelay matches 1.. at @s run function menu:menu_spawn_delay
execute unless score @s MainHand matches 1 if entity @s[tag=Menu] at @s run function menu:remove_menu
#-------------CANDESTROY TAGS--------------#
execute if entity @s[nbt={SelectedItem:{tag:{bcsmp:{Type:"Pickaxe"}}}}] run item modify entity @s weapon.mainhand bcsmp:remove_candestroy
execute if entity @s[nbt={SelectedItem:{tag:{bcsmp:{Type:"Axe"}}}}] run item modify entity @s weapon.mainhand bcsmp:remove_candestroy
# The Mines
execute if entity @s[nbt={Dimension:"bcsmp:mines",SelectedItem:{tag:{bcsmp:{Type:"Pickaxe"}}}}] run item modify entity @s weapon.mainhand mining:add_candestroy
# Forests
# execute if entity @s[SelectedItem:{tag:{bcsmp:{Type:"Axe"}}}}] run item modify entity @s weapon.mainhand foraging:add_candestroy
#--------------MINING SPEEDS---------------#
data remove storage bcsmp:item Item
data modify storage bcsmp:item Item set from entity @s SelectedItem
effect clear @s haste
execute store result score $MiningSpeed Temp run data get storage bcsmp:item Item.tag.bcsmp.MiningSpeed
execute if score $MiningSpeed Temp matches 1 run effect give @s haste 99999 0 true
execute if score $MiningSpeed Temp matches 2 run effect give @s haste 99999 1 true
execute if score $MiningSpeed Temp matches 3 run effect give @s haste 99999 2 true
execute if score $MiningSpeed Temp matches 4 run effect give @s haste 99999 3 true
execute if score $MiningSpeed Temp matches 5 run effect give @s haste 99999 4 true
execute if score $MiningSpeed Temp matches 6 run effect give @s haste 99999 5 true
execute if score $MiningSpeed Temp matches 7 run effect give @s haste 99999 6 true
#-------------SPELL RECORDING--------------#
clear @s warped_fungus_on_a_stick{SpellRecorder:1b}
tag @s remove RecordingSpell
#------------------------------------------#