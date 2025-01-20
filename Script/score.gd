extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Global.SPEED_GAME += 0.000001
	Global.SCORE += Global.SPEED_GAME
	text = "SCORE: " + str(int(Global.SCORE)) + "\n" + "FPS: %s" % [Engine.get_frames_per_second()]
