extends RigidBody3D

@onready var SPEED = get_meta("SPEED")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= SPEED

	if position.x <= -100:
		queue_free()


func _on_child_entered_tree(node: Node) -> void:
	print(node)
