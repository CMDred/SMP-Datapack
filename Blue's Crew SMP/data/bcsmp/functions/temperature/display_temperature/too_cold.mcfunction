#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DISPLAY TEMPERATURE------------#
execute if score @s TooCold matches ..999 run title @s actionbar ["",{"text":"❄ ","color":"white"},{"text":"-","color":"#9EFDFF"},{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"},"color":"#9EFDFF"},{"text":".","color":"#9EFDFF"},{"score":{"name":"#AfterComma","objective":"DisplayTemperature"},"color":"#9EFDFF"},{"text":"°","color":"#9EFDFF"}]
execute if score @s TooCold matches 1000.. run title @s actionbar ["",{"text":"❄ ","color":"white"},{"text":"-","color":"#58DEF9"},{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"},"color":"#58DEF9"},{"text":".","color":"#58DEF9"},{"score":{"name":"#AfterComma","objective":"DisplayTemperature"},"color":"#58DEF9"},{"text":"°","color":"#58DEF9"}]

execute unless entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/enter_extreme_temperature
#------------------------------------------#
