extends Node2D

var q_Skin : Skin = Skin.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) ->  void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_Skin = Skin.new()
			
		
		if randi() % 2 == 1:
			q_Skin.add_bind(Autoload.get_randi(), Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))
		if randi() % 2 == 1:
			q_Skin.clear_binds()
		if randi() % 2 == 1:
			qq += str(q_Skin.get_bind_bone(Autoload.get_randi())) 
		if randi() % 2 == 1:
			qq += str(q_Skin.get_bind_count())
		if randi() % 2 == 1:
			qq += str(q_Skin.get_bind_pose(Autoload.get_randi()))
		if randi() % 2 == 1:
			q_Skin.set_bind_bone(Autoload.get_randi(), Autoload.get_randi())
		if randi() % 2 == 1:
			q_Skin.set_bind_count(Autoload.get_randi()) 
		if randi() % 2 == 1:
			q_Skin.set_bind_pose(Autoload.get_randi(), Transform(Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf()),Vector3(Autoload.get_randf(),Autoload.get_randf(),Autoload.get_randf())))

