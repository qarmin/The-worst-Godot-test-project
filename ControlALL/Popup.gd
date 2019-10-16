extends Popup

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
			set_exclusive(Autoload.get_bool())
		if randi() % 2 == 1:
			popup(Autoload.get_rect2())
		if randi() % 2 == 1:
			popup_centered(Autoload.get_vector2())
		if randi() % 2 == 1:
			popup_centered_clamped(Autoload.get_vector2(),Autoload.get_float())
		if randi() % 2 == 1:
			popup_centered_minsize(Autoload.get_vector2())
		if randi() % 2 == 1:
			popup_centered_ratio(Autoload.get_float())
			
