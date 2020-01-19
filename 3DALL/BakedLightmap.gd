extends BakedLightmap

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_BakedLightmap : BakedLightmap, can_reset : bool = false) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_BakedLightmap)
		AutoObjects.A_Node(q_BakedLightmap)
		AutoObjects.A_Spatial(q_BakedLightmap)
		AutoObjects.A_VisualInstance(q_BakedLightmap)
		
	### START TEMP
	var temp_BakedLightmapData : BakedLightmapData = BakedLightmapData.new()
#?#	AutoResourcesBakedLightmapData.nodeFunction(temp_BakedLightmapData)
	
	### END TEMP
	
		
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
		q_BakedLightmap.set_bake_default_texels_per_unit(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_capture_cell_size(Autoload.get_float())
	if randi() % 2 == 1:
		q_BakedLightmap.set_image_path("res://TEMP/Autoload.qqq")
	if randi() % 2 == 1:
		q_BakedLightmap.set_light_data(temp_BakedLightmapData) 

		###q_BakedLightmap.bake(q_BakedLightmap,Autoload.get_bool()))
		###q_BakedLightmap.debug_bake()
