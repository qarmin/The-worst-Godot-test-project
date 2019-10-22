extends NavigationPolygonInstance

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_NavigationPolygonInstance : NavigationPolygonInstance, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationPolygonInstance)
		AutoObjects.A_Node(q_NavigationPolygonInstance)
		AutoObjects.A_CanvasItem(q_NavigationPolygonInstance)
		AutoObjects.A_Node2D(q_NavigationPolygonInstance)
		
	if randi() % 2 == 1:
		q_NavigationPolygonInstance.set_enabled(Autoload.get_bool())
