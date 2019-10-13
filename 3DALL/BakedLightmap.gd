extends BakedLightmap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_bake_cell_size(Autoload.get_float())
		set_bake_quality(Autoload.get_int()) #BakeQuality
		set_bake_mode(Autoload.get_int()) #BakeMode
		set_propagation(Autoload.get_float())
		set_energy(Autoload.get_float())
		set_hdr(Autoload.get_bool())
		set_extents(Vector3(Autoload.get_float(), Autoload.get_float(), Autoload.get_float()))
		set_capture_cell_size(Autoload.get_float())
		set_image_path("res://qqq.png")
		set_light_data(BakedLightmapData.new())
	
		###qq += str(bake(self,Autoload.get_bool()))
		###debug_bake()
