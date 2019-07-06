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
		
		set_text(str(randi()%50))
		set_hide_on_ok(bool(randi()%2))
		#LEAK qq += str(add_button(str(randi()%50), bool(randi()%2)))
		#LEAK qq += str(add_cancel(str(randi()%50)))
		qq += str(get_label())
		qq += str(get_ok())
		#register_text_enter(
		
		if Autoload.WRONG_BUGS:
			set_text(str(randi() % 1000 - 500))
			set_hide_on_ok(bool(randi()%2))
			#LEAK qq += str(add_button(str(randi() % 1000 - 500), bool(randi()%2)))
			#LEAK qq += str(add_cancel(str(randi() % 1000 - 500)))
			qq += str(get_label())
			qq += str(get_ok())
			#register_text_enter(
