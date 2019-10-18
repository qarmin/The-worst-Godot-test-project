extends GIProbe

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		nodeFunction(self)

func nodeFunction(q_GIProbe : GIProbe) -> void:

	if randi() % 2 == 1:
		q_GIProbe.set_subdiv(Autoload.get_inti(10)) # Subdiv 
	if randi() % 2 == 1:
		q_GIProbe.set_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_GIProbe.set_dynamic_range(Autoload.get_int())
	if randi() % 2 == 1:
		q_GIProbe.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbe.set_propagation(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbe.set_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbe.set_normal_bias(Autoload.get_float())
	if randi() % 2 == 1:
		q_GIProbe.set_interior(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GIProbe.set_compress(Autoload.get_bool())
	if randi() % 2 == 1:
		q_GIProbe.set_probe_data(GIProbeData.new())

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_GIProbe.bake(self, Autoload.get_bool())
		if randi() % 2 == 1:
			q_GIProbe.debug_bake()
