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
			set_align(Autoload.get_randi())
		if randi() % 2 == 1:
			set_editable(bool(randi()%2))
		if randi() % 2 == 1:
			set_prefix(str(Autoload.get_randi()))
		if randi() % 2 == 1:
			set_suffix(str(Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(get_line_edit())
