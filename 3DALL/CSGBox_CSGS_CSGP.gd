extends CSGBox3D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_CSGBox3D: CSGBox3D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_CSGBox3D)
		AutoObjects.A_Node(q_CSGBox3D)
		AutoObjects.A_Node3D(q_CSGBox3D)
		AutoObjects.A_VisualInstance3D(q_CSGBox3D)
		AutoObjects.A_GeometryInstance3D(q_CSGBox3D)
		AutoObjects.A_CSGShape3D(q_CSGBox3D)
		AutoObjects.A_CSGPrimitive3D(q_CSGBox3D)

	### START TEMP
	var temp_StandardMaterial3D: StandardMaterial3D = StandardMaterial3D.new()  #MISSING
##?#	AutoResourcesStandardMaterial3D.nodeFunction(temp_StandardMaterial3D)

	### END TEMP

	if randi() % 2 == 1:
		q_CSGBox3D.set_width(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox3D.set_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox3D.set_depth(Autoload.get_float())
	if randi() % 2 == 1:
		q_CSGBox3D.set_material(temp_StandardMaterial3D)
