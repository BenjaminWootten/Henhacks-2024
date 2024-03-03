extends Node2D

@onready var sand=$sand
@onready var stone=$stone
@onready var moss=$moss
@onready var bottle_sprite=$bottle/AnimatedSprite2D
@onready var box=$Control
@onready var label=$Control/MarginContainer/MarginContainer/Label

func _on_moss_area_entered(area):
	if bottle_sprite.frame == 0:
		moss.visible = false
		bottle_sprite.frame = 1

func _on_sand_area_entered(area):
	if bottle_sprite.frame == 1:
		sand.visible = false
		bottle_sprite.frame = 2

func _on_stone_area_entered(area):
	if bottle_sprite.frame == 2:
		stone.visible = false
		bottle_sprite.frame = 3


func _on_stone_mouse_entered():
	print(box)
	box.visible=true
	label.text="stones"


func _on_stone_mouse_exited():
	box.visible=false
