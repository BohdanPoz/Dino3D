extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var children = get_children()
	
	for child in children:
		var size = child.get_child(0).shape.size
		
		if child.position.x <= -size.x:
			if get_child(0).name != child.name:
				child.position.x = get_child(0).position.x + size.x
			else:
				child.position.x = get_child(1).position.x + size.x		
		
		child.position.x -= Global.SPEED_GAME
