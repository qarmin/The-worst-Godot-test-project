extends Node2D

var q_ViewportTexture : ViewportTexture = ViewportTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ViewportTexture,true)

func nodeFunction(q_ViewportTexture : ViewportTexture, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_ViewportTexture = ViewportTexture.new()
#	if randi() % 2 == 1: #MISSING
#		AutoResourcesTexture.nodeFunction(q_ViewportTexture)

	if randi() % 2 == 1:
		q_ViewportTexture.set_viewport_path_in_scene(Autoload.get_nodepath(self))
