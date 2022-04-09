#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-----------DISPLAY TEMPERATURE------------#
execute if score @s DisplayTemperature matches -9.. run title @s actionbar [{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"}},".",{"score":{"name":"#AfterComma","objective":"DisplayTemperature"}},"°"]
execute if score @s DisplayTemperature matches ..-10 run title @s actionbar ["-",{"score":{"name":"#BeforeComma","objective":"DisplayTemperature"}},".",{"score":{"name":"#AfterComma","objective":"DisplayTemperature"}},"°"]

execute if entity @s[tag=ExtremeTemperature] run function bcsmp:temperature/deal_damage/exit_extreme_temperature
#------------------------------------------#
