extends Node2D

var q_World3D: World3D = World3D.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_World3D, true)


func nodeFunction(q_World3D: World3D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_World3D = World3D.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_World3D)

	### START TEMP
	var temp_Environment: Environment = Environment.new()
	AutoResourcesEnvironment.nodeFunction(temp_Environment)

	### END TEMP

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_World3D.set_environment(temp_Environment)
		if randi() % 2 == 1:
			q_World3D.set_fallback_environment(temp_Environment)
	if randi() % 2 == 1:
		q_World3D.get_space()
	if randi() % 2 == 1:
		q_World3D.get_scenario()
	if randi() % 2 == 1:
		q_World3D.get_direct_space_state()
