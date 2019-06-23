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
		
		var q_Color : Color
		
		q_Color = Color( Color.cyan)
		q_Color = Color( randi()%50)
		q_Color = Color( randf() * 50, randf() * 50, randf() * 50 )
		q_Color = Color( randf() * 50, randf() * 50, randf() * 50, randf() * 50 )
		
		qq += str(q_Color.blend( Color(randf(),randf(),randf(),randf())))
		qq += str(q_Color.contrasted())
		qq += str(q_Color.darkened( randf() * 50 ))
		qq += str(q_Color.from_hsv( randf() * 50, randf() * 50, randf() * 50, randf() * 50 ))
		#Deprecated q_Color.gray()
		qq += str(q_Color.inverted())
		qq += str(q_Color.lightened( randf() * 50 ))
		
		qq += str(q_Color.to_abgr32())
		qq += str(q_Color.to_abgr64())
		qq += str(q_Color.to_argb32())
		qq += str(q_Color.to_argb64())
		qq += str(q_Color.to_html(bool(randi()%2)))
		qq += str(q_Color.to_rgba32())
		qq += str(q_Color.to_rgba64())
		
		if Autoload.WRONG_BUGS:
			q_Color = Color( Color.cyan)
			q_Color = Color( randi() % 1000 - 500)
			q_Color = Color( randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500 )
			q_Color = Color( randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500 )
			
			qq += str(q_Color.blend( Color(randf(),randf(),randf(),randf())))
			qq += str(q_Color.contrasted())
			qq += str(q_Color.darkened( randf() * 1000 - 500 ))
			qq += str(q_Color.from_hsv( randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500, randf() * 1000 - 500 ))
			qq += str(q_Color.gray())
			qq += str(q_Color.inverted())
			qq += str(q_Color.lightened( randf() * 1000 - 500 ))
			
			qq += str(q_Color.to_abgr32())
			qq += str(q_Color.to_abgr64())
			qq += str(q_Color.to_argb32())
			qq += str(q_Color.to_argb64())
			qq += str(q_Color.to_html(bool(randi()%2)))
			qq += str(q_Color.to_rgba32())
			qq += str(q_Color.to_rgba64())
