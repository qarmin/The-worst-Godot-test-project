extends CSGTorus

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CSGTorus : CSGTorus, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGTorus)
		AutoObjects.A_Node(q_CSGTorus)
		AutoObjects.A_Spatial(q_CSGTorus)
		AutoObjects.A_VisualInstance(q_CSGTorus)
		AutoObjects.A_GeometryInstance(q_CSGTorus)
		AutoObjects.A_CSGShape(q_CSGTorus)
		AutoObjects.A_CSGPrimitive(q_CSGTorus)
		
	if randi() % 2 == 1:
		q_CSGTorus.set_inner_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGTorus.set_outer_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGTorus.set_sides(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CSGTorus.set_ring_sides(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CSGTorus.set_smooth_faces(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGTorus.set_material(Autoload.loadA("SpatialMaterial.tres"))
