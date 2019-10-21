extends CSGBox

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_CSGBox : CSGBox, can_reset : bool = false) -> void:

	AutoObjects.A_Object(self)
	AutoObjects.A_Node(self)
	AutoObjects.A_Spatial(self)
	AutoObjects.A_VisualInstance(self)
	AutoObjects.A_GeometryInstance(self)
	AutoObjects.A_CSGShape(self)
	AutoObjects.A_CSGPrimitive(self)
	
	if randi() % 2 == 1:
		q_CSGBox.set_width(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox.set_material(Autoload.loadA("SpatialMaterial.tres"))
