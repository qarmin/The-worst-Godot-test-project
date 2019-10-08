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
		if !Autoload.RANDI:
			
			set("params/bias",randf() * 50)
			set("angular_limit/enable",bool(randi()%2))
			set("angular_limit/upper",randf() * 50)
			set("angular_limit/lower",randf() * 50)
			set("angular_limit/bias",randf() * 50)
			set("angular_limit/softness",randf() * 50)
			set("angular_limit/relaxation",randf() * 50)
			set("motor/enable",bool(randi()%2))
			set("motor/target_velocity",randf() * 50)
			set("motor/max_impulse",randf() * 50)
			
			
			
			if Autoload.WRONG_BUGS:
			
				set("params/bias",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/enable",bool(randi()%2))
				set("angular_limit/upper",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/lower",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/bias",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("angular_limit/relaxation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("motor/enable",bool(randi()%2))
				set("motor/target_velocity",randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set("motor/max_impulse",randf() * Autoload.RANGE - Autoload.RANGE / 2)
		else: #RANDI
			if randi() % 2 == 1:
				set("params/bias",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/enable",bool(randi()%2))
			if randi() % 2 == 1:
				set("angular_limit/upper",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/lower",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/bias",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/softness",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("angular_limit/relaxation",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("motor/enable",bool(randi()%2))
			if randi() % 2 == 1:
				set("motor/target_velocity",randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set("motor/max_impulse",randf() * Autoload.RANGE - Autoload.RANGE / 2)
