/*if (instance_exists(target) && can_rotate){
    image_angle = point_direction(x, y, target.x, target.y) - 90;
}*/

rotator++;

if (rotator==180){
    rotator = -180;
}

if (rotator%2==0){
    image_angle = rotator*(-2);
}else{
    image_angle = rotator*2;
}
