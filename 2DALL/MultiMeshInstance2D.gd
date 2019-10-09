extends MultiMeshInstance2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if !Autoload.RANDI:
				
			set_multimesh(Autoload.loadA("res://RES/Multimesh.tres",false))
			set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
			set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png",false))
	
			if Autoload.WRONG_BUGS:
				set_multimesh(Autoload.loadA("res://RES/Multimesh.tres"))
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
				set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
		else: #RANDI
			if randi() % 2 == 1:
				set_multimesh(Autoload.loadA("res://RES/Multimesh.tres"))
			if randi() % 2 == 1:
				set_texture(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
			if randi() % 2 == 1:
				set_normal_map(Autoload.loadA("res://RES/Sprite" + str(randi()%4 + 1) + ".png"))
