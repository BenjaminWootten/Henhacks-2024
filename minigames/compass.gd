extends Node2D

@onready var dial_sprite = $dial_sprite
@onready var needle_sprite = $needle_sprite
@onready var window = get_window()

var locked = true

const MOVE_SPEED = 4
const ROTATE_SPEED = PI/180
var LEFT_MOVE_LIMIT = DisplayServer.window_get_size().x/4
var RIGHT_MOVE_LIMIT = DisplayServer.window_get_size().x*3/4

signal scroll(direction)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Rotate dial to mouse when unlocked
	if not locked:
		var mouse = get_global_mouse_position()
		dial_sprite.look_at(mouse)
		dial_sprite.rotate(PI/2)
	
	# Rotate needle on input
	if Input.is_action_pressed("right"):
		needle_sprite.rotate(ROTATE_SPEED)
		if (self.position.x < RIGHT_MOVE_LIMIT):
			self.position.x += MOVE_SPEED
		else:
			scroll.emit("right")
	if Input.is_action_pressed("left"):
		needle_sprite.rotate(-ROTATE_SPEED)
		if (self.position.x > LEFT_MOVE_LIMIT):
			self.position.x -= MOVE_SPEED
		else:
			scroll.emit("left")

# Lock/unlock dial when left clicking
func _input(event):
	if event.is_action_pressed("click"):
		if not locked:
			locked = true
		else:
			locked = false
