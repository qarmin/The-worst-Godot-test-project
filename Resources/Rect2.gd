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
		
		var q_Rect2 : Rect2

		q_Rect2 = Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50))
		q_Rect2 = Rect2(randf() * 50,randf() * 50,randf() * 50,randf() * 50)

		qq += str(q_Rect2.abs())
		qq += str(q_Rect2.clip( Rect2(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Rect2.encloses( Rect2(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Rect2.expand( Vector2(randf() * 50,randf() * 50) ))
		qq += str(q_Rect2.get_area())

		qq += str(q_Rect2.grow( randf() * 50))
		qq += str(q_Rect2.grow_individual( randf() * 50, randf() * 50, randf() * 50, randf() * 50 ))
		qq += str(q_Rect2.grow_margin( randi()%50, randf() * 50 ))

		qq += str(q_Rect2.has_no_area())
		qq += str(q_Rect2.has_point( Vector2(randf() * 50,randf() * 50) ))

		qq += str(q_Rect2.intersects( Rect2(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))
		qq += str(q_Rect2.merge( Rect2(randf() * 50,randf() * 50,randf() * 50,randf() * 50) ))

		if Autoload.WRONG_BUGS:
			q_Rect2 = Rect2(Vector2(randf() * 1000 - 500,randf() * 1000 - 500),Vector2(randf() * 1000 - 500,randf() * 1000 - 500))
			q_Rect2 = Rect2(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500)
	
			qq += str(q_Rect2.abs())
			qq += str(q_Rect2.clip( Rect2(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Rect2.encloses( Rect2(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Rect2.expand( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Rect2.get_area())
	
			qq += str(q_Rect2.grow( randf() * 1000 - 500))
			qq += str(q_Rect2.grow_individual( randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500 ))
			qq += str(q_Rect2.grow_margin( randi() % 1000 - 500, randf() * 1000 - 500 ))
	
			qq += str(q_Rect2.has_no_area())
			qq += str(q_Rect2.has_point( Vector2(randf() * 1000 - 500,randf() * 1000 - 500) ))
	
			qq += str(q_Rect2.intersects( Rect2(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
			qq += str(q_Rect2.merge( Rect2(randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500,randf() * 1000 - 500) ))
