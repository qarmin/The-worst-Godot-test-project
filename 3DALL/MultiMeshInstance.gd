extends MultiMeshInstance

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		var MM : MultiMesh = MultiMesh.new()

		if randi() % 2 == 1:
			MM.set_color_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_transform_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_custom_data_format(Autoload.get_int())
		if randi() % 2 == 1:
			MM.set_instance_count(Autoload.get_inti(5))
		if randi() % 2 == 1:
			MM.set_visible_instance_count(Autoload.get_int())
#	BUG	if randi() % 2 == 1:
#			MM.set_mesh(Autoload.loadA("CubeMesh.tres"))

		if randi() % 2 == 1:
			Autoload.qq = str(MM.get_aabb())
			#BUG Autoload.qq = str(MM.get_instance_color(Autoload.get_int()))
			#BUG Autoload.qq = str(MM.get_instance_custom_data(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(MM.get_instance_transform(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(MM.get_instance_transform_2d(Autoload.get_int()))

		if randi() % 2 == 1:
			MM.set_as_bulk_array(Autoload.get_poolrealarray())
			#BUG MM.set_instance_color(Autoload.get_int(),Autoload.get_color())
			#BUG MM.set_instance_custom_data(Autoload.get_int(),Autoload.get_color())
		if randi() % 2 == 1:
			MM.set_instance_transform(Autoload.get_int(),Autoload.get_transform())
		if randi() % 2 == 1:
			MM.set_instance_transform_2d(Autoload.get_int(),Autoload.get_transform2d())

			set_multimesh(MM)
