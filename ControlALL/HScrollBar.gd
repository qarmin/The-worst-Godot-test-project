extends HScrollBar

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
		
		
		# ScrollBar
		set_custom_step(randf() * 50)
		
		# Range
		set_min(randf() * 50)
		set_max(randf() * 50)
		set_step(randf() * 50)
		set_page(randf() * 50)
		set_value(randf() * 50)
		set_as_ratio(randf() * 50)
		set_exp_ratio(bool(randi()%2))
		set_use_rounded_values(bool(randi()%2))
		set_allow_greater(bool(randi()%2))
		set_allow_lesser(bool(randi()%2))
		
		share(self)
		unshare()
		
		if Autoload.WRONG_BUGS:
			pass
