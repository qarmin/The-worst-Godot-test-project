extends Node2D

var q_Rect2 : Rect2 = Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())
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
			if randi() % 2 == 1:
				q_Rect2 = Rect2(Vector2(Autoload.get_randf(),Autoload.get_randf()),Vector2(Autoload.get_randf(),Autoload.get_randf()))
			if randi() % 2 == 1:
				q_Rect2 = Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())
	
		if randi() % 2 == 1:
			qq += str(q_Rect2.abs())
		if randi() % 2 == 1:
			qq += str(q_Rect2.clip( Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Rect2.encloses( Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Rect2.expand( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Rect2.get_area())
	
		if randi() % 2 == 1:
			qq += str(q_Rect2.grow( Autoload.get_randf()))
		if randi() % 2 == 1:
			qq += str(q_Rect2.grow_individual( Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf(), Autoload.get_randf() ))
		if randi() % 2 == 1:
			qq += str(q_Rect2.grow_margin( Autoload.get_randi(), Autoload.get_randf() ))
	
		if randi() % 2 == 1:
			qq += str(q_Rect2.has_no_area())
		if randi() % 2 == 1:
			qq += str(q_Rect2.has_point( Vector2(Autoload.get_randf(),Autoload.get_randf()) ))
	
		if randi() % 2 == 1:
			qq += str(q_Rect2.intersects( Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))
		if randi() % 2 == 1:
			qq += str(q_Rect2.merge( Rect2(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()) ))

