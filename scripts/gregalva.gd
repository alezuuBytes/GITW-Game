extends CharacterBody2D

var input : Vector2
var speed := 1000

func _physics_process(delta: float) -> void:
	input = Input.get_vector("left","right","up","down")
	velocity = velocity.lerp(input*speed,delta * 10)
	move_and_slide()
