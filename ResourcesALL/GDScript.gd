extends Node2D

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			print(Autoload.get_string())
		if randi() % 2 == 1:
			Color8(Autoload.get_int(), Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			ColorN(Autoload.get_string(), Autoload.get_float())

		if randi() % 2 == 1:
			abs(Autoload.get_float())
		if randi() % 2 == 1:
			acos(Autoload.get_float())
		if randi() % 2 == 1:
			asin(Autoload.get_float())
			#assert(Autoload.get_bool())

		if randi() % 2 == 1:
			atan(Autoload.get_float())
		if randi() % 2 == 1:
			atan2(Autoload.get_float(), Autoload.get_float())

			#bytes2var(Autoload.get_packedbytearray,Autoload.get_bool())
		if randi() % 2 == 1:
			cartesian2polar(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			ceil(Autoload.get_float())
		if randi() % 2 == 1:
			char(Autoload.get_int())
		if randi() % 2 == 1:
			clamp(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
			#convert(Texture.new(), 12)

		if randi() % 2 == 1:
			cos(Autoload.get_float())
		if randi() % 2 == 1:
			cosh(Autoload.get_float())

		if randi() % 2 == 1:
			db2linear(Autoload.get_float())

		if randi() % 2 == 1:
			dectime(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())

		if randi() % 2 == 1:
			deg2rad(Autoload.get_float())

			#dict2inst()
		if randi() % 2 == 1:
			ease(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			exp(Autoload.get_float())
		if randi() % 2 == 1:
			floor(Autoload.get_float())
		if randi() % 2 == 1:
			fmod(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			fposmod(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			funcref(self, Autoload.get_string())
		if randi() % 2 == 1:
			get_stack()
		if randi() % 2 == 1:
			hash(Autoload.get_string())

		if randi() % 2 == 1:
			inst2dict(Texture.new())
		if randi() % 2 == 1:
			instance_from_id(Autoload.get_int())

		if randi() % 2 == 1:
			inverse_lerp(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())

		if randi() % 2 == 1:
			is_equal_approx(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			is_inf(Autoload.get_float())
		if randi() % 2 == 1:
			is_instance_valid(self)
		if randi() % 2 == 1:
			is_nan(Autoload.get_float())
		if randi() % 2 == 1:
			is_zero_approx(Autoload.get_float())
		if randi() % 2 == 1:
			len(Autoload.get_string())
		if randi() % 2 == 1:
			lerp(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			linear2db(Autoload.get_float())
		if randi() % 2 == 1:
			log(Autoload.get_float())
		if randi() % 2 == 1:
			max(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			Autoload.get_floatf(Autoload.get_float())
		if randi() % 2 == 1:
			move_toward(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			nearest_po2(Autoload.get_int())
		if randi() % 2 == 1:
			parse_json(Autoload.get_string())
		if randi() % 2 == 1:
			polar2cartesian(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			pow(Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			preload("res://icon.png")

		if randi() % 2 == 1:
			print(Autoload.get_string())
		if randi() % 2 == 1:
			print_debug(Autoload.get_string())
		if randi() % 2 == 1:
			print_stack()
		if randi() % 2 == 1:
			printerr(Autoload.get_string())
		if randi() % 2 == 1:
			printraw(Autoload.get_string())
		if randi() % 2 == 1:
			prints(Autoload.get_string())
		if randi() % 2 == 1:
			printt(Autoload.get_string())

		if Autoload.NOT_A_BUG:
			if randi() % 2 == 1:
				push_error(Autoload.get_string())
			if randi() % 2 == 1:
				push_warning(Autoload.get_string())

		if randi() % 2 == 1:
			rad2deg(Autoload.get_float())

		if randi() % 2 == 1:
			rand_range(Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			rand_seed(Autoload.get_int())
		if randi() % 2 == 1:
			randf()
		if randi() % 2 == 1:
			randi()
		if randi() % 2 == 1:
			randomize()
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				range(Autoload.get_int(), Autoload.get_int(), max(Autoload.get_int(), 1))
		if randi() % 2 == 1:
			range_lerp(Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float(), Autoload.get_float())

		if randi() % 2 == 1:
			round(Autoload.get_float())
		if randi() % 2 == 1:
			seed(Autoload.get_int())
		if randi() % 2 == 1:
			sign(Autoload.get_float())

		if randi() % 2 == 1:
			sin(Autoload.get_float())
		if randi() % 2 == 1:
			sinh(Autoload.get_float())

		if randi() % 2 == 1:
			smoothstep(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			sqrt(Autoload.get_float())

		if randi() % 2 == 1:
			step_decimals(Autoload.get_float())
		if randi() % 2 == 1:
			stepify(Autoload.get_float(), Autoload.get_float())

		if randi() % 2 == 1:
			pass
		if randi() % 2 == 1:
			str2var(Autoload.get_string())

		if randi() % 2 == 1:
			tan(Autoload.get_float())
		if randi() % 2 == 1:
			tanh(Autoload.get_float())

		if randi() % 2 == 1:
			to_json(Autoload.get_string())

		if randi() % 2 == 1:
			type_exists(Autoload.get_string())
		if randi() % 2 == 1:
			typeof(Autoload.get_string())

		if randi() % 2 == 1:
			validate_json(Autoload.get_string())

		if randi() % 2 == 1:
			var2bytes(Autoload.get_bool())
		if randi() % 2 == 1:
			var2str(Autoload.get_string())
		if randi() % 2 == 1:
			weakref(get_parent())

		if randi() % 2 == 1:
			wrapf(Autoload.get_float(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			wrapi(Autoload.get_int(), Autoload.get_int(), Autoload.get_int())
