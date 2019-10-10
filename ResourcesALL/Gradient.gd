extends Node2D

var q_Gradient : Gradient = Gradient.new()
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
		if randi() % 2 == 1:
			q_Gradient = Gradient.new()
			
		
		if randi() % 2 == 1:
			q_Gradient.set_offsets(PoolRealArray([125125.125,12512.1251,122.124]))
		if randi() % 2 == 1:
			q_Gradient.set_colors(PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]))
			
			for _i in range(4):
				if randi() % 2 == 1:
					q_Gradient.add_point( randf() * Autoload.RANGE - Autoload.RANGE / 2,Color(randf(),randf(),randf(),randf()) )
				
		if randi() % 2 == 1:
			qq += str(q_Gradient.get_color(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Gradient.get_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Gradient.get_point_count())
			
		if randi() % 2 == 1:
			qq += str(q_Gradient.interpolate(randf() * Autoload.RANGE - Autoload.RANGE / 2))
		if randi() % 2 == 1:
			q_Gradient.remove_point(randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			
		if randi() % 2 == 1:
			q_Gradient.set_color(randi() % Autoload.RANGE - Autoload.RANGE / 2, Color(randf(),randf(),randf(),randf()) )
		if randi() % 2 == 1:
			q_Gradient.set_offset(randi() % Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2)
