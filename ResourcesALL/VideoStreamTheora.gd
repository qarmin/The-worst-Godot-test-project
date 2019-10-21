extends Node2D

var q_VideoStreamTheora : VideoStreamTheora = VideoStreamTheora.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_VideoStreamTheora = VideoStreamTheora.new()

		if randi() % 2 == 1:
			q_VideoStreamTheora.get_file())
		if randi() % 2 == 1:
			q_VideoStreamTheora.set_file( Autoload.get_string())
