schedule function ssf:main_20t 20t

### shader handler
scoreboard objectives add ssf.green dummy
scoreboard objectives add ssf.blue dummy

scoreboard players add @a ssf.green 0
scoreboard players set @a ssf.blue 0

scoreboard objectives add battery dummy
scoreboard players set @a battery 100
scoreboard players set #20 battery 20

### game logic
scoreboard objectives add wfoas minecraft.used:minecraft.warped_fungus_on_a_stick