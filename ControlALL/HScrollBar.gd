extends HScrollBar

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
		
		# ScrollBar
		if randi() % 2 == 1:
			set_custom_step(Autoload.get_randf())
			
		# Range
		if randi() % 2 == 1:
			set_min(Autoload.get_randf())
		if randi() % 2 == 1:
			set_max(Autoload.get_randf())
		if randi() % 2 == 1:
			set_step(Autoload.get_randf())
		if randi() % 2 == 1:
			set_page(Autoload.get_randf())
		if randi() % 2 == 1:
			set_value(Autoload.get_randf())
		if randi() % 2 == 1:
			set_as_ratio(Autoload.get_randf())
		if randi() % 2 == 1:
			set_exp_ratio(bool(randi()%2))
		if randi() % 2 == 1:
			set_use_rounded_values(bool(randi()%2))
		if randi() % 2 == 1:
			set_allow_greater(bool(randi()%2))
		if randi() % 2 == 1:
			set_allow_lesser(bool(randi()%2))
			
		if randi() % 2 == 1:
			share(self)
		if randi() % 2 == 1:
			unshare()
