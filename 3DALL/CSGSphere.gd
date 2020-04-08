extends CSGSphere3D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGSphere3D : CSGSphere3D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGSphere3D)
		AutoObjects.A_Node(q_CSGSphere3D)
		AutoObjects.A_Node3D(q_CSGSphere3D)
		AutoObjects.A_VisualInstance3D(q_CSGSphere3D)
		AutoObjects.A_GeometryInstance3D(q_CSGSphere3D)
		AutoObjects.A_CSGShape3D(q_CSGSphere3D)
		AutoObjects.A_CSGPrimitive3D(q_CSGSphere3D)
		
	### START TEMP
#	var temp_StandardMaterial : StandardMaterial = StandardMaterial.new() #MISSING
##?#	AutoResourcesStandardMaterial.nodeFunction(temp_StandardMaterial)
	
	### END TEMP
		
	if randi() % 2 == 1:
		q_CSGSphere3D.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGSphere3D.set_radial_segments(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere3D.set_rings(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere3D.set_smooth_faces(Autoload.get_bool())
#	if randi() % 2 == 1: # MISSING
#		q_CSGSphere3D.set_material(temp_StandardMaterial)
