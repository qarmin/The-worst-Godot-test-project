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
			q_MeshLibrary.create_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.find_item_by_name("Dokumenty"))
			
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_list())
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_name(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_navmesh(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_navmesh_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_preview(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_item_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(q_MeshLibrary.get_last_unused_item_id())
			
			###MOVEDq_MeshLibrary.remove_item(
			
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2,CubeMesh.new())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_name(randi() % Autoload.RANGE - Autoload.RANGE / 2,"Kukurydza")
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh(randi() % Autoload.RANGE - Autoload.RANGE / 2,NavigationMesh.new())
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_navmesh_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_preview(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		if randi() % 2 == 1:
			q_MeshLibrary.set_item_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2,[BoxShape.new(),BoxShape.new()])
			
		if randi() % 2 == 1:
			q_MeshLibrary.remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2) #MOVED