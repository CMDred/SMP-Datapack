#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----CHECK IF SELECTEDITEM IS IN TAG------#
kill @e[tag=HoldChecker]
tag @s add Checked
summon armor_stand 29999977 1 29832 {Tags:["HoldChecker"],Invisible:1b,Marker:1b}
execute as @e[tag=HoldChecker] run data modify entity @s HandItems[0] set from entity @s SelectedItem
execute as @e[tag=HoldChecker] at @s run loot spawn ~ ~ ~ fish bcsmp:check_rightclick_item ~ ~ ~ mainhand
execute as @e[tag=HoldChecker] at @s if entity @e[type=item,nbt={Item:{tag:{Checker:1b}}},distance=..1.5] run tag @a[tag=Checked] add IsHoldingRCItem
tag @s remove Checked
#------------------------------------------#

