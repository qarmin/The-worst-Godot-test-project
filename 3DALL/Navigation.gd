extends Navigation

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
		
		#get_child(0).set_navigation_mesh(NavigationMesh.new())
		#get_child(0).set_enabled(bool(randi()%2))
			
		set_up_vector(Vector3(randf() * 50,randf() * 50,randf() * 50))
		
		qq += str(get_closest_point(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(get_closest_point_normal(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(get_closest_point_owner(Vector3(randf() * 50,randf() * 50,randf() * 50)))
		qq += str(get_closest_point_to_segment(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2)))
		qq += str(get_simple_path(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),bool(randi()%2)))
		
		qq += str(navmesh_add(NavigationMesh.new(), Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)), self))
		#navmesh_remove(0)
		#navmesh_set_transform(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
		
		
		if Autoload.WRONG_BUGS:
			get_child(0).set_navigation_mesh(NavigationMesh.new())
			get_child(0).set_enabled(bool(randi()%2))
				
			set_up_vector(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			
			qq += str(get_closest_point(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(get_closest_point_normal(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(get_closest_point_owner(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			qq += str(get_closest_point_to_segment(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2)))
			qq += str(get_simple_path(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),bool(randi()%2)))
			
			qq += str(navmesh_add(NavigationMesh.new(), Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)), get_parent()))
			navmesh_remove(randi() % 1000 - 500)
			navmesh_set_transform(randi() % 1000 - 500,Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
