extends CSGSphere

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
		
		
		set_radius(randf() * 50)
		set_radial_segments(randi()%50)
		set_rings(randi()%50)
		set_smooth_faces(bool(randi()%2))
		set_material(SpatialMaterial.new())
		
		
		
		
		
		
		
		