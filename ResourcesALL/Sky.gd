extends Node2D

var q_Sky: Sky  # = ProceduralSky.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Sky, true)


func nodeFunction(q_Sky: Sky, can_reset: bool = false) -> void:
	pass
#MISSING	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Sky = Sky.new()
#	if randi() % 2 == 1:
#		AutoResourcesResource.nodeFunction(q_Sky)

#	if randi() % 2 == 1:
#		q_Sky.set_radiance_size(Autoload.get_inti(100)) # RadianceSize
