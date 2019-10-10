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
			set_custom_step(randf() * Autoload.RANGE - Autoload.RANGE / 2)
			
		# Range
		if randi() % 2 == 1:
			set_min(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_max(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_step(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_page(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_value(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			set_as_ratio(randf() * Autoload.RANGE - Autoload.RANGE / 2)
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
