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
		
		var q_UndoRedo : UndoRedo = UndoRedo.new()
		
		q_UndoRedo.add_do_method( Node.new(), "Ziemniaki", "QR" )
		q_UndoRedo.add_do_property( Node.new(), "Ślizg", "Źdźbło" )
		q_UndoRedo.add_do_reference( Node.new() )
		q_UndoRedo.add_undo_method( Node.new(), "Czkawka", "Grzać" )
		q_UndoRedo.add_undo_property( Node.new(), "Ćma", "Topić" )
		q_UndoRedo.add_undo_reference( Node.new() )
		
		q_UndoRedo.clear_history( bool(randi()%2))
		q_UndoRedo.commit_action()
		q_UndoRedo.create_action( "Nazewnictwo", randi() % 3 )#MergeMode
		
		qq += str(q_UndoRedo.get_current_action_name())
		qq += str(q_UndoRedo.get_version())
		
		qq += str(q_UndoRedo.is_commiting_action())
		qq += str(q_UndoRedo.redo())
		qq += str(q_UndoRedo.undo())
		
		if Autoload.WRONG_BUGS:
			pass
