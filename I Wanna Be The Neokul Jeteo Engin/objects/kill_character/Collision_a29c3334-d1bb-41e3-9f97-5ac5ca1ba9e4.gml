if other.active and vspeed == 0 {
    if sprite_index == sprFruit {sound_play(sndCherry)}
    vspeed = -8;
    with(other) instance_destroy();
    //speeds can vary depending on environment
}

