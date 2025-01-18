extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= 0.5
	
	if position.x <= -150:
		print(position.x, name)
		position.x = 150
	
