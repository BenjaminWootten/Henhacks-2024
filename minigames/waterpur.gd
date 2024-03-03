extends Node2D

@onready var bottle=$bottle
@onready var sand=$sand
@onready var stone=$stone
@onready var moss=$moss
@onready var bottles=$bottle/AnimatedSprite2D

var grabottle=false
var grabmoss=false
var grabstone=false
var grabsand=false

func _process(delta):
	if grabottle==true:
		bottle.position=get_local_mouse_position()
	if grabmoss==true:
		moss.position=get_local_mouse_position()
	if grabsand==true:
		sand.position=get_local_mouse_position()
	if grabstone==true:
		stone.position=get_local_mouse_position()

func _on_bottle_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabottle==true:
			grabottle=false
		else:
			grabottle=true

func _on_moss_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabmoss==true:
			grabmoss=false
		else:
			grabmoss=true

func _on_stone_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabstone==true:
			grabstone=false
		else:
			grabstone=true

func _on_sand_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabsand==true:
			grabsand=false
		else:
			grabsand=true

func _on_moss_area_entered(area):
	if bottles.frame==0:
		moss.visible=false
		bottles.frame=1

func _on_sand_area_entered(area):
	if bottles.frame==1:
		sand.visible=false
		bottles.frame=2.

func _on_stone_area_entered(area):
	if bottles.frame==2:
		stone.visible=false
		bottles.frame=3
