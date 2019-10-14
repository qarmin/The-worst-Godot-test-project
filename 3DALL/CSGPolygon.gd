extends CSGPolygon

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
			set_polygon(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			set_mode(Autoload.get_int()) # Mode
		if randi() % 2 == 1:
			set_depth(Autoload.get_float())
		if randi() % 2 == 1:
			set_spin_degrees(Autoload.get_float())
		if randi() % 2 == 1:
			set_spin_sides(Autoload.get_int())
		if randi() % 2 == 1:
			set_path_node(Autoload.get_string())
		if randi() % 2 == 1:
			set_path_interval(Autoload.get_float())
		if randi() % 2 == 1:
			set_path_rotation(Autoload.get_int()) # PathRotation
		if randi() % 2 == 1:
			set_path_local(Autoload.get_bool())
		if randi() % 2 == 1:
			set_path_continuous_u(Autoload.get_bool())
		if randi() % 2 == 1:
			set_path_joined(Autoload.get_bool())
		if randi() % 2 == 1:
			set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_material(SpatialMaterial.new())
