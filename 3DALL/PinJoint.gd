extends PinJoint

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
		
		set("params/bias",randf() * 50)
		set("params/damping",randf() * 50)
		set("params/impulse_clamp",randf() * 50)

		if Autoload.WRONG_BUGS:
			set("params/bias",randf() * 1000 - 500)
			set("params/damping",randf() * 1000 - 500)
			set("params/impulse_clamp",randf() * 1000 - 500)
	else: #RANDI
		if randi() % 2 == 1:
			set("params/bias",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("params/damping",randf() * 1000 - 500)
		if randi() % 2 == 1:
			set("params/impulse_clamp",randf() * 1000 - 500)
