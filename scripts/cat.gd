extends CharacterBody3D

var run_speed = 350
var jump_speed = -1000
var gravity = 2500

func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	var right = Input.is_action_pressed('move_right')
	var left = Input.is_action_pressed('move_left')
	var jump = Input.is_action_just_pressed('jump')

	if is_on_floor() and jump:
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed
	
	pass
	
