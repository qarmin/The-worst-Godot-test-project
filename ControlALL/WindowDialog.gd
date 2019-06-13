extends WindowDialog

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
		
		set_title(str(randi()%50000))
		set_resizable(bool(randi() % 2))
		qq += str(get_close_button())

		if Autoload.WRONG_BUGS:
			set_title(str(randi()%50000))
			set_resizable(bool(randi() % 2))
			qq += str(get_close_button())
			
			
		emit_signal("about_to_show")
		emit_signal("popup_hide")
		show()
