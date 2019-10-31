extends Path2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_Path2D : Path2D, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Path2D)
		AutoObjects.A_Node(q_Path2D)
		AutoObjects.A_CanvasItem(q_Path2D)
		AutoObjects.A_Node2D(q_Path2D)
		
	### START TEMP
	var temp_Curve2D : Curve2D = Curve2D.new()
#?#	AutoResourcesCurve2D.nodeFunction(temp_Curve2D)
	
	### END TEMP
	
		
	if randi() % 2 == 1:
		q_Path2D.set_curve(temp_Curve2D)
