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
		if !Autoload.RANDI:
			
			set_bake_cell_size(randf() * 50)
			set_bake_quality(randi() % 3) #BakeQuality
			set_bake_mode(randi() % 2) #BakeMode
			set_propagation(randf() * 50)
			set_energy(randf() * 50)
			set_hdr(bool(randi()%2))
			set_extents(Vector3(randf() * 50,randf() * 50,randf() * 50))
			set_capture_cell_size(randf() * 50)
			#set_image_path("res://qqq.png")
			set_light_data(BakedLightmapData.new())
			
			###qq += str(bake(self,bool(randi()%2)))
			###debug_bake()
			
			if Autoload.WRONG_BUGS:
				set_bake_cell_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_bake_quality(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BakeQuality
				set_bake_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) #BakeMode
				set_propagation(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_energy(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_hdr(bool(randi()%2))
				set_extents(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2))
				set_capture_cell_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_image_path("res://qqq.png")
				set_light_data(BakedLightmapData.new())
			
				###qq += str(bake(self,bool(randi()%2)))
				###debug_bake()
