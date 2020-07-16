extends Tween

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_Tween: Tween, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Tween)
		AutoObjects.A_Node(q_Tween)

	if randi() % 2 == 1:
		q_Tween.set_repeat(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tween.set_tween_process_mode(Autoload.get_int())  # TweenProcessMode
	if randi() % 2 == 1:
		q_Tween.set_speed_scale(Autoload.get_float())

	if randi() % 2 == 1:
		q_Tween.follow_method(
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_int(),
			Autoload.get_int(),
			Autoload.get_float()
		)  # TransitionType, EaseType
	if randi() % 2 == 1:
		q_Tween.follow_property(
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_int(),
			Autoload.get_int(),
			Autoload.get_float()
		)  # TransitionType, EaseType

	if randi() % 2 == 1:
		q_Tween.get_runtime()

	if randi() % 2 == 1:
		q_Tween.interpolate_callback(
			Autoload.get_nodes(q_Tween), Autoload.get_float(), Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float()
		)
	if randi() % 2 == 1:
		q_Tween.interpolate_deferred_callback(
			Autoload.get_nodes(q_Tween), Autoload.get_float(), Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float()
		)
	if randi() % 2 == 1:
		q_Tween.interpolate_method(
			Autoload.get_nodes(q_Tween), Autoload.get_string(), Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(), Autoload.get_float()
		)  # TransitionType, EaseType
	if randi() % 2 == 1:
		q_Tween.interpolate_property(
			Autoload.get_nodes(q_Tween), Autoload.get_string(), Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(), Autoload.get_float()
		)  # TransitionType, EaseType

	if randi() % 2 == 1:
		q_Tween.is_active()

	if randi() % 2 == 1:
		q_Tween.remove(q_Tween.get_parent(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tween.remove_all()

	if randi() % 2 == 1:
		q_Tween.reset(get_parent(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tween.reset_all()
	if randi() % 2 == 1:
		q_Tween.resume(get_parent(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tween.resume_all()
	if randi() % 2 == 1:
		q_Tween.set_active(Autoload.get_bool())
	if randi() % 2 == 1:
		q_Tween.start()
	if randi() % 2 == 1:
		q_Tween.stop(get_parent(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Tween.stop_all()

	if randi() % 2 == 1:
		q_Tween.targeting_method(
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_int(),
			Autoload.get_int(),
			Autoload.get_float()
		)  # TransitionType, EaseType
	if randi() % 2 == 1:
		q_Tween.targeting_property(
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_nodes(q_Tween),
			Autoload.get_string(),
			Autoload.get_string(),
			Autoload.get_float(),
			Autoload.get_int(),
			Autoload.get_int(),
			Autoload.get_float()
		)  # TransitionType, EaseType

	if randi() % 2 == 1:
		q_Tween.tell()
