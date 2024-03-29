extends Node2D

@onready var sand=$sand
@onready var stone=$stone
@onready var moss=$moss
@onready var coal=$coal
@onready var coarse=$coarse
@onready var bottle_sprite=$bottle/AnimatedSprite2D
@onready var box=$Control
@onready var label=$Control/MarginContainer/MarginContainer/Label
@onready var tip=$PanelContainer/HBoxContainer/Label
@onready var global = get_node("/root/Global")

func _ready():
	tip.text="Water purifiers work by filtering out the largest particles first."

func _on_moss_area_entered(area):
	if bottle_sprite.frame == 0:
		moss.visible = false
		bottle_sprite.frame = 1

func _on_sand_area_entered(area):
	if bottle_sprite.frame == 1:
		sand.visible = false
		bottle_sprite.frame = 2

func _on_coal_area_entered(area):
	if bottle_sprite.frame == 2:
		coal.visible = false
		bottle_sprite.frame = 3

func _on_coarse_area_entered(area):
	if bottle_sprite.frame == 3:
		coarse.visible = false
		bottle_sprite.frame = 4

func _on_stone_area_entered(area):
	if bottle_sprite.frame == 0:
		tip.text="Start with something smaller."
	if bottle_sprite.frame == 4:
		stone.visible = false
		bottle_sprite.frame = 5
		bottle_completed()

func bottle_completed():
	$Button.visible=true
	global.water_completed=true

func _on_button_pressed():
	bottle_sprite.frame =6
	$Button/Timer.start()
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://assets/UI/LevelSelect.tscn")
func _on_stone_mouse_entered():
	tip.text="Stones are good for filtering out the largest particles."
	box.visible=true
	label.text="stones"
func _on_stone_mouse_exited():
	box.visible=false
	tip.text="Water purifiers work by filtering out the largest particles first."
func _on_moss_mouse_entered():
	tip.text="Cloth works well to remove the last of the solid particles."
	box.visible=true
	label.text="cloth"
func _on_moss_mouse_exited():
	box.visible=false
	tip.text="Water purifiers work by filtering out the largest particles first."
func _on_sand_mouse_entered():
	tip.text="Fine sand filters out and absorbs very small particles."
	box.visible=true
	label.text="fine sand"
func _on_sand_mouse_exited():
	box.visible=false
	tip.text="Water purifiers work by filtering out the largest particles first."
func _on_coal_mouse_entered():
	tip.text="Activated charcoal is able to remove organic chemicals from dirty water."
	box.visible=true
	label.text="charcoal"
func _on_coal_mouse_exited():
	box.visible=false
	tip.text="Water purifiers work by filtering out the largest particles first."
func _on_coarse_mouse_entered():
	box.visible=true
	tip.text="Coarse sand can filter out large suspended particles in the water."
	label.text="coarse sand"
func _on_coarse_mouse_exited():
	box.visible=false
	tip.text="Water purifiers work by filtering out the largest particles first."




