extends InterpolatedCamera

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
			
			set_target_path("Roman")
			set_speed(randf() * 50)
			set_interpolation_enabled(bool(randi()%2))
			set_target(get_parent())
			
	
			if Autoload.WRONG_BUGS:
				set_target_path("Romanagasgfg")
				set_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_interpolation_enabled(bool(randi()%2))
				set_target(self)
	
		else: #RANDI
			if randi() % 2 == 1:
				set_target_path("Romanagasgfg")
			if randi() % 2 == 1:
				set_speed(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_interpolation_enabled(bool(randi()%2))
			if randi() % 2 == 1:
				set_target(self)
