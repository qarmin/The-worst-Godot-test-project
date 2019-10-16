extends Node2D

var q_VideoStreamWebm : VideoStreamWebm = VideoStreamWebm.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VideoStreamWebm = VideoStreamWebm.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_VideoStreamWebm.get_file())
		if randi() % 2 == 1:
			q_VideoStreamWebm.set_file( Autoload.get_string() )
