extends Node2D

var q_CurveTexture : CurveTexture = CurveTexture.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_CurveTexture = CurveTexture.new()

		if randi() % 2 == 1:
			q_CurveTexture.set_width(Autoload.get_int())
		if randi() % 2 == 1:
			q_CurveTexture.set_curve(Autoload.loadA("Curve.tres"))
