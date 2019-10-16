extends Node2D

var q_Skin : Skin = Skin.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) ->  void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_Skin = Skin.new()

		if randi() % 2 == 1:
			q_Skin.add_bind(Autoload.get_int(),Autoload.get_transform())
		if randi() % 2 == 1:
			q_Skin.clear_binds()
		if randi() % 2 == 1:
			Autoload.qq = str(q_Skin.get_bind_bone(Autoload.get_int())) 
		if randi() % 2 == 1:
			Autoload.qq = str(q_Skin.get_bind_count())
		if randi() % 2 == 1:
			Autoload.qq = str(q_Skin.get_bind_pose(Autoload.get_int()))
		if randi() % 2 == 1:
			q_Skin.set_bind_bone(Autoload.get_int(), Autoload.get_int())
		if randi() % 2 == 1:
			q_Skin.set_bind_count(Autoload.get_int()) 
		if randi() % 2 == 1:
			q_Skin.set_bind_pose(Autoload.get_int(), Autoload.get_transform())

