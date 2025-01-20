extends CharacterBody3D

const JUMP_VELOCITY = 10


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta * 1.6

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()
	
func gameOver():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	
func _on_child_entered_tree(node: Node) -> void:
	print(node.name, "=========")
	if node.is_in_group("Barrier"):
		gameOver()
