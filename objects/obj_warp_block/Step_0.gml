if place_meeting(x, y , obj_player) && !instance_exists(obj_warp)
	{
		var warpinst = instance_create_depth(0, 0, -9999, obj_warp);
		warpinst.target_x = target_x;
		warpinst.target_y = target_y;
		warpinst.target_rm = target_rm;
		warpinst.target_face = target_face;
	}


