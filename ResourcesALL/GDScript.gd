extends Node2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			print(Autoload.get_string())
		if randi() % 2 == 1:
			Autoload.qq = str(Color8(Autoload.get_int(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(ColorN(Autoload.get_string(),Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(abs(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(acos(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(asin(Autoload.get_float()))
			#assert(Autoload.get_bool())

		if randi() % 2 == 1:
			Autoload.qq = str(atan(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(atan2(Autoload.get_float(),Autoload.get_float()))

			#Autoload.qq = str(bytes2var(Autoload.get_poolbytearray,Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(cartesian2polar(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(ceil(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(char(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(clamp(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))
			#Autoload.qq = str(convert(Texture.new(), 12))

		if randi() % 2 == 1:
			Autoload.qq = str(cos(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(cosh(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(db2linear(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(decimals(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(dectime(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(deg2rad(Autoload.get_float()))
			#Autoload.qq = str(dict2inst(Autoload.get_dictionary()))
		if randi() % 2 == 1:
			Autoload.qq = str(ease(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(exp(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(floor(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(fmod(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(fposmod(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(funcref(self,Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(get_stack())
		if randi() % 2 == 1:
			Autoload.qq = str(hash(Autoload.get_string()))

			#Autoload.qq = str(inst2dict(Texture.new()))
		if randi() % 2 == 1:
			Autoload.qq = str(instance_from_id(Autoload.get_int()))

		if randi() % 2 == 1:
			Autoload.qq = str(inverse_lerp(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(is_equal_approx(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_inf(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_instance_valid(self))
		if randi() % 2 == 1:
			Autoload.qq = str(is_nan(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(is_zero_approx(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(len(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(lerp(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(linear2db(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(Autoload.loadA("Sprite.png"))
		if randi() % 2 == 1:
			Autoload.qq = str(log(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(max(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(Autoload.get_floatf(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(move_toward(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(nearest_po2(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(parse_json(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(polar2cartesian(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(pow(Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(preload("res://RES/Sprite.png"))

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

		if randi() % 2 == 1:
			push_error(Autoload.get_string())
		if randi() % 2 == 1:
			push_warning(Autoload.get_string())

		if randi() % 2 == 1:
			Autoload.qq = str(rad2deg(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(rand_range(Autoload.get_int(),Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(rand_seed(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(randf())
		if randi() % 2 == 1:
			Autoload.qq = str(randi())
		if randi() % 2 == 1:
			randomize()
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				Autoload.qq = str(range(Autoload.get_int(),Autoload.get_int(),max(Autoload.get_int(),1)))
		if randi() % 2 == 1:
			Autoload.qq = str(range_lerp(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(round(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(seed(Autoload.get_int()))
		if randi() % 2 == 1:
			Autoload.qq = str(sign(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(sin(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(sinh(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(smoothstep(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(sqrt(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(step_decimals(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(stepify(Autoload.get_float(),Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(2152153)
		if randi() % 2 == 1:
			Autoload.qq = str(str2var(Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(tan(Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(tanh(Autoload.get_float()))

		if randi() % 2 == 1:
			Autoload.qq = str(to_json(Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(type_exists(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(typeof(Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(validate_json(Autoload.get_string()))

		if randi() % 2 == 1:
			Autoload.qq = str(var2bytes(Autoload.get_bool()))
		if randi() % 2 == 1:
			Autoload.qq = str(var2str(Autoload.get_string()))
		if randi() % 2 == 1:
			Autoload.qq = str(weakref(get_parent()))

		if randi() % 2 == 1:
			Autoload.qq = str(wrapf(Autoload.get_float(),Autoload.get_float(),Autoload.get_float()))
		if randi() % 2 == 1:
			Autoload.qq = str(wrapi(Autoload.get_int(),Autoload.get_int(),Autoload.get_int()))

