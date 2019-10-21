extends Node2D

var q_GIProbeData : GIProbeData = GIProbeData.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_GIProbeData,true)

func nodeFunction(q_GIProbeData : GIProbeData, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_GIProbeData = GIProbeData.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_GIProbeData)

	if randi() % 2 == 1:
		q_GIProbeData.set_bounds(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_GIProbeData.set_cell_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbeData.set_to_cell_xform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_GIProbeData.set_dynamic_data(Autoload.get_poolintarray())
	if randi() % 2 == 1:
		q_GIProbeData.set_dynamic_range(Autoload.get_int())
	if randi() % 2 == 1:
		q_GIProbeData.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbeData.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbeData.set_normal_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbeData.set_propagation(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbeData.set_interior(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GIProbeData.set_compress(Autoload.get_bool())
