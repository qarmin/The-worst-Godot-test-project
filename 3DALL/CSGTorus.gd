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
		if !Autoload.RANDI:
			
			set_inner_radius(randf() * 50)
			set_outer_radius(randf() * 50)
			set_sides(randi()%1 + 3)
			set_ring_sides(randi()%1 + 3)
			set_smooth_faces(bool(randi()%2))
			set_material(SpatialMaterial.new())
	
			if Autoload.WRONG_BUGS:
				set_inner_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_outer_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_sides(randi() % 5 - 2)
				set_ring_sides(randi() % 5 - 2)
				set_smooth_faces(bool(randi()%2))
				set_material(SpatialMaterial.new())
		else: #RANDI
			if randi() % 2 == 1:
				set_inner_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_outer_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_sides(randi() % 5 - 2)
			if randi() % 2 == 1:
				set_ring_sides(randi() % 5 - 2)
			if randi() % 2 == 1:
				set_smooth_faces(bool(randi()%2))
			if randi() % 2 == 1:
				set_material(SpatialMaterial.new())
