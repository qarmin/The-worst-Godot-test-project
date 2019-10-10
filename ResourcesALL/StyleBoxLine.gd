extends Node2D

var q_StyleBoxLine : StyleBoxLine = StyleBoxLine.new()
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
			q_StyleBoxLine = StyleBoxLine.new()
			
		
		if randi() % 2 == 1:
			q_StyleBoxLine.set_color(Color(randf(),randf(),randf(),randf()))
		if randi() % 2 == 1:
			q_StyleBoxLine.set_grow_begin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxLine.set_grow_end(randf() * Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxLine.set_thickness(randi() % Autoload.RANGE - Autoload.RANGE / 2)
		if randi() % 2 == 1:
			q_StyleBoxLine.set_vertical(bool(randi()%2))
