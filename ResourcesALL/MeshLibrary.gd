extends Node2D

var q_MeshLibrary : MeshLibrary = MeshLibrary.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_MeshLibrary = MeshLibrary.new()
		
		if randi() % 2 == 1:
			q_MeshLibrary.clear()
		if randi() % 2 == 1:
			q_MeshLibrary.create_item(Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.find_item_by_name(Autoload.get_string()))
			
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_list())
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_mesh(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_name(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_navmesh(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_navmesh_transform(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_preview(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_shapes(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_last_unused_item_id())
			
			###MOVEDq_MeshLibrary.remove_item(
			
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_mesh(Autoload.get_randi(),CubeMesh.new())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_name(Autoload.get_randi(),Autoload.get_string())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh(Autoload.get_randi(),NavigationMesh.new())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh_transform(Autoload.get_randi(),Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_preview(Autoload.get_randi(),Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_shapes(Autoload.get_randi(),[BoxShape.new(),BoxShape.new()])
			
		if randi() % 2 == 1:
			q_MeshLibrary.remove_item(Autoload.get_randi()) #MOVED
