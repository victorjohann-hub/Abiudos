var p = instance_place(x, y, Player);

if (p != noone) {

    if (oGameController.artifact_count >= required_artifacts) {
        room_goto(rm_win);
    }
}