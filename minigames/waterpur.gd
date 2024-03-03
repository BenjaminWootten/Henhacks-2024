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
# Called when the node enters the scene tree for the first time.
func _process(delta):
	if grabottle==true:
		bottle.position=get_local_mouse_position()
	if grabmoss==true:
		moss.position=get_local_mouse_position()
	if grabsand==true:
		moss.position=get_local_mouse_position()
	if grabstone==true:
		moss.position=get_local_mouse_position()
	pass



func _on_bottle_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabottle==true:
			grabottle=false
		else:
			grabottle=true
	
	 # Replace with function body.


func _on_moss_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabmoss==true:
			grabmoss=false
		else:
			grabmoss=true
	 # Replace with function body.
	


func _on_stone_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabstone==true:
			grabstone=false
		else:
			grabstone=true
	 # Replace with function body.
	


func _on_sand_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if grabsand==true:
			grabsand=false
		else:
			grabsand=true
	pass # Replace with function body.


func _on_stone_ar_entered(area):
	if bottles.frame==2:
		stone.visible=false
	pass # Replace with function body.


func _on_moss_ar_entered(area):
	if bottles.frame==0:
		moss.visible=false
	pass # Replace with function body.


func _on_sand_ar_entered(area):
	if bottles.frame==1:
		sand.visible=false
	pass # Replace with function body.
