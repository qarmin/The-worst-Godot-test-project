extends CSGPolygon3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CSGPolygon3D: CSGPolygon3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGPolygon3D)
		AutoObjects.A_Node(q_CSGPolygon3D)
		AutoObjects.A_Node3D(q_CSGPolygon3D)
		AutoObjects.A_VisualInstance3D(q_CSGPolygon3D)
		AutoObjects.A_GeometryInstance3D(q_CSGPolygon3D)
		AutoObjects.A_CSGShape3D(q_CSGPolygon3D)
		AutoObjects.A_CSGPrimitive3D(q_CSGPolygon3D)

	### START TEMP
#	var temp_StandardMaterial3D : StandardMaterial3D = StandardMaterial3D.new() #MISSING
##?#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)

	### END TEMP

	if randi() % 2 == 1:
		q_CSGPolygon3D.set_polygon(Autoload.get_packedvector2array())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_mode(Autoload.get_int())  # Mode
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_spin_degrees(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_spin_sides(Autoload.get_int())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_node(Autoload.get_nodepath(self))
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_interval(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_rotation(Autoload.get_int())  # PathRotation
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_local(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_continuous_u(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_path_joined(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGPolygon3D.set_smooth_faces(Autoload.get_bool())
#	if randi() % 2 == 1: #MISSING
#		q_CSGPolygon3D.set_material(temp_StandardMaterial3D)
