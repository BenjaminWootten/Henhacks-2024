extends Node2D

@onready var firePit_sprite = $firePit/AnimatedSprite2D
@onready var fire = $firePit/fire

func _on_bird_nest_body_entered(_body):
	firePit_sprite.play("birds_nest")
	$birdNest.queue_free()

func _on_flint_and_steel_body_entered(_body):
	if firePit_sprite.animation == "birds_nest":
		fire.visible = true
		fire.play("fire_start")
		await(fire.animation_finished)
		fire.play("fire_loop")

func _on_tinder_body_entered(_body):
	if fire.visible == true:
		fire.scale += Vector2(1,1)
		fire.position.y -= 10
		firePit_sprite.play("tinder")
		$tinder.queue_free()

func _on_kindling_body_entered(_body):
	if firePit_sprite.animation == "tinder":
		fire.scale += Vector2(1,1)
		fire.position.y -= 15
		firePit_sprite.play("kindling")
		$kindling.queue_free()

func _on_log_body_entered(_body):
	if firePit_sprite.animation == "kindling":
		fire.scale += Vector2(2,2)
		fire.position.y -= 20
		firePit_sprite.play("log")
		$log.queue_free()
