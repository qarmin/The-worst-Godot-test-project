extends Node2D

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
		if !Autoload.RANDI:
			
			var q_StyleBoxLine : StyleBoxLine = StyleBoxLine.new()
			
			q_StyleBoxLine.set_color(Color(randf(),randf(),randf(),randf()))
			q_StyleBoxLine.set_grow_begin(randf() * 50)
			q_StyleBoxLine.set_grow_end(randf() * 50)
			q_StyleBoxLine.set_thickness(randi()%50)
			q_StyleBoxLine.set_vertical(bool(randi()%2))
			
			if Autoload.WRONG_BUGS:
				q_StyleBoxLine.set_color(Color(randf(),randf(),randf(),randf()))
				q_StyleBoxLine.set_grow_begin(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxLine.set_grow_end(randf() * Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxLine.set_thickness(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_StyleBoxLine.set_vertical(bool(randi()%2))
