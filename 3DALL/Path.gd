extends Path

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Path : Path, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Path)
		AutoObjects.A_Node(q_Path)
		AutoObjects.A_Spatial(q_Path)
		
	### START TEMP
	var temp_Curve3D : Curve3D = Curve3D.new()
	AutoResourcesCurve3D.nodeFunction(temp_Curve3D)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_Path.set_curve(temp_Curve3D)
