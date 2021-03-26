extends Node2D

func _ready() -> void:
	for i in range(10):
		add_child(load("ResourcesALL.tscn").instance())
