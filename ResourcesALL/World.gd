extends Node2D

var q_World : World = World.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_World = World.new()

		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				q_World.set_environment(Autoload.loadA("DefaultEnv.tres"))
			if randi() % 2 == 1:
				q_World.set_fallback_environment(Autoload.loadA("DefaultEnv.tres"))
		if randi() % 2 == 1:
			q_World.get_space())
		if randi() % 2 == 1:
			q_World.get_scenario())
		if randi() % 2 == 1:
			q_World.get_direct_space_state())
