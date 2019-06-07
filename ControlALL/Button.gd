extends Button

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		str(randi()%50000))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		set_text(str(randi()%50000))
		set_button_icon(load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_flat(bool(randi()%2))
		set_clip_text(bool(randi()%2))
		set_text_align(randi()%3)
		
		
		if Autoload.WRONG_BUGS:
			set_text(str(randi()%50000))
			set_button_icon(load("res://Sprite" + str(randi() % 1000 - 500) + ".png"))
			set_flat(bool(randi()%2))
			set_clip_text(bool(randi()%2))
			set_text_align(randi() % 1000 - 500)
		
		emit_signal("button_down")
		emit_signal("button_up")
		emit_signal("pressed")
		emit_signal("toggled",bool(randi() %2))
		
