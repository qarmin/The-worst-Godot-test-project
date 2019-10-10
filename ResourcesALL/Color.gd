extends Node2D

var q_Color : Color
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
				q_Color = Color( Color.cyan)
			if randi() % 2 == 1:
				q_Color = Color( randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_Color = Color( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_Color = Color( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 )
			
		if randi() % 2 == 1:
			qq += str(q_Color.blend( Color(randf(),randf(),randf(),randf())))
		if randi() % 2 == 1:
			qq += str(q_Color.contrasted())
		if randi() % 2 == 1:
			qq += str(q_Color.darkened( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Color.from_hsv( randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2, randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			qq += str(q_Color.gray())
		if randi() % 2 == 1:
			qq += str(q_Color.inverted())
		if randi() % 2 == 1:
			qq += str(q_Color.lightened( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
			
		if randi() % 2 == 1:
			qq += str(q_Color.to_abgr32())
		if randi() % 2 == 1:
			qq += str(q_Color.to_abgr64())
		if randi() % 2 == 1:
			qq += str(q_Color.to_argb32())
		if randi() % 2 == 1:
			qq += str(q_Color.to_argb64())
		if randi() % 2 == 1:
			qq += str(q_Color.to_html(bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Color.to_rgba32())
		if randi() % 2 == 1:
			qq += str(q_Color.to_rgba64())
