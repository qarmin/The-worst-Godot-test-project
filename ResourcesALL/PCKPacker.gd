extends Node2D

var q_PCKPacker : PCKPacker = PCKPacker.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_PCKPacker = PCKPacker.new()

		if randi() % 2 == 1:
			Autoload.qq = str(q_PCKPacker.add_file( Autoload.get_string(), Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_PCKPacker.flush( Autoload.get_bool()))
#	LEAK	if randi() % 2 == 1:
#			Autoload.qq = str(q_PCKPacker.pck_start( "res://TEMP/PCKPacker",  Autoload.get_int()))
