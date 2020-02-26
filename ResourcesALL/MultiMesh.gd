extends Node2D

var q_MultiMesh : MultiMesh = MultiMesh.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_MultiMesh,true)

func nodeFunction(q_MultiMesh : MultiMesh, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_MultiMesh = MultiMesh.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_MultiMesh)
	### START TEMP	
	var temp_CubeMesh : CubeMesh = CubeMesh.new()
#?#	AutoResourcesCubeMesh.nodeFunction(temp_CubeMesh)
	
	### END TEMP

#	if randi() % 2 == 1: #MISSING
#		q_MultiMesh.set_color_format(Autoload.get_int()) #ColorFormat
#	if randi() % 2 == 1:
#		q_MultiMesh.set_transform_format(Autoload.get_int()) #TransformFormat
#	if randi() % 2 == 1:
#		q_MultiMesh.set_custom_data_format(Autoload.get_int()) #ColorDataFormat
#	if randi() % 2 == 1:
#		q_MultiMesh.set_instance_count(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_visible_instance_count(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_mesh(temp_CubeMesh)
#
#	if randi() % 2 == 1:
#		q_MultiMesh.get_aabb()
#	if randi() % 2 == 1:
#		q_MultiMesh.get_instance_color(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_MultiMesh.get_instance_custom_data(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_MultiMesh.get_instance_transform(Autoload.get_int())
#	if randi() % 2 == 1:
#		q_MultiMesh.get_instance_transform_2d(Autoload.get_int())
#
#	if randi() % 2 == 1:
#		q_MultiMesh.set_as_bulk_array( Autoload.get_packedfloat32array())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_instance_color(Autoload.get_int(), Autoload.get_color())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_instance_custom_data(Autoload.get_int(), Autoload.get_color())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_instance_transform(Autoload.get_int(), Autoload.get_transform())
#	if randi() % 2 == 1:
#		q_MultiMesh.set_instance_transform_2d(Autoload.get_int(),Autoload.get_transform2d())
