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
		
		var q_SegmentShape2D : SegmentShape2D = SegmentShape2D.new()
		if !Autoload.RANDI:
			
			q_SegmentShape2D.set_a(Vector2(randf() * 50,randf() * 50))
			q_SegmentShape2D.set_b(Vector2(randf() * 50,randf() * 50))
			
			if Autoload.WRONG_BUGS:
				q_SegmentShape2D.set_a(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
				q_SegmentShape2D.set_b(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))

		else: #RANDI
			if randi() % 2 == 1:
				q_SegmentShape2D.set_a(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_SegmentShape2D.set_b(Vector2(randf() * Autoload.RANGE - Autoload.RANGE / 2,randf() * Autoload.RANGE - Autoload.RANGE / 2))
