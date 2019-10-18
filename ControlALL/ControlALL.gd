extends Control

func _ready() -> void:
	if !is_visible():
		queue_free()

	for i in get_children():
		i.show()

#	for i in get_children():
#		if !i.is_visible():
#			i.queue_free()
			
func _process(delta) -> void:
	for i in get_children():
		i.alt_process(delta)
