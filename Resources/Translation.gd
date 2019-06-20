extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		var q_Translation : Translation = Translation.new()
		
		q_Translation.set_locale("pl")
		
		q_Translation.add_message( "Bolaczka", "Pomysl" )
		q_Translation.erase_message( "Historia" )
		qq += str(q_Translation.get_message( "Geralt" ))
		qq += str(q_Translation.get_message_count())
		qq += str(q_Translation.get_message_list())
		
		if Autoload.WRONG_BUGS:
			pass
