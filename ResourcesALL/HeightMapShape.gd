extends Node2D

var q_HeightMapShape : HeightMapShape = HeightMapShape.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_HeightMapShape = HeightMapShape.new()

#	BUG	if randi() % 2 == 1:
#			q_HeightMapShape.set_map_width(Autoload.get_int())
#		if randi() % 2 == 1:
#			q_HeightMapShape.set_map_depth(Autoload.get_int())
		if randi() % 2 == 1:
			q_HeightMapShape.set_map_data(Autoload.get_poolrealarray())
