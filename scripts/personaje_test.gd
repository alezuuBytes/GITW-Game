extends CharacterBody2D
class_name player

@export var speed := 500
@export var accel := 10

func _physics_process(delta: float) -> void:
	var input := Input.get_vector("left","right","up","down")
	velocity = velocity.lerp(input*speed, delta * accel)
	move_and_slide()

func death():
	pass
