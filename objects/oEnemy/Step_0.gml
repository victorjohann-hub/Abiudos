/// =========================
/// Afetado pelo Pause
/// =========================
if (global.game_paused) exit;



if (!instance_exists(Player)) exit;


var dx = Player.x - x;
var dy = Player.y - y;


var dist = point_distance(x, y, Player.x, Player.y);



var stop_dist = 50; // distância mínima


/// MOVIMENTO

if (dist > stop_dist) {
    
    // Normaliza
    dx /= dist;
    dy /= dist;
    
    x += dx * spd;
    y += dy * spd;
}


depth = -y;