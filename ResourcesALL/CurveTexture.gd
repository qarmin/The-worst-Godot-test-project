extends Node2D

var q_CurveTexture: CurveTexture = CurveTexture.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CurveTexture, true)


func nodeFunction(q_CurveTexture: CurveTexture, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CurveTexture = CurveTexture.new()
#	if randi() % 2 == 1:#MISSING
#		AutoResourcesTexture.nodeFunction(q_CurveTexture)

	### START TEMP
	var temp_Curve: Curve = Curve.new()
	AutoResourcesCurve.nodeFunction(temp_Curve)

	### END TEMP

	if randi() % 2 == 1:
		q_CurveTexture.set_width(Autoload.get_int())
	if randi() % 2 == 1:
		q_CurveTexture.set_curve(temp_Curve)
