extends Node2D

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
		var q_MeshLibrary : MeshLibrary = MeshLibrary.new()
		if !Autoload.RANDI:
			
			q_MeshLibrary.clear()
			q_MeshLibrary.create_item(0)
			qq += str(q_MeshLibrary.find_item_by_name("Dokumenty"))
			
			qq += str(q_MeshLibrary.get_item_list())
			qq += str(q_MeshLibrary.get_item_mesh(0))
			qq += str(q_MeshLibrary.get_item_name(0))
			qq += str(q_MeshLibrary.get_item_navmesh(0))
			qq += str(q_MeshLibrary.get_item_navmesh_transform(0))
			#qq += str(q_MeshLibrary.get_item_preview(0))
			qq += str(q_MeshLibrary.get_item_shapes(0))
			qq += str(q_MeshLibrary.get_last_unused_item_id())
			
			###MOVEDq_MeshLibrary.remove_item(
			
			q_MeshLibrary.set_item_mesh(0,CubeMesh.new())
			q_MeshLibrary.set_item_name(0,"Kukurydza")
			q_MeshLibrary.set_item_navmesh(0,NavigationMesh.new())
			q_MeshLibrary.set_item_navmesh_transform(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
			q_MeshLibrary.set_item_preview(0,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			q_MeshLibrary.set_item_shapes(0,[BoxShape.new(),BoxShape.new()])
			
			q_MeshLibrary.remove_item(0) #MOVED
			
			if Autoload.WRONG_BUGS:
				q_MeshLibrary.clear()
				q_MeshLibrary.create_item(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				qq += str(q_MeshLibrary.find_item_by_name("Dokumenty"))
				
				qq += str(q_MeshLibrary.get_item_list())
				qq += str(q_MeshLibrary.get_item_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_item_name(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_item_navmesh(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_item_navmesh_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_item_preview(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_item_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(q_MeshLibrary.get_last_unused_item_id())
				
				###MOVEDq_MeshLibrary.remove_item(
				
				q_MeshLibrary.set_item_mesh(randi() % Autoload.RANGE - Autoload.RANGE / 2,CubeMesh.new())
				q_MeshLibrary.set_item_name(randi() % Autoload.RANGE - Autoload.RANGE / 2,"Kukurydza")
				q_MeshLibrary.set_item_navmesh(randi() % Autoload.RANGE - Autoload.RANGE / 2,NavigationMesh.new())
				q_MeshLibrary.set_item_navmesh_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				q_MeshLibrary.set_item_preview(randi() % Autoload.RANGE - Autoload.RANGE / 2,Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				q_MeshLibrary.set_item_shapes(randi() % Autoload.RANGE - Autoload.RANGE / 2,[BoxShape.new(),BoxShape.new()])
				
				q_MeshLibrary.remove_item(randi() % Autoload.RANGE - Autoload.RANGE / 2) #MOVED

		else: #RANDI
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
