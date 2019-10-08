extends MultiMeshInstance

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
			
			var MM : MultiMesh = MultiMesh.new()
			
			MM.set_color_format(randi() % 3)
			MM.set_transform_format(randi() % 2)
			MM.set_custom_data_format(randi() % 3)
			MM.set_instance_count(randi()%4)
			MM.set_visible_instance_count(randi()%50 + 5)
			MM.set_mesh(CubeMesh.new())
			
			qq += str(MM.get_aabb())
	#		qq += str(MM.get_instance_color(0))
	#		qq += str(MM.get_instance_custom_data(0))
	#		qq += str(MM.get_instance_transform(0))
	#		qq += str(MM.get_instance_transform_2d(0))
			
	#		MM.set_as_bulk_array(PoolRealArray([randf() * 50,randf() * 50,randf() * 50]))
	#		MM.set_instance_color(0,Color(randf(),randf(),randf(),randf()))
	#		MM.set_instance_custom_data(0,Color(randf(),randf(),randf(),randf()))
	#		MM.set_instance_transform(0,Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
	#		MM.set_instance_transform_2d(0,Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
			
			set_multimesh(MM)
	
			if Autoload.WRONG_BUGS:
				MM = MultiMesh.new()
				
				MM.set_color_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				MM.set_transform_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				MM.set_custom_data_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				MM.set_instance_count(randi() % 4 - 2)
				MM.set_visible_instance_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				MM.set_mesh(CubeMesh.new())
				
				qq += str(MM.get_aabb())
				#BUG qq += str(MM.get_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				#BUG qq += str(MM.get_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(MM.get_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				qq += str(MM.get_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		
				MM.set_as_bulk_array(PoolRealArray([randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2]))
				#BUG MM.set_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
				#BUG MM.set_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
				MM.set_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				MM.set_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				
				set_multimesh(MM)
		else: #RANDI
			var MM : MultiMesh = MultiMesh.new()
			
			if randi() % 2 == 1:
				MM = MultiMesh.new()
				
			if randi() % 2 == 1:
				MM.set_color_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				MM.set_transform_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				MM.set_custom_data_format(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				MM.set_instance_count(randi() % 4 - 2)
			if randi() % 2 == 1:
				MM.set_visible_instance_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				MM.set_mesh(CubeMesh.new())
				
			if randi() % 2 == 1:
				qq += str(MM.get_aabb())
				#BUG qq += str(MM.get_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				#BUG qq += str(MM.get_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(MM.get_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				qq += str(MM.get_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		
			if randi() % 2 == 1:
				MM.set_as_bulk_array(PoolRealArray([randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2]))
				#BUG MM.set_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
				#BUG MM.set_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				MM.set_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
			if randi() % 2 == 1:
				MM.set_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
				
				set_multimesh(MM)
