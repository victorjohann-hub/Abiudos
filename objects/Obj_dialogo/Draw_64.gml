var _dx = 0
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_set_color(c_black);
draw_rectangle(_dx, _dy, _dx + _boxw, _dy + _boxh, false);

_dx += 16;
_dy += 16;

draw_set_font(Silver);

var _name = messages[current_message].name;
draw_text(_dx, _dy, _name);

_dy += 40;

draw_text_ext(_dx ,_dy, draw_message, -1, _boxw - _dx * 2);