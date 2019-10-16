extends StaticBody2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		AutoObjects.A_Object(self)
		AutoObjects.A_Node(self)
		AutoObjects.A_CanvasItem(self)
		AutoObjects.A_Node2D(self)
		AutoObjects.A_CollisionObject2D(self)
		AutoObjects.A_PhysicsBody2D(self)
		nodeFunction(self)

func nodeFunction(q_StaticBody2D : StaticBody2D) -> void:

	if randi() % 2 == 1:
		q_StaticBody2D.set_constant_linear_velocity(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_StaticBody2D.set_constant_angular_velocity(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody2D.set_friction(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody2D.set_bounce(Autoload.get_float())
	if randi() % 2 == 1:
		q_StaticBody2D.set_physics_material_override(Autoload.loadA("PhysicsMaterial.tres"))
