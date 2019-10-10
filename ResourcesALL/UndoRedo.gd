extends Node2D

var q_UndoRedo : UndoRedo = UndoRedo.new()
var q_temp_0 : Node = load("res://RES/Node.tscn").instance()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	add_child(q_temp_0)

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	#BUG
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		if randi() % 2 == 1:
#			q_UndoRedo.free()
#			q_temp_0.queue_free()
#			q_UndoRedo = UndoRedo.new()
#			q_temp_0 = load("res://RES/Node.tscn").instance()
#			add_child(q_temp_0)
#
#		if randi() % 2 == 1:
#			q_UndoRedo.add_do_method( q_temp_0, "Ziemniaki", "QR" )
#		if randi() % 2 == 1:
#			q_UndoRedo.add_do_property( q_temp_0, "Ślizg", "Źdźbło" )
#		if randi() % 2 == 1:
#			q_UndoRedo.add_do_reference( q_temp_0 )
#		if randi() % 2 == 1:
#			q_UndoRedo.add_undo_method( q_temp_0, "Czkawka", "Grzać" )
#		if randi() % 2 == 1:
#			q_UndoRedo.add_undo_property( q_temp_0, "Ćma", "Topić" )
#		if randi() % 2 == 1:
#			q_UndoRedo.add_undo_reference( q_temp_0 )
#
#		if randi() % 2 == 1:
#			q_UndoRedo.clear_history( bool(randi()%2))
#		if randi() % 2 == 1:
#			q_UndoRedo.commit_action()
#		if randi() % 2 == 1:
#			q_UndoRedo.create_action( "Nazewnictwo", randi() % Autoload.RANGE - Autoload.RANGE / 2 )#MergeMode
#
#		if randi() % 2 == 1:
#			qq += str(q_UndoRedo.get_current_action_name())
#		if randi() % 2 == 1:
#			qq += str(q_UndoRedo.get_version())
#
#		if randi() % 2 == 1:
#			qq += str(q_UndoRedo.is_commiting_action())
#		if randi() % 2 == 1:
#			qq += str(q_UndoRedo.redo())
#		if randi() % 2 == 1:
#			qq += str(q_UndoRedo.undo())
		
		
		
func delete_node():
	q_UndoRedo.free()
	q_temp_0.queue_free()
		
