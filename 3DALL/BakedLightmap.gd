extends BakedLightmap

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
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
			set_bake_cell_size(randf() * 1000 - 500)
			set_bake_quality(randi() % 1000 - 500) #BakeQuality
			set_bake_mode(randi() % 1000 - 500) #BakeMode
			set_propagation(randf() * 1000 - 500)
			set_energy(randf() * 1000 - 500)
			set_hdr(bool(randi()%2))
			set_extents(Vector3(randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500))
			set_capture_cell_size(randf() * 1000 - 500)
			set_image_path("res://qqq.png")
			set_light_data(BakedLightmapData.new())
		
			###qq += str(bake(self,bool(randi()%2)))
			###debug_bake()
		
		
		
		
		
		
		
		
		
