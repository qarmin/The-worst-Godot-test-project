extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		qq += str(Color8(randi()%255,randi()%255,randi()%255,randi()%255))
		qq += str(ColorN("red",randf()))
		
		qq += str(abs(randf() * 50))
		qq += str(acos(randf() * 50))
		qq += str(asin(randf() * 50))
		#assert(bool(randi()%2))
		
		qq += str(atan(randf() * 50))
		qq += str(atan2(randf() * 50,randf() * 50))
		
		#qq += str(bytes2var(PoolByteArray([215,125,12,125,215,125,215,21]),bool(randi()%2)))
		qq += str(cartesian2polar(randf() * 50,randf() * 50))
		qq += str(ceil(randf() * 50))
		qq += str(char(randi() % 255))
		qq += str(clamp(randf() * 50,randf() * 50,randf() * 50))
		#qq += str(convert(Texture.new(), 12))
		
		qq += str(cos(randf() * 50))
		qq += str(cosh(randf() * 50))
		
		qq += str(db2linear(randf() * 50))
		
		#DEPRECATED qq += str(decimals(randf() * 50))
		qq += str(dectime(randf() * 50,randf() * 50,randf() * 50))
		
		qq += str(deg2rad(randf() * 50))
		#qq += str(dict2inst({"asfaf":12,"asfqw": 2156}))
		qq += str(ease(randf() * 50,randf() * 50))
		qq += str(exp(randf() * 50))
		qq += str(floor(randf() * 50))
		qq += str(fmod(randf() * 50,randf() * 50))
		qq += str(fposmod(randf() * 50,randf() * 50))
		#qq += str(funcref(self,"_ready"))
		qq += str(get_stack())
		qq += str(hash(String("asf")))
		
		#qq += str(inst2dict(Texture.new()))
		qq += str(instance_from_id(0))
		
		qq += str(inverse_lerp(randf() * 50,randf() * 50,randf() * 50))
		
		qq += str(is_equal_approx(randf() * 50,randf() * 50))
		qq += str(is_inf(randf() * 50))
		qq += str(is_instance_valid(self))
		qq += str(is_nan(randf() * 50))
		qq += str(is_zero_approx(randf() * 50))
		qq += str(len(String("asf")))
		qq += str(lerp(randf() * 50,randf() * 50,randf() * 50))
		qq += str(linear2db(randf() * 50))
		qq += str(load("res://Sprite1.png"))
		qq += str(log(randf() * 50))
		qq += str(max(randf() * 50,randf() * 50))
		qq += str(min(randf() * 50,randf() * 50))
		qq += str(move_toward(randf() * 50,randf() * 50,randf() * 50))
		qq += str(nearest_po2(randi()%50))
		qq += str(parse_json("asasgqewg,egainfaui"))
		qq += str(polar2cartesian(randf() * 50,randf() * 50))
		qq += str(pow(randf() * 5,randf() * 5))
		#qq += str(preload("res://Sprite1.png"))
		
		###print("safwaw")
		###print_debug("asfqwg")
		###print_stack()
		###printerr("asfqwg")
		###printraw("asfqwg")
		###prints("asfqwg")
		###printt("asfqwg")
		
		#push_error("asfqwg")
		#push_warning("asfqwg")
		
		qq += str(rad2deg(randf() * 50))
		
		qq += str(rand_range(randi()%50,randi()%50))
		qq += str(rand_seed(randi()%50))
		qq += str(randf())
		qq += str(randi())
		randomize()
		qq += str(range(randi()%50,randi()%50,randi()%50 + 1))
		qq += str(range_lerp(randf() * 50,randf() * 50,randf() * 50,randf() * 50,randf() * 50))
		
		qq += str(round(randf() * 50))
		qq += str(seed(randi()%50))
		qq += str(sign(randf() * 50))
		
		qq += str(sin(randf() * 50))
		qq += str(sinh(randf() * 50))
		
		qq += str(smoothstep(randf() * 50,randf() * 50,randf() * 50))
		qq += str(sqrt(randf() * 50))
		
		qq += str(step_decimals(randf() * 50))
		qq += str(stepify(randf() * 50,randf() * 50))
		
		qq += str(str(2152153523423251523523513135623623523))
		qq += str(str2var("asfqwgqgqfa"))
		
		qq += str(tan(randf() * 50))
		qq += str(tanh(randf() * 50))
		
		qq += str(to_json(String("asfasqw")))
		
		qq += str(type_exists("asfqwqa"))
		qq += str(typeof(String("adgqwfadf")))
		
		qq += str(validate_json("asfqwfasf"))
		
		qq += str(var2bytes(bool(randi()%2)))
		qq += str(var2str(String("adgqwfadf")))
		qq += str(weakref(get_parent()))
		
		qq += str(wrapf(randf() * 50,randf() * 50,randf() * 50))
		qq += str(wrapi(randi()%50,randi()%50,randi()%50))
		
		#qq += str(yield(self,"draw"))
		
		if Autoload.WRONG_BUGS:
			print("asf")
			qq += str(Color8(randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500))
			qq += str(ColorN("rafqwwr",randf()))
			
			qq += str(abs(randf() * 1000 - 500))
			qq += str(acos(randf() * 1000 - 500))
			qq += str(asin(randf() * 1000 - 500))
			#assert(bool(randi()%2))
			
			qq += str(atan(randf() * 1000 - 500))
			qq += str(atan2(randf() * 1000 - 500,randf() * 1000 - 500))
			
			#qq += str(bytes2var(PoolByteArray([215,125,12,125,215,125,215,21]),bool(randi()%2)))
			qq += str(cartesian2polar(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(ceil(randf() * 1000 - 500))
			qq += str(char(randi() % 1000 - 500))
			qq += str(clamp(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			#qq += str(convert(Texture.new(), 12))
			
			qq += str(cos(randf() * 1000 - 500))
			qq += str(cosh(randf() * 1000 - 500))
			
			qq += str(db2linear(randf() * 1000 - 500))
			
			qq += str(decimals(randf() * 1000 - 500))
			qq += str(dectime(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			
			qq += str(deg2rad(randf() * 1000 - 500))
			#qq += str(dict2inst({"asfaf":12,"asfqw": 2156}))
			qq += str(ease(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(exp(randf() * 1000 - 500))
			qq += str(floor(randf() * 1000 - 500))
			qq += str(fmod(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(fposmod(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(funcref(self,"_ready"))
			qq += str(get_stack())
			qq += str(hash(String("asf")))
			
			#qq += str(inst2dict(Texture.new()))
			qq += str(instance_from_id(randi() % 1000 - 500))
			
			qq += str(inverse_lerp(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			
			qq += str(is_equal_approx(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(is_inf(randf() * 1000 - 500))
			qq += str(is_instance_valid(self))
			qq += str(is_nan(randf() * 1000 - 500))
			qq += str(is_zero_approx(randf() * 1000 - 500))
			qq += str(len(String("asf")))
			qq += str(lerp(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(linear2db(randf() * 1000 - 500))
			qq += str(load("res://Sprite1.png"))
			qq += str(log(randf() * 1000 - 500))
			qq += str(max(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(min(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(move_toward(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(nearest_po2(randi()%50))
			qq += str(parse_json("asasgqewg,egainfaui"))
			qq += str(polar2cartesian(randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(pow(randf() * 50,randf() * 50))
			qq += str(preload("res://Sprite1.png"))
			
			print("safwaw")
			print_debug("asfqwg")
			print_stack()
			printerr("asfqwg")
			printraw("asfqwg")
			prints("asfqwg")
			printt("asfqwg")
			
			push_error("asfqwg")
			push_warning("asfqwg")
			
			qq += str(rad2deg(randf() * 1000 - 500))
			
			qq += str(rand_range(randi() % 1000 - 500,randi() % 1000 - 500))
			qq += str(rand_seed(randi() % 1000 - 500))
			qq += str(randf())
			qq += str(randi())
			randomize()
			qq += str(range(randi() % 1000 - 500,randi() % 1000 - 500,randi()%500 + 1))
			qq += str(range_lerp(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			
			qq += str(round(randf() * 1000 - 500))
			qq += str(seed(randi() % 1000 - 500))
			qq += str(sign(randf() * 1000 - 500))
			
			qq += str(sin(randf() * 1000 - 500))
			qq += str(sinh(randf() * 1000 - 500))
			
			qq += str(smoothstep(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(sqrt(randf() * 1000 - 500))
			
			qq += str(step_decimals(randf() * 1000 - 500))
			qq += str(stepify(randf() * 1000 - 500,randf() * 1000 - 500))
			
			qq += str(str(2152153523423251523523513135623623523))
			qq += str(str2var("asfqwgqgqfa"))
			
			qq += str(tan(randf() * 1000 - 500))
			qq += str(tanh(randf() * 1000 - 500))
			
			qq += str(to_json(String("asfasqw")))
			
			qq += str(type_exists("asfqwqa"))
			qq += str(typeof(String("adgqwfadf")))
			
			qq += str(validate_json("asfqwfasf"))
			
			qq += str(var2bytes(bool(randi()%2)))
			qq += str(var2str(String("adgqwfadf")))
			qq += str(weakref(get_parent()))
			
			qq += str(wrapf(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			qq += str(wrapi(randi() % 1000 - 500,randi() % 1000 - 500,randi() % 1000 - 500))
			
			#qq += str(yield(self,"draw"))
