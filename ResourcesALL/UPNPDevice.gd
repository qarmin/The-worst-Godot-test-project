extends Node2D

var q_UPNPDevice : UPNPDevice = UPNPDevice.new()
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
			q_UPNPDevice = UPNPDevice.new()
		
		
		if randi() % 2 == 1:
			q_UPNPDevice.set_description_url(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNPDevice.set_service_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNPDevice.set_igd_control_url(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNPDevice.set_igd_service_type(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNPDevice.set_igd_our_addr(Autoload.get_string())
		if randi() % 2 == 1:
			q_UPNPDevice.set_igd_status(Autoload.get_randi())#IGD STATUS
			
		if randi() % 2 == 1:
			qq += str(q_UPNPDevice.add_port_mapping( Autoload.get_randi(), Autoload.get_randi(), Autoload.get_string(), Autoload.get_string(), Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_UPNPDevice.delete_port_mapping( Autoload.get_randi(), Autoload.get_string() ))
		if randi() % 2 == 1:
			qq += str(q_UPNPDevice.is_valid_gateway())
		if randi() % 2 == 1:
			qq += str(q_UPNPDevice.query_external_address())
