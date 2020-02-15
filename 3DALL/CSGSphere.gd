extends CSGSphere

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGSphere : CSGSphere, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGSphere)
		AutoObjects.A_Node(q_CSGSphere)
		AutoObjects.A_Spatial(q_CSGSphere)
		AutoObjects.A_VisualInstance(q_CSGSphere)
		AutoObjects.A_GeometryInstance(q_CSGSphere)
		AutoObjects.A_CSGShape(q_CSGSphere)
		AutoObjects.A_CSGPrimitive(q_CSGSphere)
		
	### START TEMP
#	var temp_SpatialMaterial : SpatialMaterial = SpatialMaterial.new() #MISSING
##?#	AutoResourcesSpatialMaterial.nodeFunction(temp_SpatialMaterial)
	
	### END TEMP
		
	if randi() % 2 == 1:
		q_CSGSphere.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGSphere.set_radial_segments(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere.set_rings(Autoload.get_inti(3))
	if randi() % 2 == 1:
		q_CSGSphere.set_smooth_faces(Autoload.get_bool())
#	if randi() % 2 == 1: # MISSING
#		q_CSGSphere.set_material(temp_SpatialMaterial)
