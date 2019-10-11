extends Navigation

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

			#LEAK get_child(0).set_navigation_mesh(NavigationMesh.new())
		if randi() % 2 == 1:
			get_child(0).set_enabled(bool(randi()%2))
				
		if randi() % 2 == 1:
			set_up_vector(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(get_closest_point(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(get_closest_point_normal(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(get_closest_point_owner(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			qq += str(get_closest_point_to_segment(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(get_simple_path(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),bool(randi()%2)))
			
			#LEAK qq += str(navmesh_add(NavigationMesh.new(), Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())), get_parent()))
		if randi() % 2 == 1:
			navmesh_remove(Autoload.get_randi())
		if randi() % 2 == 1:
			navmesh_set_transform(Autoload.get_randi(),Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
