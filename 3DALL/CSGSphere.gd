extends CSGSphere

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CSGSphere : CSGSphere, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_CSGSphere.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGSphere.set_radial_segments(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere.set_rings(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere.set_smooth_faces(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGSphere.set_material(Autoload.loadA("SpatialMaterial.tres"))
