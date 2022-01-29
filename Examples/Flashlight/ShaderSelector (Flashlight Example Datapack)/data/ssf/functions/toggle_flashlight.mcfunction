scoreboard players add @s ssf.green 1
execute if score @s ssf.green matches 2.. run scoreboard players set @s ssf.green 0
function ssf:shader/load

execute if score @s ssf.green matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.5
execute if score @s ssf.green matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.0