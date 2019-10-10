extends Node2D

var q_MainLoop : MainLoop = MainLoop.new()
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
		if randi() % 2 == 1:
			q_MainLoop.free()
			q_MainLoop = MainLoop.new()
		
		#q_MainLoop._drop_files( PoolStringArray(["Tak","Nie","Być może"]), 0 )
		#q_MainLoop._finalize()
		#q_MainLoop._idle( randf() * Autoload.RANGE - Autoload.RANGE / 2 )
		#q_MainLoop._initialize()
		#q_MainLoop._input_event( InputEvent.new() )
		#q_MainLoop._input_text( "Niefajnie" )
		#q_MainLoop._iteration( randf() * Autoload.RANGE - Autoload.RANGE / 2 )

		if randi() % 2 == 1:
			q_MainLoop.finish()
		if randi() % 2 == 1:
			qq += str(q_MainLoop.idle( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))
		if randi() % 2 == 1:
			q_MainLoop.init()

		if randi() % 2 == 1:
			q_MainLoop.input_event( InputEvent.new() )
		if randi() % 2 == 1:
			q_MainLoop.input_text( "Fanfary" )

		if randi() % 2 == 1:
			qq += str(q_MainLoop.iteration( randf() * Autoload.RANGE - Autoload.RANGE / 2 ))



		
