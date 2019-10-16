extends CSGSphere

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

		if randi() % 2 == 1:
			set_radius(Autoload.get_float())
		if randi() % 2 == 1:
			set_radial_segments(min(Autoload.get_int(),3))
		if randi() % 2 == 1:
			set_rings(min(Autoload.get_int(),3))
		if randi() % 2 == 1:
			set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_material(Autoload.loadA("SpatialMaterial.tres"))
