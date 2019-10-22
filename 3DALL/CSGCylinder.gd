extends CSGCylinder

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGCylinder : CSGCylinder, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGCylinder)
		AutoObjects.A_Node(q_CSGCylinder)
		AutoObjects.A_Spatial(q_CSGCylinder)
		AutoObjects.A_VisualInstance(q_CSGCylinder)
		AutoObjects.A_GeometryInstance(q_CSGCylinder)
		AutoObjects.A_CSGShape(q_CSGCylinder)
		AutoObjects.A_CSGPrimitive(q_CSGCylinder)
	
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
