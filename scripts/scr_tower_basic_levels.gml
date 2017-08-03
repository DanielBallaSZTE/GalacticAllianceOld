tower = argument0
if (tower.level == 1){
    shoot_speed = 1+(1*global.speed_bonus/100);
    //damage = 10;
} else if (tower.level == 2){
    shoot_speed = 2+(2*global.speed_bonus/100);
    //damage = 15;
} else if (tower.level == 3){
    shoot_speed = 3+(3*global.speed_bonus/100);
    //damage = 20;
}
