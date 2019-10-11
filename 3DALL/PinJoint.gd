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
		if !Autoload.RANDI:
			
			set("params/bias",randf() * 50)
			set("params/damping",randf() * 50)
			set("params/impulse_clamp",randf() * 50)
	
			if Autoload.WRONG_BUGS:
				set("params/bias",Autoload.get_randf())
				set("params/damping",Autoload.get_randf())
				set("params/impulse_clamp",Autoload.get_randf())
		else: #RANDI
			if randi() % 2 == 1:
				set("params/bias",Autoload.get_randf())
			if randi() % 2 == 1:
				set("params/damping",Autoload.get_randf())
			if randi() % 2 == 1:
				set("params/impulse_clamp",Autoload.get_randf())
