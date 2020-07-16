extends Node2D

var q_PhysicsShapeQueryParameters3D: PhysicsShapeQueryParameters3D = PhysicsShapeQueryParameters3D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PhysicsShapeQueryParameters3D, true)


func nodeFunction(q_PhysicsShapeQueryParameters3D: PhysicsShapeQueryParameters3D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters3D = PhysicsShapeQueryParameters3D.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_PhysicsShapeQueryParameters3D)

	### START TEMP
	var temp_BoxShape3D: BoxShape3D = BoxShape3D.new()
	AutoResourcesBoxShape.nodeFunction(temp_BoxShape3D)

	### END TEMP

	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_collision_mask(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_exclude(Autoload.get_array())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_shape_rid(RID())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_transform(Autoload.get_transform())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_collide_with_bodies(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_collide_with_areas(Autoload.get_bool())

	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters3D.set_shape(temp_BoxShape3D)
