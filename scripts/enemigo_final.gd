extends CharacterBody2D
class_name EnemigoFinal

@export var speed := 300
@export var accel := 9.5
@export var player : CharacterBody2D = null

func _physics_process(delta: float) -> void:
	
	if player != null:
		velocity = velocity.lerp(global_position.direction_to(player.global_position) * speed,delta * accel)
	if velocity.x > 0:
		$Sprite2D.flip_h = true
	else:
		$Sprite2D.flip_h = false
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "GregAlva":
		if globales.god_mode == true:
			velocity = velocity.lerp(global_position.direction_to(-player.global_position),4)
		else:
			get_tree().quit()
