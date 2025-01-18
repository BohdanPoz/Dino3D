extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rng = RandomNumberGenerator
	
	var barrier = preload("res://objects/barrier.tscn")

	var timer := Timer.new()
	add_child(timer)
	
	timer.wait_time = 1.0
	timer.one_shot = true # don't loop, run once
	timer.autostart = true
	
	timer.connect("timeout", Callable(self, "spawnBarrier"), 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	#for i in range(rng.randi_range(1, 3)):
		#

func spawnBarrier(rng: RandomNumberGenerator):
	var size = rng.randf_range(0.7, 1.5)
	
	transform.scaled(Vector3i(size, size, size))
	print(size)
