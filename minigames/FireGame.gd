extends Node2D

@onready var firePit_sprite = $firePit/AnimatedSprite2D

func _on_bird_nest_body_entered(_body):
	firePit_sprite.play("birds_nest")
	$birdNest.queue_free()

func _on_flint_and_steel_body_entered(_body):
	pass

func _on_tinder_body_entered(_body):
	if firePit_sprite.animation == "birds_nest":
		firePit_sprite.play("tinder")
		$tinder.queue_free()

func _on_kindling_body_entered(_body):
	if firePit_sprite.animation == "tinder":
		firePit_sprite.play("kindling")
		$kindling.queue_free()

func _on_log_body_entered(_body):
	if firePit_sprite.animation == "kindling":
		firePit_sprite.play("log")
		$log.queue_free()
