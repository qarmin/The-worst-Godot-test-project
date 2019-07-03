extends CSGTorus

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
		
		
		set_inner_radius(randf() * 50)
		set_outer_radius(randf() * 50)
		set_sides(randi()%50 + 3)
		set_ring_sides(randi()%50 + 3)
		set_smooth_faces(bool(randi()%2))
		set_material(SpatialMaterial.new())

		if Autoload.WRONG_BUGS:
			set_inner_radius(randf() * 1000 - 500)
			set_outer_radius(randf() * 1000 - 500)
			set_sides(randi() % 10 - 5)
			set_ring_sides(randi() % 10 - 5)
			set_smooth_faces(bool(randi()%2))
			set_material(SpatialMaterial.new())
