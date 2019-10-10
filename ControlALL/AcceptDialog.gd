extends AcceptDialog

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
			set_text(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			set_hide_on_ok(bool(randi()%2))
			#LEAK qq += str(add_button(str(randi() % Autoload.RANGE - Autoload.RANGE / 2), bool(randi()%2)))
			#LEAK qq += str(add_cancel(str(randi() % Autoload.RANGE - Autoload.RANGE / 2)))
		if randi() % 2 == 1:
			qq += str(get_label())
		if randi() % 2 == 1:
			qq += str(get_ok())
		if randi() % 2 == 1:
			register_text_enter(self)
