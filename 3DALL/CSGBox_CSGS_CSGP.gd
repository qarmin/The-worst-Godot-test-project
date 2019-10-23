extends CSGBox

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_CSGBox : CSGBox, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGBox)
		AutoObjects.A_Node(q_CSGBox)
		AutoObjects.A_Spatial(q_CSGBox)
		AutoObjects.A_VisualInstance(q_CSGBox)
		AutoObjects.A_GeometryInstance(q_CSGBox)
		AutoObjects.A_CSGShape(q_CSGBox)
		AutoObjects.A_CSGPrimitive(q_CSGBox)
		
	### START TEMP
	var temp_SpatialMaterial : SpatialMaterial = SpatialMaterial.new()
	AutoResourcesSpatialMaterial.nodeFunction(temp_SpatialMaterial)
	
	### END TEMP
	
	
	if randi() % 2 == 1:
		q_CSGBox.set_width(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_material(temp_SpatialMaterial)
