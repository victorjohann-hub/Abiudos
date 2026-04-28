var w = display_get_gui_width();
var h = display_get_gui_height();

var box_h = 120;
var margin = 20;

draw_set_color(c_black);
draw_rectangle(
    margin,
    h - box_h - margin,
    w - margin,
    h - margin,
    false
);

draw_set_color(c_white);

draw_text(
    margin + 10,
    h - box_h,
    texts[index]
);
