extends CharacterBody2D

var speed = 25
var target: main_character


func _physics_process(delta):
	if target == null:
		target = get_tree().get_nodes_in_group("Player")[0]
	if target != null:
		velocity = position.direction_to(target.position) * speed
		move_and_slide()

