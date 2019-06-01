extends Spatial

func _ready() -> void:
	p1()
	
	
	
	
	
	pass

func p1() -> void:
	var MI_P : PackedScene = load("res://3D2/MeshInstance.tscn")
	
	for i in range(200):
		var SP : SpatialMaterial = load("res://3D2/QQ" + str(randi()%4 + 1) + ".tres")
		var MI : MeshInstance = MI_P.instance()
		MI.name = str(randi() % 1252)
		MI.set_surface_material(0,SP)
		MI.set_translation(Vector3(randf() * 1, randf() * 1,randf() * 1))
		$Spatial.add_child(MI)
		
	$SpatialTimer.start(2.0)

func p1end() -> void:
	for i in $Spatial.get_children():
		i.queue_free()
