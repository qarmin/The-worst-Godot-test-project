extends Node2D

var q_PCKPacker: PCKPacker = PCKPacker.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PCKPacker, true)


func nodeFunction(q_PCKPacker: PCKPacker, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PCKPacker = PCKPacker.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_PCKPacker)

	if randi() % 2 == 1:
		q_PCKPacker.add_file(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_PCKPacker.flush(Autoload.get_bool())
#	LEAK	if randi() % 2 == 1:
#			q_PCKPacker.pck_start( "res://TEMP/PCKPacker",  Autoload.get_int()))
