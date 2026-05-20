draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

draw_set_color(c_white);
draw_text(100, 70, "Abiudos");

function draw_menu_button(_btn)
{
    draw_set_color(c_white);
    draw_rectangle(
        _btn.x,
        _btn.y,
        _btn.x + _btn.w,
        _btn.y + _btn.h,
        false
    );

    draw_set_color(c_black);
    draw_text(
        _btn.x + 20,
        _btn.y + 15,
        _btn.text
    );
}

if (menu_state == "main")
{
    draw_menu_button(btn_play);
	draw_menu_button(btn_options);
	draw_menu_button(btn_quit);
}
else if (menu_state == "options")
{
    draw_set_color(c_white);
    draw_text(100, 150, "Volume");

    // Barra do slider
    draw_set_color(c_gray);
    draw_rectangle(slider_x, slider_y, slider_x + slider_w, slider_y + slider_h, false);

    // Preenchimento do volume
    draw_set_color(c_white);
    draw_rectangle(slider_x, slider_y, slider_x + (slider_w * global.volume), slider_y + slider_h, false);

    // Bolinha do slider
    draw_circle(slider_x + (slider_w * global.volume), slider_y + 4, 10, false);

    draw_text(100, 250, "Volume: " + string(round(global.volume * 100)) + "%");

    draw_menu_button(btn_back);
}