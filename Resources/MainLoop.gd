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
		
		var q_MainLoop : MainLoop = MainLoop.new()
		
#		q_MainLoop._drop_files( PoolStringArray(["Tak","Nie","Być może"]), 0 )
#		q_MainLoop._finalize()
#		q_MainLoop._idle( randf() * 50 )
#		q_MainLoop._initialize()
#		q_MainLoop._input_event( InputEvent.new() )
#		q_MainLoop._input_text( "Niefajnie" )
#		q_MainLoop._iteration( randf() * 50 )
		
		q_MainLoop.finish()
		qq += str(q_MainLoop.idle( randf() * 50 ))
		q_MainLoop.init()
		
		q_MainLoop.input_event( InputEvent.new() )
		q_MainLoop.input_text( "Fanfary" )
		
		qq += str(q_MainLoop.iteration( randf() * 50 ))
		
		if Autoload.WRONG_BUGS:
			pass
