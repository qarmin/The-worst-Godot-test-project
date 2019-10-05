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
		
		set_switch_on_hover(bool(randi()%2))
		qq += str(get_popup())
		set_disable_shortcuts(bool(randi()%2))
		
		
		if Autoload.WRONG_BUGS:
			set_switch_on_hover(bool(randi()%2))
			qq += str(get_popup())
			set_disable_shortcuts(bool(randi()%2))

	else: #RANDI
		if randi() % 2 == 1:
			set_switch_on_hover(bool(randi()%2))
		if randi() % 2 == 1:
			qq += str(get_popup())
		if randi() % 2 == 1:
			set_disable_shortcuts(bool(randi()%2))
