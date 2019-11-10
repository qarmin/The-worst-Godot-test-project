extends StaticBody2D

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self,true)

func nodeFunction(q_StaticBody2D : StaticBody2D, can_reset : bool = false) -> void:

	if randi()%2 == 1:
		AutoObjects.A_Object(q_StaticBody2D)
		AutoObjects.A_Node(q_StaticBody2D)
		AutoObjects.A_CanvasItem(q_StaticBody2D)
		AutoObjects.A_Node2D(q_StaticBody2D)
		AutoObjects.A_CollisionObject2D(q_StaticBody2D)
		AutoObjects.A_PhysicsBody2D(q_StaticBody2D)
		
	### START TEMP
	var temp_PhysicsMaterial : PhysicsMaterial = PhysicsMaterial.new()
#?#	AutoResourcesPhysicsMaterial.nodeFunction(temp_PhysicsMaterial)
	
	### END TEMP
	
	
	if randi() % 2 == 1:
		q_StaticBody2D.set_constant_linear_velocity(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_StaticBody2D.set_constant_angular_velocity(Autoload.get_float())
	if Autoload.NOT_A_BUG:
		if randi() % 2 == 1:
			q_StaticBody2D.set_friction(Autoload.get_float())
		if randi() % 2 == 1:
			q_StaticBody2D.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody2D.set_physics_material_override(temp_PhysicsMaterial)
