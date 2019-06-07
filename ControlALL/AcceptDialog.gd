extends AcceptDialog

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50))
	#  randf() * 50)
	#  bool(randi()%2))
	#  randi()%50)
	#  Color(randf(),randf(),randf(),randf()))
	#  load("res://Sprite" + str(randi()%4 + 1) + ".png"))
	#  var qq : String = ""
	#  qq += str(
	#  qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_text(str(randi()%50))
		set_hide_on_ok(bool(randi()%2))
		qq += str(add_button(str(randi()%50), bool(randi()%2)))
		qq += str(add_cancel(str(randi()%50)))
		qq += str(get_label())
		qq += str(get_ok())
		hide() # Prevent too much button cancel
		#register_text_enter(
		
		
		emit_signal("about_to_show")
		emit_signal("popup_hide")
		
		emit_signal("confirmed")
		emit_signal("custom_action","af")
		
		#show()# Prevent too much button cancel
		
		if Autoload.WRONG_BUGS:
			set_text(str(randi() % 1000 - 500))
			set_hide_on_ok(bool(randi()%2))
			qq += str(add_button(str(randi() % 1000 - 500), bool(randi()%2)))
			qq += str(add_cancel(str(randi() % 1000 - 500)))
			qq += str(get_label())
			qq += str(get_ok())
			hide() # Prevent too much button cancel
			#register_text_enter(
			
			
			emit_signal("about_to_show")
			emit_signal("popup_hide")
			
			emit_signal("confirmed")
			emit_signal("custom_action","af")
