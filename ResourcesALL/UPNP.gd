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
		
		var q_UPNP : UPNP = UPNP.new()
		
		q_UPNP.set_discover_multicast_if(str(randi()%50))
		q_UPNP.set_discover_local_port(randi()%50)
		q_UPNP.set_discover_ipv6(bool(randi()%2))
		
		q_UPNP.add_device( UPNPDevice.new() )
		qq += str(q_UPNP.add_port_mapping( randi()%50, randi()%50, "Kompot", "Ślęża", randi()%50 ))
		
		q_UPNP.clear_devices()
		#qq += str(q_UPNP.delete_port_mapping( randi()%50, "UDP" ))
		#qq += str(q_UPNP.discover( randi()%50, randi()%50, "Pozycyjny" ))
		
		#qq += str(q_UPNP.get_device( randi()%50 ))
		qq += str(q_UPNP.get_device_count())
		#qq += str(q_UPNP.get_gateway())
		
		#qq += str(q_UPNP.query_external_address())
		#q_UPNP.remove_device( randi()%50 )
		#q_UPNP.set_device( randi()%50, UPNPDevice.new() )
		
		if Autoload.WRONG_BUGS:
			q_UPNP.set_discover_multicast_if(str(randi() % 1000 - 500))
			q_UPNP.set_discover_local_port(randi() % 1000 - 500)
			q_UPNP.set_discover_ipv6(bool(randi()%2))
			
			q_UPNP.add_device( UPNPDevice.new() )
			qq += str(q_UPNP.add_port_mapping( randi() % 1000 - 500, randi() % 1000 - 500, "Kompot", "Ślęża", randi() % 1000 - 500 ))
			
			q_UPNP.clear_devices()
			qq += str(q_UPNP.delete_port_mapping( randi() % 1000 - 500, "UDP" ))
			qq += str(q_UPNP.discover( randi() % 1000 - 500, randi() % 1000 - 500, "Pozycyjny" ))
			
			qq += str(q_UPNP.get_device( randi() % 1000 - 500 ))
			qq += str(q_UPNP.get_device_count())
			qq += str(q_UPNP.get_gateway())
			
			qq += str(q_UPNP.query_external_address())
			q_UPNP.remove_device( randi() % 1000 - 500 )
			q_UPNP.set_device( randi() % 1000 - 500, UPNPDevice.new() )
