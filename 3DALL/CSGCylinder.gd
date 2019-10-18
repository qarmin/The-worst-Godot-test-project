extends CSGCylinder

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		AutoObjects.A_GeometryInstance(self)
		AutoObjects.A_CSGShape(self)
		AutoObjects.A_CSGPrimitive(self)
		nodeFunction(self)

func nodeFunction(q_CSGCylinder : CSGCylinder) -> void:

		if randi() % 2 == 1:
			q_CSGCylinder.set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			q_CSGCylinder.set_height(Autoload.get_float())
		if randi() % 2 == 1:
			q_CSGCylinder.set_sides(Autoload.get_inti(5))
		if randi() % 2 == 1:
			q_CSGCylinder.set_cone(Autoload.get_bool())
		if randi() % 2 == 1:
			q_CSGCylinder.set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			q_CSGCylinder.set_material(Autoload.loadA("SpatialMaterial.tres"))
