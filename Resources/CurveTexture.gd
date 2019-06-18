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
		
		var q_CurveTexture : CurveTexture = CurveTexture.new()
		
		q_CurveTexture.set_width(randi()%50 + 32)
		q_CurveTexture.set_curve(Curve.new())
		
		if Autoload.WRONG_BUGS:
			q_CurveTexture.set_width(randi() % 1000 - 500)
			q_CurveTexture.set_curve(Curve.new())
