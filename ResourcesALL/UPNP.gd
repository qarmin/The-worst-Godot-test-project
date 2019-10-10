extends Node2D

var q_UPNP : UPNP = UPNP.new()
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
			q_UPNP = UPNP.new()
		
		
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
