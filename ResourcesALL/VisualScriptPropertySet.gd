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
		
		var q_VisualScriptPropertySet : VisualScriptPropertySet = VisualScriptPropertySet.new()
		if !Autoload.RANDI:
			
			q_VisualScriptPropertySet.set_call_mode(randi() % 3) # CallMode
			q_VisualScriptPropertySet.set_base_type("Nabzdryngolony")
			q_VisualScriptPropertySet.set_base_script("Debilny Sposób")
			q_VisualScriptPropertySet.set_basic_type(randi()%50)
			q_VisualScriptPropertySet.set_base_path(".")
			q_VisualScriptPropertySet.set_property("Adam")
			q_VisualScriptPropertySet.set_index("Koniak")
			q_VisualScriptPropertySet.set_assign_op(randi() % 11) # AssignOP
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptPropertySet.set_call_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # CallMode
				q_VisualScriptPropertySet.set_base_type("Nabzdryngolony")
				q_VisualScriptPropertySet.set_base_script("Debilny Sposób")
				q_VisualScriptPropertySet.set_basic_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_VisualScriptPropertySet.set_base_path(".")
				q_VisualScriptPropertySet.set_property("Adam")
				q_VisualScriptPropertySet.set_index("Koniak")
				q_VisualScriptPropertySet.set_assign_op(randi() % Autoload.RANGE - Autoload.RANGE / 2) # AssignOP

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_call_mode(randi() % Autoload.RANGE - Autoload.RANGE / 2) # CallMode
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_base_type("Nabzdryngolony")
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_base_script("Debilny Sposób")
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_basic_type(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_base_path(".")
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_property("Adam")
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_index("Koniak")
			if randi() % 2 == 1:
				q_VisualScriptPropertySet.set_assign_op(randi() % Autoload.RANGE - Autoload.RANGE / 2) # AssignOP
