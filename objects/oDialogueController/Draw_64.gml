var w = display_get_gui_width();
var h = display_get_gui_height();

/// TAMANHOS
var box_h = clamp(h * 0.22, 120, 220);
var margin = w * 0.03;

/// POSIÇÃO DA CAIXA
var box_x1 = margin;
var box_y1 = h - box_h - margin;

var box_x2 = w - margin;
var box_y2 = h - margin;

/// FUNDO DA CAIXA
draw_set_alpha(0.88);
draw_set_color(make_color_rgb(15, 15, 20));

draw_roundrect(
    box_x1,
    box_y1,
    box_x2,
    box_y2,
    false
);

draw_set_alpha(1);

/// BORDA
draw_set_color(make_color_rgb(90, 90, 90));

draw_roundrect(
    box_x1,
    box_y1,
    box_x2,
    box_y2,
    true
);

/// SPRITE DO ITEM
draw_sprite_ext(
    item_sprite,
    0,
    box_x1 + 55,
    box_y1 + 75,
    5,
    5,
    0,
    c_white,
    1
);

/// NOME DO ITEM
draw_set_font(Silver);
draw_set_color(make_color_rgb(255, 220, 120));

draw_text(
    box_x1 + 120,
    box_y1 + 20,
    item_name
);

/// LINHA DIVISÓRIA
draw_set_color(make_color_rgb(70, 70, 70));

draw_line(
    box_x1 + 120,
    box_y1 + 55,
    box_x2 - 25,
    box_y1 + 55
);

/// TEXO PRINCIPAL
draw_set_color(c_white);

draw_text_ext(
    box_x1 + 120,
    box_y1 + 70,
    texts[index],
    28,
    box_x2 - box_x1 - 170
);

/// BOTÃO [ESPAÇO]
draw_set_color(make_color_rgb(170, 170, 170));

draw_text(
    box_x2 - 120,
    box_y2 - 55,
    "[ESPAÇO]"
);