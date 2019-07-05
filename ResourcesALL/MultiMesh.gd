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
		
		var q_MultiMesh : MultiMesh = MultiMesh.new()
		
#		q_MultiMesh.set_color_format(randi() % 3) #ColorFormat
#		q_MultiMesh.set_transform_format(randi() % 2) #TransformFormat
#		q_MultiMesh.set_custom_data_format(randi() % 3) #ColorDataFormat
		q_MultiMesh.set_instance_count(randi()%50)
		q_MultiMesh.set_visible_instance_count(randi()%50)
		q_MultiMesh.set_mesh(CubeMesh.new())
		
#		qq += str(q_MultiMesh.get_aabb())
#		qq += str(q_MultiMesh.get_instance_color( 0 ))
#		qq += str(q_MultiMesh.get_instance_custom_data( 0 ))
#		qq += str(q_MultiMesh.get_instance_transform( 0 ))
#		qq += str(q_MultiMesh.get_instance_transform_2d( 0 ))
		
#		q_MultiMesh.set_as_bulk_array( PoolRealArray([125125.125,12512.1251,122.124]))
#		q_MultiMesh.set_instance_color( 0, Color(randf(),randf(),randf(),randf()))
#		q_MultiMesh.set_instance_custom_data( 0, Color(randf(),randf(),randf(),randf()))
#		q_MultiMesh.set_instance_transform( 0, Transform(Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50),Vector3(randf() * 50,randf() * 50,randf() * 50)))
#		q_MultiMesh.set_instance_transform_2d( 0,Transform2D(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		
		if Autoload.WRONG_BUGS:
			q_MultiMesh.set_color_format(randi() % 1000 - 500) #ColorFormat
			q_MultiMesh.set_transform_format(randi() % 1000 - 500) #TransformFormat
			q_MultiMesh.set_custom_data_format(randi() % 1000 - 500) #ColorDataFormat
			q_MultiMesh.set_instance_count(randi() % 1000 - 500)
			q_MultiMesh.set_visible_instance_count(randi() % 1000 - 500)
			q_MultiMesh.set_mesh(CubeMesh.new())
			
			qq += str(q_MultiMesh.get_aabb())
			qq += str(q_MultiMesh.get_instance_color(randi() % 1000 - 500 ))
			qq += str(q_MultiMesh.get_instance_custom_data(randi() % 1000 - 500 ))
			qq += str(q_MultiMesh.get_instance_transform(randi() % 1000 - 500 ))
			qq += str(q_MultiMesh.get_instance_transform_2d(randi() % 1000 - 500 ))
			
			q_MultiMesh.set_as_bulk_array( PoolRealArray([125125.125,12512.1251,122.124]))
			q_MultiMesh.set_instance_color(randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()))
			q_MultiMesh.set_instance_custom_data(randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()))
			q_MultiMesh.set_instance_transform(randi() % 1000 - 500, Transform(Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500),Vector3(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)))
			q_MultiMesh.set_instance_transform_2d(randi() % 1000 - 500,Transform2D(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 50)))
