extends CharacterBody2D
class_name EnemigoFinal

@export var speed := 200
@export var accel := 9.5
@export var player : CharacterBody2D = null

func _physics_process(delta: float) -> void:
	
	if player != null:
		velocity = velocity.lerp(global_position.direction_to(player.global_position) * speed,delta * accel)
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().quit()
