extends VehicleBody

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _physics_process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
			
			set_engine_force(randf() * 50)
			set_brake(randf() * 50)
			set_steering(randf() * 50)
					
			if Autoload.WRONG_BUGS:
				set_engine_force(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_brake(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_steering(randf() * Autoload.RANGE - Autoload.RANGE / 2)
	
		else: #RANDI
			if randi() % 2 == 1:
				set_engine_force(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_brake(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_steering(randf() * Autoload.RANGE - Autoload.RANGE / 2)
