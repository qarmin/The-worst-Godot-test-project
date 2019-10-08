extends WorldEnvironment

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
		if !Autoload.RANDI:
			
			#set_environment(load("default_env" + str(randi() % 2)+".tres"))
			
			if Autoload.WRONG_BUGS:
				if Autoload.SLOW_FUNCTIONS:
					set_environment(load("res://RES/default_env" + str(randi() % 2)+".tres"))
	
		else: #RANDI
			if randi() % 2 == 1:
				if Autoload.SLOW_FUNCTIONS:
					set_environment(load("res://RES/default_env" + str(randi() % 2)+".tres"))
