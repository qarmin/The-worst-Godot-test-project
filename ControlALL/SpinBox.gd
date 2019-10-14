extends SpinBox

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
			set_align(Autoload.get_int())
		if randi() % 2 == 1:
			set_editable(Autoload.get_bool())
		if randi() % 2 == 1:
			set_prefix(Autoload.get_string())
		if randi() % 2 == 1:
			set_suffix(Autoload.get_string())
		if randi() % 2 == 1:
			qq += str(get_line_edit())
