extends HSlider

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		if randi() % 2 == 1:
			set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_scrollable(Autoload.get_bool())
		if Autoload.SLOW_FUNCTIONS:
			if randi() % 2 == 1:
				set_ticks(Autoload.get_int())
		if randi() % 2 == 1:
			set_ticks_on_borders(Autoload.get_bool())
		if randi() % 2 == 1:
			set_focus_mode(Autoload.get_int())
