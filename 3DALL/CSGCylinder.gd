extends CSGCylinder3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGCylinder3D : CSGCylinder3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGCylinder3D)
		AutoObjects.A_Node(q_CSGCylinder3D)
		AutoObjects.A_Node3D(q_CSGCylinder3D)
		AutoObjects.A_VisualInstance3D(q_CSGCylinder3D)
		AutoObjects.A_GeometryInstance3D(q_CSGCylinder3D)
		AutoObjects.A_CSGShape3D(q_CSGCylinder3D)
		AutoObjects.A_CSGPrimitive3D(q_CSGCylinder3D)
		
	### START TEMP
#	var temp_StandardMaterial3D : StandardMaterial3D = StandardMaterial3D.new() #MIISSING
##?#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)
	
	### END TEMP
	
	if randi() % 2 == 1:
		q_CSGCylinder3D.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGCylinder3D.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGCylinder3D.set_sides(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CSGCylinder3D.set_cone(Autoload.get_bool())
	if randi() % 2 == 1:
		q_CSGCylinder3D.set_smooth_faces(Autoload.get_bool())
#	if randi() % 2 == 1: #MISSING
#		q_CSGCylinder3D.set_material(temp_StandardMaterial3D)
