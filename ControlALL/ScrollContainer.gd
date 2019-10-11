extends ScrollContainer

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
			set_enable_h_scroll(bool(randi()%2))
		if randi() % 2 == 1:
			set_h_scroll(Autoload.get_randi())
		if randi() % 2 == 1:
			set_enable_v_scroll(bool(randi()%2))
		if randi() % 2 == 1:
			set_v_scroll(Autoload.get_randi())
		if randi() % 2 == 1:
			set_deadzone(Autoload.get_randi())
			
		if randi() % 2 == 1:
			qq += str(get_h_scrollbar())
		if randi() % 2 == 1:
			qq += str(get_v_scrollbar())
