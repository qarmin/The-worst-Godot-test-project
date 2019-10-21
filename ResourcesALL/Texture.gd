extends Node2D

#var q_Texture : Texture = ImageTexture.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

#		nodeFunction(q_Texture,true)

func nodeFunction(q_Texture : Texture, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Texture = Texture.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Texture)

	if randi() % 2 == 1:
		q_Texture.draw(RID(),Autoload.get_vector2(),Autoload.get_color(),Autoload.get_bool(),Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_Texture.draw_rect(RID(),Autoload.get_rect2(),Autoload.get_bool(),Autoload.get_color(),Autoload.get_bool(),Autoload.loadA("Sprite.png"))
	if randi() % 2 == 1:
		q_Texture.draw_rect_region(RID(),Autoload.get_rect2(),Autoload.get_rect2(), Autoload.get_color(), Autoload.get_bool(),Autoload.loadA("Sprite.png"),Autoload.get_bool())

	if randi() % 2 == 1:
		q_Texture.get_data()
	if randi() % 2 == 1:
		q_Texture.get_height()
	if randi() % 2 == 1:
		q_Texture.get_size()
	if randi() % 2 == 1:
		q_Texture.get_width()
	if randi() % 2 == 1:
		q_Texture.has_alpha()
