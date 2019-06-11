extends HingeJoint

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
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
		
		
		
