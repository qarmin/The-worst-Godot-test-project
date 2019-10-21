extends BakedLightmap

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_Spatial(self)
		AutoObjects.A_VisualInstance(self)
		nodeFunction(self)

func nodeFunction(q_BakedLightmap : BakedLightmap, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		q_BakedLightmap.set_bake_cell_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_bake_quality(Autoload.get_int()) #BakeQuality
	if randi() % 2 == 1:
		q_BakedLightmap.set_bake_mode(Autoload.get_int()) #BakeMode
	if randi() % 2 == 1:
		q_BakedLightmap.set_propagation(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_energy(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_hdr(Autoload.get_bool())
	if randi() % 2 == 1:
		q_BakedLightmap.set_extents(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_BakedLightmap.set_capture_cell_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_image_path("res://TEMP/Autoload.qqq")
	if randi() % 2 == 1:
		q_BakedLightmap.set_light_data(BakedLightmapData.new())

		###q_BakedLightmap.bake(self,Autoload.get_bool()))
		###q_BakedLightmap.debug_bake()
