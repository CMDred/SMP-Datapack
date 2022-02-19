#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------EVENT------------------#
function bcsmp:get_held_item_type
execute if entity @s[tag=SpellCasting,tag=!CastSpell] run function spells:casting/input
execute if score @s[tag=!SpellCasting] MainHand matches 2 run function spells:casting/init

scoreboard players reset @s RightClick
#------------------------------------------#