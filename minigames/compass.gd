extends Node2D

@onready var dial_sprite = $dial_sprite

var locked = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not locked:
		var mouse = get_global_mouse_position()
		dial_sprite.look_at(mouse)
		dial_sprite.rotate(PI/2)

func _input(event):
	if event.is_action_pressed("click"):
		if not locked:
			locked = true
		else:
			locked = false
	
	if event.is_action_pressed("right"):
		pass

