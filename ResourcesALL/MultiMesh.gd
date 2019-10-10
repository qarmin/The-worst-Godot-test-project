extends Node2D

var q_MultiMesh : MultiMesh = MultiMesh.new()
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
			q_MultiMesh = MultiMesh.new()
			
		
		if randi() % 2 == 1:
			q_MultiMesh.set_color_format(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ColorFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_transform_format(randi() % Autoload.RANGE - Autoload.RANGE / 2) #TransformFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_custom_data_format(randi() % Autoload.RANGE - Autoload.RANGE / 2) #ColorDataFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MultiMesh.set_visible_instance_count(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_MultiMesh.set_mesh(CubeMesh.new())
			
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_aabb())
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			
		if randi() % 2 == 1:
			q_MultiMesh.set_as_bulk_array( PoolRealArray([125125.125,12512.1251,122.124]))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_color(randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_custom_data(randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_transform(randi() % Autoload.RANGE - Autoload.RANGE / 2, Transform(Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector3(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_transform_2d(randi() % Autoload.RANGE - Autoload.RANGE / 2,Transform2D(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2),Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * 50)))
