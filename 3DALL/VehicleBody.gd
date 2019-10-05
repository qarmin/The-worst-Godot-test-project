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
		
		set_engine_force(randf() * 50)
		set_brake(randf() * 50)
		set_steering(randf() * 50)
				
		if Autoload.WRONG_BUGS:
			set_engine_force(randf() * 1000 - 500)
			set_brake(randf() * 1000 - 500)
			set_steering(randf() * 1000 - 500)

	else: #RANDI
		if randi() % 2 == 1:
			set_engine_force(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_brake(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_steering(randf() * 1000 - 500)
