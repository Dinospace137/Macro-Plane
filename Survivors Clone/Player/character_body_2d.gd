extends CharacterBody2D

var move_speed = 46.0
var jump_height = 20.0

func _physics_process(_delta):
	movement()

func movement():
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * move_speed
	var _movevent = Input.get_action_strength("jump")
	move_and_slide()
