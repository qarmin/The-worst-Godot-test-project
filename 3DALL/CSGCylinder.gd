extends CSGCylinder

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
			set_height(Autoload.get_float())
		if randi() % 2 == 1:
			set_sides(randi()%5 + 4)
		if randi() % 2 == 1:
			set_cone(Autoload.get_bool())
		if randi() % 2 == 1:
			set_smooth_faces(Autoload.get_bool())
		if randi() % 2 == 1:
			set_material(SpatialMaterial.new())
