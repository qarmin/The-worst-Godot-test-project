extends ColorPickerButton

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
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_pick_color(Color(randf(),randf(),randf(),randf()))
		set_edit_alpha(bool(randi()%2))
		qq += str(get_picker())
		qq += str(get_popup())
		
		if Autoload.WRONG_BUGS:
			set_pick_color(Color(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500))
			set_edit_alpha(bool(randi()%2))
			qq += str(get_picker())
			qq += str(get_popup())