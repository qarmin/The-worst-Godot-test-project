extends ResourcePreloader

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			add_resource("qq", ImageTexture.new())
			
		if randi() % 2 == 1:
			qq += str(get_resource("qq"))
		if randi() % 2 == 1:
			qq += str(get_resource_list())
			
		if randi() % 2 == 1:
			qq += str(has_resource("qasfq"))
		if randi() % 2 == 1:
			rename_resource("qasq","asfd")
		if randi() % 2 == 1:
			remove_resource("ddaf") ## Zmiana kolejnosci
