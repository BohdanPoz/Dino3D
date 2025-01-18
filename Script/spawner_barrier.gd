extends Node

@onready var barrier_scene: PackedScene = preload("res://objects/barrier.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var count = randi_range(1, 4)
	
	for i in range(count):
		var barrier = barrier_scene.instantiate()
		
		#barrier.initialize(spawn_location, Vector3(0, 0, 0))
		barrier.position.x += 100 + 20 * (i - 1)
		barrier.scale = Vector3(1.0, 1.0, 1.0) * randf_range(0.5, 1.5)
		barrier.position.y = barrier.scale.y + 0.5
		
		get_parent().add_child(barrier)
