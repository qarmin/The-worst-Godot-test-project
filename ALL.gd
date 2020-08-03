extends Node

var time_to_show : float = 10.0

func _ready() -> void:
	if (OS.get_cmdline_args().size() > 0):
		time_to_show = OS.get_cmdline_args()[0].to_float()
		print("Time set to: " + str(time_to_show))

func _process(delta) -> void:
	time_to_show -= delta
	if time_to_show < 0:
		get_tree().quit()
