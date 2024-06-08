extends CharacterBody2D

class_name main_character

const SPEED = 125.0
const ACCEL = 3.0

var input: Vector2


func get_input():
	input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	
	return input.normalized()
	
func _process(delta):
	var playerInput = get_input()
	
	velocity = lerp(velocity, playerInput * SPEED, delta * ACCEL)
	
	move_and_slide()
