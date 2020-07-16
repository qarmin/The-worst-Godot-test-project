extends Node2D

var q_Vector2: Vector2 = Autoload.get_vector2()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Vector2, true)


func nodeFunction(q_Vector2: Vector2, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Vector2 = Autoload.get_vector2()

	if randi() % 2 == 1:
		q_Vector2.angle()
	if randi() % 2 == 1:
		q_Vector2.angle_to(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.angle_to_point(Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Vector2.aspect()
	if randi() % 2 == 1:
		q_Vector2.bounce(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.ceil()
	if randi() % 2 == 1:
		q_Vector2.clamped(Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.cross(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.cubic_interpolate(Autoload.get_vector2(), Autoload.get_vector2(), Autoload.get_vector2(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.direction_to(Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Vector2.distance_squared_to(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.distance_to(Autoload.get_vector2())

	if randi() % 2 == 1:
		q_Vector2.dot(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.floor()
	if randi() % 2 == 1:
		q_Vector2.is_normalized()

	if randi() % 2 == 1:
		q_Vector2.length()
	if randi() % 2 == 1:
		q_Vector2.length_squared()

	if randi() % 2 == 1:
		q_Vector2.lerp(Autoload.get_vector2(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.move_toward(Autoload.get_vector2(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.normalized()
	if randi() % 2 == 1:
		q_Vector2.project(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.reflect(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.rotated(Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.round()
	if randi() % 2 == 1:
		q_Vector2.slerp(Autoload.get_vector2(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Vector2.slide(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.snapped(Autoload.get_vector2())
	if randi() % 2 == 1:
		q_Vector2.tangent()
