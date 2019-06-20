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
		
		var q_Gradient : Gradient = Gradient.new()
		
		q_Gradient.set_offsets(PoolRealArray([125125.125,12512.1251,122.124]))
		q_Gradient.set_colors(PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]))
		
		for _i in range(4):
			q_Gradient.add_point( randf() * 50,Color(randf(),randf(),randf(),randf()) )
			
		qq += str(q_Gradient.get_color( 0 ))
		qq += str(q_Gradient.get_offset( 0 ))
		qq += str(q_Gradient.get_point_count())
		
		qq += str(q_Gradient.interpolate(randf() * 50))
		q_Gradient.remove_point( 0 )
		
		q_Gradient.set_color( 0, Color(randf(),randf(),randf(),randf()) )
		q_Gradient.set_offset( 0,randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_Gradient.set_offsets(PoolRealArray([125125.125,12512.1251,122.124]))
			q_Gradient.set_colors(PoolColorArray([Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf()),Color(randf(),randf(),randf(),randf())]))
			
			for _i in range(4):
				q_Gradient.add_point( randf() * 1000 - 500,Color(randf(),randf(),randf(),randf()) )
				
			#BUG qq += str(q_Gradient.get_color(randi() % 1000 - 500 ))
			qq += str(q_Gradient.get_offset(randi() % 1000 - 500 ))
			qq += str(q_Gradient.get_point_count())
			
			qq += str(q_Gradient.interpolate(randf() * 1000 - 500))
			q_Gradient.remove_point(randi() % 1000 - 500 )
			
			#BUG q_Gradient.set_color(randi() % 1000 - 500, Color(randf(),randf(),randf(),randf()) )
			q_Gradient.set_offset(randi() % 1000 - 500,randf() * 1000 - 500)
