extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#		var q_Geometry : Geometry = Geometry.new()
#
#		qq += str(Geometry.build_box_planes(Autoload.get_vector3()))
#		qq += str(Geometry.build_capsule_planes(Autoload.get_float(),Autoload.get_float(),randi()%10,randi()%10,randi() % 3)) # AXIS
#		qq += str(Geometry.build_cylinder_planes(Autoload.get_float(),Autoload.get_float(),randi()%10,randi() % 3)) # AXIS
#
#		qq += str(Geometry.clip_polygon(Autoload.get_poolvector3array(),Plane(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())))
#		qq += str(Geometry.clip_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#		qq += str(Geometry.clip_polyline_with_polygon_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		qq += str(Geometry.convex_hull_2d(Autoload.get_poolvector2array()))
#		qq += str(Geometry.exclude_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		qq += str(Geometry.get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		qq += str(Geometry.get_closest_point_to_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.get_closest_point_to_segment_uncapped(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		qq += str(Geometry.get_closest_point_to_segment_uncapped_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.get_closest_points_between_segments(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		qq += str(Geometry.get_closest_points_between_segments_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.get_uv84_normal_bit(Autoload.get_vector3()))
#
#		qq += str(Geometry.intersect_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#		qq += str(Geometry.intersect_polyline_with_polygon_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		qq += str(Geometry.is_polygon_clockwise(Autoload.get_poolvector2array()))
#		qq += str(Geometry.line_intersects_line_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.make_atlas(Autoload.get_poolvector2array()))
#		qq += str(Geometry.merge_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		qq += str(Geometry.offset_polygon_2d(Autoload.get_poolvector2array(), Autoload.get_float(), randi() %3)) # PolyJointType
#		#qq += str(Geometry.offset_polyline_2d(Autoload.get_poolvector2array(), Autoload.get_float(), randi() %3, randi() % 5)) # PolyJointType, PoolEndtype
#
#		qq += str(Geometry.point_is_inside_triangle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.ray_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		qq += str(Geometry.segment_intersects_circle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_float()))
#		qq += str(Geometry.segment_intersects_convex(Autoload.get_vector3(),Autoload.get_vector3(),[Plane(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())]))
#		qq += str(Geometry.segment_intersects_cylinder(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float(),Autoload.get_float()))
#		qq += str(Geometry.segment_intersects_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		qq += str(Geometry.segment_intersects_sphere(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float()))
#		qq += str(Geometry.segment_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		qq += str(Geometry.transform_points_2d(Autoload.get_poolvector2array(),Autoload.get_transform2d()))
#
#		qq += str(Geometry.triangulate_delaunay_2d(Autoload.get_poolvector2array()))
#		qq += str(Geometry.triangulate_polygon(Autoload.get_poolvector2array()))
#
