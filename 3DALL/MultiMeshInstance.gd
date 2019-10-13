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
			
		var MM : MultiMesh = MultiMesh.new()
		
		if randi() % 2 == 1:
			MM = MultiMesh.new()
			
		if randi() % 2 == 1:
			MM.set_color_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_transform_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_custom_data_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_instance_count(randi() % 4 - 2)
		if randi() % 2 == 1:
			MM.set_visible_instance_count(Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			MM.set_mesh(CubeMesh.new())
			
		if randi() % 2 == 1:
			qq += str(MM.get_aabb())
			#BUG qq += str(MM.get_instance_color(Autoload.get_int()))
			#BUG qq += str(MM.get_instance_custom_data(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(MM.get_instance_transform(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(MM.get_instance_transform_2d(Autoload.get_int()))
	
		if randi() % 2 == 1:
			MM.set_as_bulk_array(PoolRealArray([Autoload.get_float(),Autoload.get_float(),Autoload.get_float()]))
			#BUG MM.set_instance_color(Autoload.get_int(),Autoload.get_color())
			#BUG MM.set_instance_custom_data(Autoload.get_int(),Autoload.get_color())
		if randi() % 2 == 1:
			MM.set_instance_transform(Autoload.get_int(),Transform(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
		if randi() % 2 == 1:
			MM.set_instance_transform_2d(Autoload.get_int(),Autoload.get_transform2d())
			
			set_multimesh(MM)
