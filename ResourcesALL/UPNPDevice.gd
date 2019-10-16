extends Node2D

var q_UPNPDevice : UPNPDevice = UPNPDevice.new()
onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

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
			q_UPNPDevice.set_igd_status(Autoload.get_int())#IGD STATUS

		if randi() % 2 == 1:
			Autoload.qq = str(q_UPNPDevice.add_port_mapping( Autoload.get_int(), Autoload.get_int(), Autoload.get_string(), Autoload.get_string(), Autoload.get_int() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_UPNPDevice.delete_port_mapping( Autoload.get_int(), Autoload.get_string() ))
		if randi() % 2 == 1:
			Autoload.qq = str(q_UPNPDevice.is_valid_gateway())
		if randi() % 2 == 1:
			Autoload.qq = str(q_UPNPDevice.query_external_address())
