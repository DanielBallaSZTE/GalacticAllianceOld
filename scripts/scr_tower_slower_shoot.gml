//circle boundary check

if(target == noone){

z = 0;

ids = ds_list_create();
ids = scr_collision_circle_list(x,y, 150, enemy_ufo, 0, 0);

i = 0;


if (ids!=0){
    if (ds_exists(ids, ds_type_list)){
        target = ds_list_find_value(ids, i);
        while (i<ds_list_size(ids)){
            temp_id = ds_list_find_value(ids, i);
            if ((point_distance(temp_id.x, temp_id.y, x, y) <= 150) && (temp_id.x<target.x)){
                target = temp_id;
            }
            i++;
        }
    }
}
}


if (instance_exists(target)){
    //if (point_distance(target.x, target.y, x, y)>100 || target.hp<=0){
    if (distance_to_point(target.x, target.y)>150 || target.hp<=0){
        target = noone;
    }
    
    if (target != noone){
        can_shoot = true;
        has_target = true;
        can_rotate = true;
    }else if (target == noone){
        can_shoot = false;
        has_target = false;
        can_rotate = false;
    }
}else {
    target = noone;
        can_shoot = false;
        has_target = false;
        can_rotate = false;
}





//Shooting sequence

if (can_shoot){
    timer += 0.5;
    if (timer > 30){
        instance_create(x, y, tower_slower_shot);
            timer = 0;
    }
}
