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
			# ScrollBar
			set_custom_step(randf() * 1000 - 500)
			
			# Range
			set_min(randf() * 1000 - 500)
			set_max(randf() * 1000 - 500)
			set_step(randf() * 1000 - 500)
			set_page(randf() * 1000 - 500)
			set_value(randf() * 1000 - 500)
			set_as_ratio(randf() * 1000 - 500)
			set_exp_ratio(bool(randi()%2))
			set_use_rounded_values(bool(randi()%2))
			set_allow_greater(bool(randi()%2))
			set_allow_lesser(bool(randi()%2))
			
			share(self)
			unshare()

	else: #RANDI
		if randi() % 2 == 1:
			# ScrollBar
			set_custom_step(randf() * 1000 - 500)
			
			# Range
		if randi() % 2 == 1:
			set_min(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_max(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_step(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_page(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_value(randf() * 1000 - 500)
		if randi() % 2 == 1:
			set_as_ratio(randf() * 1000 - 500)
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
