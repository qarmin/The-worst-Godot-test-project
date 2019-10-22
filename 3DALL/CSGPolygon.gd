extends CSGPolygon

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGPolygon : CSGPolygon, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGPolygon)
		AutoObjects.A_Node(q_CSGPolygon)
		AutoObjects.A_Spatial(q_CSGPolygon)
		AutoObjects.A_VisualInstance(q_CSGPolygon)
		AutoObjects.A_GeometryInstance(q_CSGPolygon)
		AutoObjects.A_CSGShape(q_CSGPolygon)
		AutoObjects.A_CSGPrimitive(q_CSGPolygon)
		
	if randi() % 2 == 1:
		q_CSGPolygon.set_polygon(Autoload.get_poolvector2array())
	if randi() % 2 == 1:
		q_CSGPolygon.set_mode(Autoload.get_int()) # Mode
	if randi() % 2 == 1:
		q_CSGPolygon.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon.set_spin_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon.set_spin_sides(Autoload.get_int())
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_node(Autoload.get_string())
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_interval(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_rotation(Autoload.get_int()) # PathRotation
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_local(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_continuous_u(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon.set_path_joined(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon.set_smooth_faces(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon.set_material(Autoload.loadA("SpatialMaterial.tres"))
