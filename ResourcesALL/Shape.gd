extends Node2D

var q_Shape3D: Shape3D = BoxShape3D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Shape3D, true)


func nodeFunction(q_Shape3D: Shape3D, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Shape3D = Shape3D.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Shape3D)

	if randi() % 2 == 1:
		q_Shape3D.set_margin(Autoload.get_float())
