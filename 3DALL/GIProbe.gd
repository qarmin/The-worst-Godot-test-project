extends GIProbe

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_subdiv(Autoload.get_inti(10)) # Subdiv 
		if randi() % 2 == 1:
			set_extents(Autoload.get_vector3())
		if randi() % 2 == 1:
			set_dynamic_range(Autoload.get_int())
		if randi() % 2 == 1:
			set_energy(Autoload.get_float())
		if randi() % 2 == 1:
			set_propagation(Autoload.get_float())
		if randi() % 2 == 1:
			set_bias(Autoload.get_float())
		if randi() % 2 == 1:
			set_normal_bias(Autoload.get_float())
		if randi() % 2 == 1:
			set_interior(Autoload.get_bool())
		if randi() % 2 == 1:
			set_compress(Autoload.get_bool())
		if randi() % 2 == 1:
			set_probe_data(GIProbeData.new())

			if Autoload.SLOW_FUNCTIONS:
				bake(self, Autoload.get_bool())
				debug_bake()
