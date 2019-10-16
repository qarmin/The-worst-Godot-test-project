extends BakedLightmap

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		set_bake_cell_size(Autoload.get_float())
		set_bake_quality(Autoload.get_int()) #BakeQuality
		set_bake_mode(Autoload.get_int()) #BakeMode
		set_propagation(Autoload.get_float())
		set_energy(Autoload.get_float())
		set_hdr(Autoload.get_bool())
		set_extents(Autoload.get_vector3())
		set_capture_cell_size(Autoload.get_float())
		set_image_path("res://TEMP/Autoload.qqq")
		set_light_data(BakedLightmapData.new())

		###Autoload.qq = str(bake(self,Autoload.get_bool()))
		###debug_bake()
