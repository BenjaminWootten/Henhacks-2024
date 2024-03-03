extends Area2D

var dragging = false

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			dragging = true
		else:
			dragging = false

func _process(_delta):
	if dragging:
		global_position = get_global_mouse_position()
