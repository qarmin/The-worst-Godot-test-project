extends ColorPickerButton

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
		
		set_pick_color(Color(randf(),randf(),randf(),randf()))
		set_edit_alpha(bool(randi()%2))
		qq += str(get_picker())
		qq += str(get_popup())
		
		if Autoload.WRONG_BUGS:
			set_pick_color(Color(randf(),randf(),randf(),randf()))
			set_edit_alpha(bool(randi()%2))
			qq += str(get_picker())
			qq += str(get_popup())

	else: #RANDI
		if randi() % 2 == 1:
			set_pick_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			set_edit_alpha(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(get_picker())
		if randi() % 2 == 1:
			qq += str(get_popup())
