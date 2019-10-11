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
			qq += str(Color8(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(ColorN("rafqwwr",randf()))
			
		if randi() % 2 == 1:
			qq += str(abs(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(acos(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(asin(Autoload.get_randf()))
			#assert(bool(randi()%2))
			
		if randi() % 2 == 1:
			qq += str(atan(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(atan2(Autoload.get_randf(),Autoload.get_randf()))
			
			#qq += str(bytes2var(PoolByteArray([215,125,12,125,215,125,215,21]),bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(cartesian2polar(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(ceil(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(char(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(clamp(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			#qq += str(convert(Texture.new(), 12))
			
		if randi() % 2 == 1:
			qq += str(cos(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(cosh(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(db2linear(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(decimals(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(dectime(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(deg2rad(Autoload.get_randf()))
			#qq += str(dict2inst({"asfaf":12,"asfqw": 2156}))
		if randi() % 2 == 1:
			qq += str(ease(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(exp(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(floor(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(fmod(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(fposmod(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(funcref(self,"_ready"))
		if randi() % 2 == 1:
			qq += str(get_stack())
		if randi() % 2 == 1:
			qq += str(hash(String("asf")))
			
			#qq += str(inst2dict(Texture.new()))
		if randi() % 2 == 1:
			qq += str(instance_from_id(Autoload.get_randi()))
			
		if randi() % 2 == 1:
			qq += str(inverse_lerp(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(is_equal_approx(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(is_inf(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(is_instance_valid(self))
		if randi() % 2 == 1:
			qq += str(is_nan(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(is_zero_approx(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(len(String("asf")))
		if randi() % 2 == 1:
			qq += str(lerp(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(linear2db(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(Autoload.loadA("res://RES/Sprite1.png"))
		if randi() % 2 == 1:
			qq += str(log(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(max(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(min(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(move_toward(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(nearest_po2(randi()%50))
		if randi() % 2 == 1:
			qq += str(parse_json("asasgqewg,egainfaui"))
		if randi() % 2 == 1:
			qq += str(polar2cartesian(Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(pow(randf() * 50,randf() * 50))
		if randi() % 2 == 1:
			qq += str(preload("res://RES/Sprite.png"))
			
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
			qq += str(rad2deg(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(rand_range(Autoload.get_randi(),Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(rand_seed(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(randf())
		if randi() % 2 == 1:
			qq += str(randi())
		if randi() % 2 == 1:
			randomize()
		if randi() % 2 == 1:
			qq += str(range(Autoload.get_randi(),Autoload.get_randi(),randi()%500 + 1))
		if randi() % 2 == 1:
			qq += str(range_lerp(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(round(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(seed(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(sign(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(sin(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(sinh(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(smoothstep(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(sqrt(Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(step_decimals(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(stepify(Autoload.get_randf(),Autoload.get_randf()))
			
		if randi() % 2 == 1:
			qq += str(str(2152153))
		if randi() % 2 == 1:
			qq += str(str2var("asfqwgqgqfa"))
			
		if randi() % 2 == 1:
			qq += str(tan(Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(tanh(Autoload.get_randf()))
			
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
			qq += str(wrapf(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(wrapi(Autoload.get_randi(),Autoload.get_randi(),Autoload.get_randi()))
			
