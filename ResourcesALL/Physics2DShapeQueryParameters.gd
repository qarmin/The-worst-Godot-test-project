extends Node2D

var q_PhysicsShapeQueryParameters2D : PhysicsShapeQueryParameters2D = PhysicsShapeQueryParameters2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PhysicsShapeQueryParameters2D,true)

func nodeFunction(q_PhysicsShapeQueryParameters2D : PhysicsShapeQueryParameters2D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PhysicsShapeQueryParameters2D = PhysicsShapeQueryParameters2D.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_PhysicsShapeQueryParameters2D)
		
	### START TEMP
	var temp_BoxShape3D : BoxShape3D = BoxShape3D.new()
	AutoResourcesBoxShape.nodeFunction(temp_BoxShape3D)
	
	### END TEMP

	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_collision_layer(Autoload.get_int())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_exclude(Autoload.get_array())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_margin(Autoload.get_float())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_motion(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_shape_rid(RID())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_transform(Autoload.get_transform2d())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_collide_with_bodies(Autoload.get_bool())
	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_collide_with_areas(Autoload.get_bool())

	if randi() % 2 == 1:
		q_PhysicsShapeQueryParameters2D.set_shape(temp_BoxShape3D)
