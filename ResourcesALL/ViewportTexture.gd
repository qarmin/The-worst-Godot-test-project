extends Node2D

var q_ViewportTexture : ViewportTexture = ViewportTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ViewportTexture = ViewportTexture.new()

		if randi() % 2 == 1:
			q_ViewportTexture.set_viewport_path_in_scene(Autoload.get_nodepath(self))
