extends MenuButton

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
			set_switch_on_hover(Autoload.get_bool())
		if randi() % 2 == 1:
			qq += str(get_popup())
		if randi() % 2 == 1:
			set_disable_shortcuts(Autoload.get_bool())
