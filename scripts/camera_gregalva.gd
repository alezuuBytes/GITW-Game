extends Camera2D

var speed
var offsetPlayer :int= 10

func _ready() -> void:
	global_position = get_parent().global_position

func _process(delta: float) -> void:
	if Input.is_action_pressed("shift"):
		speed = 30
	else:
		speed = 20
	if global_position.x < get_parent().global_position.x - offsetPlayer:
		global_position.x += 10 * delta * speed
	if global_position.x > get_parent().global_position.x + offsetPlayer:
		global_position.x -= 10 * delta * speed
	if global_position.y < get_parent().global_position.y - offsetPlayer:
		global_position.y += 10 * delta * speed
	if global_position.y > get_parent().global_position.y + offsetPlayer:
		global_position.y -= 10 * delta * speed
