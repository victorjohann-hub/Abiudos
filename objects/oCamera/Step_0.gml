if (instance_exists(Player)) {
    
    var cam = view_camera[0];

    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);

    var cam_x = Player.x - cam_w / 2;
    var cam_y = Player.y - 10 - cam_h / 2;

    camera_set_view_pos(cam, round(cam_x), round(cam_y));
}
