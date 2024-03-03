extends Node2D

@onready var firePit_sprite = $firePit/AnimatedSprite2D
@onready var fire = $firePit/fire
@onready var tip = $PanelContainer/HBoxContainer/Label
@onready var label = $Control/MarginContainer/MarginContainer/Label
@onready var box= $Control
@onready var global = get_node("/root/Global")
var temp=""

func _ready():
	tip.text="Begin by placing easily flammable material in then striking."

func _on_bird_nest_body_entered(_body):
	temp="Begin by placing easily flammable material in then striking."
	tip.text="Begin by placing easily flammable material in then striking."
	firePit_sprite.play("birds_nest")
	$birdNest.queue_free()

func _on_flint_and_steel_body_entered(_body):
	tip.text="Fire! Great now add some small sticks."
	temp="Fire! Great now add some small sticks."
	if firePit_sprite.animation == "birds_nest":
		fire.visible = true
		fire.play("fire_start")
		await(fire.animation_finished)
		fire.play("fire_loop")

func _on_tinder_body_entered(_body):
	temp="It's growing, add some more to make the fire bigger."
	tip.text="It's growing, add some more to make the fire bigger."
	if fire.visible == true:
		fire.scale += Vector2(1,1)
		fire.position.y -= 10
		firePit_sprite.play("tinder")
		$tinder.queue_free()

func _on_kindling_body_entered(_body):
	temp="It's growing, add some more to make the fire bigger."
	tip.text="It's growing, add some more to make the fire bigger."
	if firePit_sprite.animation == "tinder":
		fire.scale += Vector2(1,1)
		fire.position.y -= 15
		firePit_sprite.play("kindling")
		$kindling.queue_free()

func _on_log_body_entered(_body):
	tip.text="This fire will last hours and keep you warm."
	if firePit_sprite.animation == "kindling":
		fire.scale += Vector2(2,2)
		fire.position.y -= 20
		firePit_sprite.play("log")
		$log.queue_free()
		fire_completed()

func fire_completed():
	global.fire_complete=true
	$Button.visible=true

func _on_button_pressed():
	get_tree().change_scene_to_file("res://assets/UI/LevelSelect.tscn")

func _on_fire_pit_mouse_entered():
	tip.text="The fire pit is encased in a rock ring to keep the fire in."
	box.visible=true
	label.text="fire pit"


func _on_fire_pit_mouse_exited():
	box.visible=false
	tip.text=""

func _on_log_mouse_entered():
	temp=tip.text
	tip.text="This is the largest type of fuel for a fire."
	box.visible=true
	label.text="log"

func _on_log_mouse_exited():
	tip.text=temp
	box.visible=false


func _on_kindling_mouse_entered():
	temp=tip.text
	tip.text="Small dry branches that are great for growing fires."
	box.visible=true
	label.text="kindling"


func _on_kindling_mouse_exited():
	tip.text=temp
	box.visible=false


func _on_tinder_mouse_entered():
	temp=tip.text
	tip.text="A bundle of small sticks, about the width of pencils."
	box.visible=true
	label.text="tinder"


func _on_tinder_mouse_exited():
	tip.text=temp
	box.visible=false


func _on_bird_nest_mouse_entered():
	temp=tip.text
	tip.text="The term bird's nest just refers to a bundle of light sticks or straw."
	box.visible=true
	label.text="bird's nest"


func _on_bird_nest_mouse_exited():
	tip.text=temp
	box.visible=false


func _on_flint_and_steel_mouse_entered():
	temp=tip.text
	tip.text="Flint and steel is used to light fires."
	box.visible=true
	label.text="flint & steel"


func _on_flint_and_steel_mouse_exited():
	tip.text=temp
	box.visible=false



