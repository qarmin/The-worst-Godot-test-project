extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		if randi() % 2 == 1:
			print("asf")
		if randi() % 2 == 1:
			qq += str(Color8(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(ColorN("rafqwwr",randf()))
			
		if randi() % 2 == 1:
			qq += str(abs(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(acos(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(asin(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			#assert(bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(atan(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(atan2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
			#qq += str(bytes2var(PoolByteArray([215,125,12,125,215,125,215,21]),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(cartesian2polar(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(ceil(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(char(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(clamp(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			#qq += str(convert(Texture.new(), 12))
			
		if randi() % 2 == 1:
			qq += str(cos(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(cosh(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(db2linear(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(decimals(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(dectime(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(deg2rad(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			#qq += str(dict2inst({"asfaf":12,"asfqw": 2156}))
		if randi() % 2 == 1:
			qq += str(ease(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(exp(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(floor(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(fmod(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(fposmod(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(funcref(self,"_ready"))
		if randi() % 2 == 1:
			qq += str(get_stack())
		if randi() % 2 == 1:
			qq += str(hash(String("asf")))
			
			#qq += str(inst2dict(Texture.new()))
		if randi() % 2 == 1:
			qq += str(instance_from_id(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(inverse_lerp(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(is_equal_approx(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_inf(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_instance_valid(self))
		if randi() % 2 == 1:
			qq += str(is_nan(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(is_zero_approx(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(len(String("asf")))
		if randi() % 2 == 1:
			qq += str(lerp(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(linear2db(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(Autoload.loadA("res://RES/Sprite1.png"))
		if randi() % 2 == 1:
			qq += str(log(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(max(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(min(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(move_toward(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(nearest_po2(randi()%50))
		if randi() % 2 == 1:
			qq += str(parse_json("asasgqewg,egainfaui"))
		if randi() % 2 == 1:
			qq += str(polar2cartesian(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(pow(randf() * 50,randf() * 50))
		if randi() % 2 == 1:
			qq += str(preload("res://RES/Sprite1.png"))
			
		if randi() % 2 == 1:
			print("safwaw")
		if randi() % 2 == 1:
			print_debug("asfqwg")
		if randi() % 2 == 1:
			print_stack()
		if randi() % 2 == 1:
			printerr("asfqwg")
		if randi() % 2 == 1:
			printraw("asfqwg")
		if randi() % 2 == 1:
			prints("asfqwg")
		if randi() % 2 == 1:
			printt("asfqwg")
			
		if randi() % 2 == 1:
			push_error("asfqwg")
		if randi() % 2 == 1:
			push_warning("asfqwg")
			
		if randi() % 2 == 1:
			qq += str(rad2deg(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(rand_range(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(rand_seed(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(randf())
		if randi() % 2 == 1:
			qq += str(randi())
		if randi() % 2 == 1:
			randomize()
		if randi() % 2 == 1:
			qq += str(range(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi()%500 + 1))
		if randi() % 2 == 1:
			qq += str(range_lerp(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(round(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(seed(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(sign(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(sin(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(sinh(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(smoothstep(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(sqrt(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(step_decimals(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(stepify(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(str(2152153))
		if randi() % 2 == 1:
			qq += str(str2var("asfqwgqgqfa"))
			
		if randi() % 2 == 1:
			qq += str(tan(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(tanh(randf() * Autoload.RANGE - Autoload.RANGE / 2))
			
		if randi() % 2 == 1:
			qq += str(to_json(String("asfasqw")))
			
		if randi() % 2 == 1:
			qq += str(type_exists("asfqwqa"))
		if randi() % 2 == 1:
			qq += str(typeof(String("adgqwfadf")))
			
		if randi() % 2 == 1:
			qq += str(validate_json("asfqwfasf"))
			
		if randi() % 2 == 1:
			qq += str(var2bytes(bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(var2str(String("adgqwfadf")))
		if randi() % 2 == 1:
			qq += str(weakref(get_parent()))
			
		if randi() % 2 == 1:
			qq += str(wrapf(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			qq += str(wrapi(randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2,randi() % Autoload.RANGE - Autoload.RANGE / 2))
			
