var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);
var _p = .5;
var _p2 = 1;

draw_sprite(bg_forest, 0, _camx*_p, _camy*_p);

draw_sprite(bg_forest, 1, _camx*_p2, _camy*_p2);
