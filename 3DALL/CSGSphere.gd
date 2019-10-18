extends CSGSphere

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_radial_segments(Autoload.get_inti(3))
		if randi() % 2 == 1:
			set_rings(Autoload.get_inti(3))
		if randi() % 2 == 1:
			set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_material(Autoload.loadA("SpatialMaterial.tres"))
