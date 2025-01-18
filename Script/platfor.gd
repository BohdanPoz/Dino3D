extends RigidBody3D

@onready var _mesh = $MeshInstance3D

var SPEED = 0.2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var size = int(_mesh.mesh.size.x)
	size
	position.x -= SPEED
	
	if position.x <= -size:
		print(position.x, name)
		position.x = size
	
