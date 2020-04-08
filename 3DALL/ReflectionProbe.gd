extends ReflectionProbe

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ReflectionProbe : ReflectionProbe, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ReflectionProbe)
		AutoObjects.A_Node(q_ReflectionProbe)
		AutoObjects.A_Node3D(q_ReflectionProbe)
		AutoObjects.A_VisualInstance3D(q_ReflectionProbe)
		
	if randi() % 2 == 1:
		q_ReflectionProbe.set_update_mode(Autoload.get_int()) #UpdateMode
	if randi() % 2 == 1:
		q_ReflectionProbe.set_intensity(Autoload.get_float())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_max_distance(Autoload.get_float())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_origin_offset(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_enable_box_projection(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_enable_shadows(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_cull_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_as_interior(Autoload.get_bool())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_interior_ambient(Autoload.get_color())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_interior_ambient_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_ReflectionProbe.set_interior_ambient_probe_contribution(Autoload.get_float())
