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
			set_exclusive(bool(randi()%2))
		if randi() % 2 == 1:
			popup(Rect2(Vector2(Autoload.get_randf(), Autoload.get_randf()),Vector2(Autoload.get_randf(), Autoload.get_randf())))
		if randi() % 2 == 1:
			popup_centered(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			popup_centered_clamped(Vector2(Autoload.get_randf(), Autoload.get_randf()),randf())
		if randi() % 2 == 1:
			popup_centered_minsize(Vector2(Autoload.get_randf(), Autoload.get_randf()))
		if randi() % 2 == 1:
			popup_centered_ratio(Autoload.get_randf())
			
