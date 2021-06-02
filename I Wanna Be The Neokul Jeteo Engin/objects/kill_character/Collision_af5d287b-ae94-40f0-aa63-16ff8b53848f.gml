if other.active and hspeed == 0 {
    if sprite_index == sprFruit {sound_play(sndCherry)}
    hspeed = 8;
    with(other) instance_destroy();
    //speeds can vary depending on environment
}

