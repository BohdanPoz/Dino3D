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
	print(count, "-----------------------------------------------")
	
	for i in range(count):
		var barrier = barrier_scene.instantiate()
		
		var size = barrier.get_node("CollisionShape3D").shape.size
		barrier.position.x += 70 + (size.x + 0.2) * i
		barrier.position.y = size.y/2
		
		barrier.set_meta("SPEED", Global.SPEED_GAME)
		print(barrier.position, barrier.scale, size)
		
		add_child(barrier)
