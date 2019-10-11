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
			q_MultiMesh.set_color_format(Autoload.get_randi()) #ColorFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_transform_format(Autoload.get_randi()) #TransformFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_custom_data_format(Autoload.get_randi()) #ColorDataFormat
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_count(Autoload.get_randi())
		if randi() % 2 == 1:
			q_MultiMesh.set_visible_instance_count(Autoload.get_randi())
#	BUG	if randi() % 2 == 1:
#			q_MultiMesh.set_mesh(CubeMesh.new())
			
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_aabb())
#	BUG	if randi() % 2 == 1:
#			qq += str(q_MultiMesh.get_instance_color(Autoload.get_randi() ))
#	BUG	if randi() % 2 == 1:
#			qq += str(q_MultiMesh.get_instance_custom_data(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_transform(Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_MultiMesh.get_instance_transform_2d(Autoload.get_randi() ))
			
		if randi() % 2 == 1:
			q_MultiMesh.set_as_bulk_array( PoolRealArray([125125.125,12512.1251,122.124]))
#	BUG	if randi() % 2 == 1:
#			q_MultiMesh.set_instance_color(Autoload.get_randi(), Color(randf(),randf(),randf(),randf()))
#	BUG	if randi() % 2 == 1:
#			q_MultiMesh.set_instance_custom_data(Autoload.get_randi(), Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_transform(Autoload.get_randi(), Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_MultiMesh.set_instance_transform_2d(Autoload.get_randi(),Transform2D(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),randf() * 50)))
