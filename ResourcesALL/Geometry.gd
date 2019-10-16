extends Node2D

onready var counter : float = Autoload.get_rand_time()

func _process(delta) -> void:
	counter -= delta

#	if counter <= 0:
		counter = Autoload.get_rand_time()
#
#
#		var q_Geometry : Geometry = Geometry.new()
#
#		Autoload.qq = str(Geometry.build_box_planes(Autoload.get_vector3()))
#		Autoload.qq = str(Geometry.build_capsule_planes(Autoload.get_float(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int(),Autoload.get_int())) # AXIS 
#		Autoload.qq = str(Geometry.build_cylinder_planes(Autoload.get_float(),Autoload.get_float(),Autoload.get_int(),Autoload.get_int())) # AXIS 
#
#		Autoload.qq = str(Geometry.clip_polygon(Autoload.get_poolvector3array(),Plane(Autoload.get_float(),Autoload.get_float(),Autoload.get_float(),Autoload.get_float())))
#		Autoload.qq = str(Geometry.clip_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.clip_polyline_with_polygon_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		Autoload.qq = str(Geometry.convex_hull_2d(Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.exclude_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		Autoload.qq = str(Geometry.get_closest_point_to_segment(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Autoload.qq = str(Geometry.get_closest_point_to_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.get_closest_point_to_segment_uncapped(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Autoload.qq = str(Geometry.get_closest_point_to_segment_uncapped_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.get_closest_points_between_segments(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#		Autoload.qq = str(Geometry.get_closest_points_between_segments_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.get_uv84_normal_bit(Autoload.get_vector3()))
#
#		Autoload.qq = str(Geometry.intersect_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.intersect_polyline_with_polygon_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		Autoload.qq = str(Geometry.is_polygon_clockwise(Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.line_intersects_line_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.make_atlas(Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.merge_polygons_2d(Autoload.get_poolvector2array(),Autoload.get_poolvector2array()))
#
#		Autoload.qq = str(Geometry.offset_polygon_2d(Autoload.get_poolvector2array(), Autoload.get_float(), Autoload.get_int())) # PolyJointType
#		Autoload.qq = str(Geometry.offset_polyline_2d(Autoload.get_poolvector2array(), Autoload.get_float(), Autoload.get_int(), Autoload.get_int())) # PolyJointType, PoolEndtype
#
#		Autoload.qq = str(Geometry.point_is_inside_triangle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.ray_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		Autoload.qq = str(Geometry.segment_intersects_circle(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_float()))
#		Autoload.qq = str(Geometry.segment_intersects_convex(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_array()))
#		Autoload.qq = str(Geometry.segment_intersects_cylinder(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float(),Autoload.get_float()))
#		Autoload.qq = str(Geometry.segment_intersects_segment_2d(Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2(),Autoload.get_vector2()))
#		Autoload.qq = str(Geometry.segment_intersects_sphere(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_float()))
#		Autoload.qq = str(Geometry.segment_intersects_triangle(Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3(),Autoload.get_vector3()))
#
#		Autoload.qq = str(Geometry.transform_points_2d(Autoload.get_poolvector2array(),Autoload.get_transform2d()))
#
#		Autoload.qq = str(Geometry.triangulate_delaunay_2d(Autoload.get_poolvector2array()))
#		Autoload.qq = str(Geometry.triangulate_polygon(Autoload.get_poolvector2array()))

