extends ResourcePreloader

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_ResourcePreloader : ResourcePreloader, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_ResourcePreloader)
		AutoObjects.A_Node(q_ResourcePreloader)
		
	### START TEMP
	var temp_ImageTexture : ImageTexture = ImageTexture.new()
	AutoResourcesImageTexture.nodeFunction(temp_ImageTexture)
	
	### END TEMP
	
	
	if randi() % 2 == 1:
		q_ResourcePreloader.add_resource(Autoload.get_string(), temp_ImageTexture)

	if randi() % 2 == 1:
		q_ResourcePreloader.get_resource(Autoload.get_string())
	if randi() % 2 == 1:
		q_ResourcePreloader.get_resource_list()

	if randi() % 2 == 1:
		q_ResourcePreloader.has_resource(Autoload.get_string())
	if randi() % 2 == 1:
		q_ResourcePreloader.rename_resource(Autoload.get_string(),Autoload.get_string())
	if randi() % 2 == 1:
		q_ResourcePreloader.remove_resource(Autoload.get_string()) ## Zmiana kolejnosci
