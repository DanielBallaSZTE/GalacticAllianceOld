if (point_distance(x,y, mouse_x, mouse_y)<17){
    if (mouse_check_button_released(mb_left) && !global.placing_tower){
        if (!instance_exists(tower_basic_circle)){
            instance_create(x,y, tower_laser_circle);
        }
    }
}
