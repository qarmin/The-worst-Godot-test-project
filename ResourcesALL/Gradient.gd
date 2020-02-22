extends Node2D

var q_Gradient : Gradient = Gradient.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Gradient,true)

func nodeFunction(q_Gradient : Gradient, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_Gradient = Gradient.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Gradient)

	if randi() % 2 == 1:
		q_Gradient.set_offsets(Autoload.get_packedrealarray())
	if randi() % 2 == 1:
		q_Gradient.set_colors(Autoload.get_packedcolorarray())

	for _i in range(4):
		if randi() % 2 == 1:
				q_Gradient.add_point( Autoload.get_float(),Autoload.get_color())

	if randi() % 2 == 1:
		q_Gradient.get_color(Autoload.get_int())
	if randi() % 2 == 1:
		q_Gradient.get_offset(Autoload.get_int())
	if randi() % 2 == 1:
		q_Gradient.get_point_count()

	if randi() % 2 == 1:
		q_Gradient.interpolate(Autoload.get_float())
	if randi() % 2 == 1:
		q_Gradient.remove_point(Autoload.get_int())

	if randi() % 2 == 1:
		q_Gradient.set_color(Autoload.get_int(), Autoload.get_color())
	if randi() % 2 == 1:
		q_Gradient.set_offset(Autoload.get_int(),Autoload.get_float())
