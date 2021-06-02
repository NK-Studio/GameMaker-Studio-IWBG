if timer < 10 { //lasts 0.2 second
    timer += 1;
    for(i = 0; i < 50; i += 1) {
        instance_screate(blood,xx,yy,random(8),random(360))
    }
} else {instance_destroy();}

