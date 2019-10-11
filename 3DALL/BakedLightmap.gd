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
		
		set_bake_cell_size(Autoload.get_randf())
		set_bake_quality(Autoload.get_randi()) #BakeQuality
		set_bake_mode(Autoload.get_randi()) #BakeMode
		set_propagation(Autoload.get_randf())
		set_energy(Autoload.get_randf())
		set_hdr(bool(randi()%2))
		set_extents(Vector3(Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf()))
		set_capture_cell_size(Autoload.get_randf())
		set_image_path("res://qqq.png")
		set_light_data(BakedLightmapData.new())
	
		###qq += str(bake(self,bool(randi()%2)))
		###debug_bake()
