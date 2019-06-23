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
		
		var q_UPNPDevice : UPNPDevice = UPNPDevice.new()
		
		q_UPNPDevice.set_description_url(str(randi()%50))
		q_UPNPDevice.set_service_type(str(randi()%50))
		q_UPNPDevice.set_igd_control_url(str(randi()%50))
		q_UPNPDevice.set_igd_service_type(str(randi()%50))
		q_UPNPDevice.set_igd_our_addr(str(randi()%50))
		q_UPNPDevice.set_igd_status(randi() % 10)#IGD STATUS
		
		#qq += str(q_UPNPDevice.add_port_mapping( randi()%50, randi()%50, str(randi()%50), str(randi()%50), randi()%50 ))
		#qq += str(q_UPNPDevice.delete_port_mapping( randi()%50, str(randi()%50) ))
		qq += str(q_UPNPDevice.is_valid_gateway())
		#qq += str(q_UPNPDevice.query_external_address())
		
		if Autoload.WRONG_BUGS:
			pass
