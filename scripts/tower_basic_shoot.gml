//circle boundary check

if (collision_circle(x, y, 50, enemy_ufo, 0, 0)){
    can_shoot = true;
} else {
    can_shoot = false;
}


//Shooting sequence

if (can_shoot){
    timer += 1*shoot_speed;
    if (timer > 30){
        instance_create(x, y, tower_basic_shot);
            timer = 0;
    }
}
