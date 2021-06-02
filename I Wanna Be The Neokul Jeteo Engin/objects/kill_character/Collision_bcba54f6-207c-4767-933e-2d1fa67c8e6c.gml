if hspeed != 0 or vspeed != 0 {
    hspeed /= 2;
    vspeed /= 2;
    with(other) instance_destroy();
}

