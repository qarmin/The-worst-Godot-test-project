extends HingeJoint

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set("params/bias",Autoload.get_float())
		if randi() % 2 == 1:
			set("angular_limit/enable",Autoload.get_bool())
		if randi() % 2 == 1:
			set("angular_limit/upper",Autoload.get_float())
		if randi() % 2 == 1:
			set("angular_limit/lower",Autoload.get_float())
		if randi() % 2 == 1:
			set("angular_limit/bias",Autoload.get_float())
		if randi() % 2 == 1:
			set("angular_limit/softness",Autoload.get_float())
		if randi() % 2 == 1:
			set("angular_limit/relaxation",Autoload.get_float())
		if randi() % 2 == 1:
			set("motor/enable",Autoload.get_bool())
		if randi() % 2 == 1:
			set("motor/target_velocity",Autoload.get_float())
		if randi() % 2 == 1:
			set("motor/max_impulse",Autoload.get_float())
