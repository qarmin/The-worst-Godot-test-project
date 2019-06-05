extends WindowDialog

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	
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
		set_title(str(randi()%50000))
		set_resizable(randf() * 50)
		var qq : String = ""
		qq += str(get_close_button())
		qq = qq
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x