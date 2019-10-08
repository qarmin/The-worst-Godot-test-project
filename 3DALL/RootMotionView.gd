extends RootMotionView

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
			
			set_animation_path(".")
			set_color(Color(randf(),randf(),randf(),randf()))
			set_cell_size(randf() * 50)
			set_radius(randf() * 50)
			set_zero_y(bool(randi()%2))
			
			
			if Autoload.WRONG_BUGS:
				set_animation_path("fawfasfaw.")
				set_color(Color(randf(),randf(),randf(),randf()))
				set_cell_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				set_zero_y(bool(randi()%2))
		else: #RANDI
			if randi() % 2 == 1:
				set_animation_path("fawfasfaw.")
			if randi() % 2 == 1:
				set_color(Color(randf(),randf(),randf(),randf()))
			if randi() % 2 == 1:
				set_cell_size(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_radius(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				set_zero_y(bool(randi()%2))
