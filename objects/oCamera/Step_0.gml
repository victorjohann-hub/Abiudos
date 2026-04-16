if(instance_exists(Player)){
	x = Player.x - camera_width/2;
	y = Player.y - 10 - camera_height/2;
}

camera_set_view_pos(view_camera[0], x, y);