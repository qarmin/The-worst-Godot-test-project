extends NavigationRegion2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_NavigationPolygonInstance: NavigationRegion2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_NavigationPolygonInstance)
		AutoObjects.A_Node(q_NavigationPolygonInstance)
		AutoObjects.A_CanvasItem(q_NavigationPolygonInstance)
		AutoObjects.A_Node2D(q_NavigationPolygonInstance)

	### START TEMP
	var temp_NavigationPolygon: NavigationPolygon = NavigationPolygon.new()
	#?#	AutoResourcesNavigationPolygon.nodeFunction(temp_NavigationPolygon)

	### END TEMP

	if randi() % 2 == 1:
		q_NavigationPolygonInstance.set_navigation_polygon(temp_NavigationPolygon)
	if randi() % 2 == 1:
		q_NavigationPolygonInstance.set_enabled(Autoload.get_bool())
