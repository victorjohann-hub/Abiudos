var margin = 32;
var box_height = 160;

// Caixa
draw_set_color(c_black);
draw_rectangle(
    margin,
    room_height - box_height,
    room_width - margin,
    room_height - margin,
    false
);

// Texto
if (array_length(texts) > 0 && index < array_length(texts)) {
    
    draw_set_color(c_white);
    draw_text(
        50,
        room_height - 140,
        texts[index]
    );
}


// Item grande no centro
if (item_sprite != noone) {

    var cx = room_width / 2;
    var cy = room_height / 2;

    draw_sprite_ext(
        item_sprite,
        0,
        cx,
        cy,
        3, 3, // escala
        0,
        c_white,
        1
    );
}
