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
		if !Autoload.RANDI:
			
			q_UPNP.set_discover_multicast_if(str(randi()%50))
			q_UPNP.set_discover_local_port(randi()%50)
			q_UPNP.set_discover_ipv6(bool(randi()%2))
			
			q_UPNP.add_device( UPNPDevice.new() )
			qq += str(q_UPNP.add_port_mapping( randi()%50, randi()%50, "Kompot", "Ślęża", randi()%50 ))
			
			q_UPNP.clear_devices()
			#qq += str(q_UPNP.delete_port_mapping( randi()%50, "UDP" ))
			#if Autoload.SLOW_FUNCTIONS:
			#	qq += str(q_UPNP.discover( randi()%50, randi()%50, "Pozycyjny" ))
			
			#qq += str(q_UPNP.get_device( randi()%50 ))
			qq += str(q_UPNP.get_device_count())
			#qq += str(q_UPNP.get_gateway())
			
			#qq += str(q_UPNP.query_external_address())
			#q_UPNP.remove_device( randi()%50 )
			#q_UPNP.set_device( randi()%50, UPNPDevice.new() )
			
			if Autoload.WRONG_BUGS:
				q_UPNP.set_discover_multicast_if(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
				q_UPNP.set_discover_local_port(randi() % Autoload.RANGE - Autoload.RANGE / 2)
				q_UPNP.set_discover_ipv6(bool(randi()%2))
				
				q_UPNP.add_device( UPNPDevice.new() )
				qq += str(q_UPNP.add_port_mapping( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kompot", "Ślęża", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
				q_UPNP.clear_devices()
				qq += str(q_UPNP.delete_port_mapping( randi() % Autoload.RANGE - Autoload.RANGE / 2, "UDP" ))
				if Autoload.SLOW_FUNCTIONS:
					qq += str(q_UPNP.discover( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Pozycyjny" ))
				
				qq += str(q_UPNP.get_device( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				qq += str(q_UPNP.get_device_count())
				qq += str(q_UPNP.get_gateway())
				
				qq += str(q_UPNP.query_external_address())
				q_UPNP.remove_device( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
				q_UPNP.set_device( randi() % Autoload.RANGE - Autoload.RANGE / 2, UPNPDevice.new() )

		else: #RANDI
			if randi() % 2 == 1:
				q_UPNP.set_discover_multicast_if(str(randi() % Autoload.RANGE - Autoload.RANGE / 2))
			if randi() % 2 == 1:
				q_UPNP.set_discover_local_port(randi() % Autoload.RANGE - Autoload.RANGE / 2)
			if randi() % 2 == 1:
				q_UPNP.set_discover_ipv6(bool(randi()%2))
				
			if randi() % 2 == 1:
				q_UPNP.add_device( UPNPDevice.new() )
			if randi() % 2 == 1:
				qq += str(q_UPNP.add_port_mapping( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Kompot", "Ślęża", randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
				
			if randi() % 2 == 1:
				q_UPNP.clear_devices()
			if randi() % 2 == 1:
				qq += str(q_UPNP.delete_port_mapping( randi() % Autoload.RANGE - Autoload.RANGE / 2, "UDP" ))
			if randi() % 2 == 1:
				if Autoload.SLOW_FUNCTIONS:
					qq += str(q_UPNP.discover( randi() % Autoload.RANGE - Autoload.RANGE / 2, randi() % Autoload.RANGE - Autoload.RANGE / 2, "Pozycyjny" ))
				
			if randi() % 2 == 1:
				qq += str(q_UPNP.get_device( randi() % Autoload.RANGE - Autoload.RANGE / 2 ))
			if randi() % 2 == 1:
				qq += str(q_UPNP.get_device_count())
			if randi() % 2 == 1:
				qq += str(q_UPNP.get_gateway())
				
			if randi() % 2 == 1:
				qq += str(q_UPNP.query_external_address())
			if randi() % 2 == 1:
				q_UPNP.remove_device( randi() % Autoload.RANGE - Autoload.RANGE / 2 )
			if randi() % 2 == 1:
				q_UPNP.set_device( randi() % Autoload.RANGE - Autoload.RANGE / 2, UPNPDevice.new() )
