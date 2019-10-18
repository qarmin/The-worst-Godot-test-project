extends Tween

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			set_repeat(Autoload.get_bool())
		if randi() % 2 == 1:
			set_tween_process_mode(Autoload.get_int()) # TweenProcessMode
		if randi() % 2 == 1:
			set_speed_scale(Autoload.get_float())

		if randi() % 2 == 1:
			Autoload.qq = str(follow_method(self,Autoload.get_string(),Autoload.get_float(),self,Autoload.get_string(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int(),Autoload.get_float())) # TransitionType, EaseType
		if randi() % 2 == 1:
			Autoload.qq = str(follow_property(self,Autoload.get_string(),Autoload.get_float(),self, Autoload.get_string(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int(),Autoload.get_float()))# TransitionType, EaseType

		if randi() % 2 == 1:
			Autoload.qq = str(get_runtime())

		if randi() % 2 == 1:
			interpolate_callback(self, Autoload.get_float(), Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			interpolate_deferred_callback(self, Autoload.get_float(), Autoload.get_string(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			interpolate_method(self, Autoload.get_string(), Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(),Autoload.get_float())# TransitionType, EaseType
		if randi() % 2 == 1:
			interpolate_property(self, Autoload.get_string(), Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(), Autoload.get_float())# TransitionType, EaseType

		if randi() % 2 == 1:
			Autoload.qq = str(is_active())

		if randi() % 2 == 1:
			Autoload.qq = str(remove(get_parent(), Autoload.get_))
		if randi() % 2 == 1:
			Autoload.qq = str(remove_all())

		if randi() % 2 == 1:
			Autoload.qq = str(reset(get_parent(), Autoload.get_))
		if randi() % 2 == 1:
			Autoload.qq = str(reset_all())
		if randi() % 2 == 1:
			Autoload.qq = str(resume(get_parent(), Autoload.get_))
		if randi() % 2 == 1:
			Autoload.qq = str(resume_all())
		if randi() % 2 == 1:
			set_active(Autoload.get_bool())
		if randi() % 2 == 1:
			Autoload.qq = str(start())
		if randi() % 2 == 1:
			Autoload.qq = str(stop(get_parent(), Autoload.get_))
		if randi() % 2 == 1:
			Autoload.qq = str(stop_all())

		if randi() % 2 == 1:
			targeting_method(self, Autoload.get_string(), self, Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(), Autoload.get_float())# TransitionType, EaseType
		if randi() % 2 == 1:
			targeting_property(self, Autoload.get_string(), self, Autoload.get_string(), Autoload.get_string(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int(), Autoload.get_float())# TransitionType, EaseType

		if randi() % 2 == 1:
			Autoload.qq = str(tell())
