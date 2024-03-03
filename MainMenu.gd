extends Control

@onready var background = $ParallaxBackground/ParallaxLayer
@onready var cloud = $ParallaxBackground/ParallaxLayer2/Sprite2D5
@onready var buttons = $VBoxContainer
@onready var ground = $Ground
@onready var notepad = $Ground/Notepad

var started = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if started:
		background.position.y = move_toward(background.position.y, -80, 0.5)
		cloud.position.y = move_toward(cloud.position.y, 60, 0.5)
		ground.position.y = move_toward(ground.position.y,-130,1)
		notepad.position.y = move_toward (notepad.position.y,600,2)

func _on_start_pressed():
	buttons.visible = false
	started = true
