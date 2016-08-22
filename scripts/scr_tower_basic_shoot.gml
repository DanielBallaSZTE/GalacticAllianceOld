//circle boundary check
/* old shooting
if (collision_circle(x, y, 100, enemy_ufo, 0, 0)){
    //SELECT TARGET
    
    if (!has_target){

            
            
            target = instance_nearest(x-90, y, enemy_ufo);
            
            if (target!=noone && distance_to_object(target)<=100){
                can_rotate = true;
                can_shoot = true;
                has_target = true;
            }
            if (distance_to_object(target)>100){
                has_target = false;
                can_shoot = false;
                can_rotate = false;
                target = noone;
                
            }
        
    }else if (instance_exists(target)){
        if (distance_to_point(target.x, target.y)>100){
            has_target = false;
            can_rotate = false;
            can_shoot = false;
            target = noone;
        }else if (target.hp <=0){
            has_target = false;
            can_rotate = false;
            can_shoot = false;
            target = noone;
        }
    }  
} else {
    can_shoot = false;
    has_target = false;
    can_rotate = false;
    target = noone;
}

*/

//NEW SHOOTING

if(target == noone){

ids = ds_list_create();
ids = scr_collision_circle_list(x,y, 100, enemy_ufo, 0, 0);

i = 0;


if (ids!=0){
    if (ds_exists(ids, ds_type_list)){
        target = ds_list_find_value(ids, i);
        while (i<ds_list_size(ids)){
            temp_id = ds_list_find_value(ids, i);
            if ((point_distance(temp_id.x, temp_id.y, x, y) <= 100) && (temp_id.x<target.x)){
                target = temp_id;
            }
            i++;
        }
    }
}
}


if (instance_exists(target)){
    //if (point_distance(target.x, target.y, x, y)>100 || target.hp<=0){  
    if (distance_to_point(target.x, target.y)>100 || target.hp<=0){
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


/*}else {
    if (instance_exists(target)){
        if (point_distance(target.x, target.y, x, y)>100){
            can_shoot = false;
            has_target = false;
            can_rotate = false;
            target = noone;
        }else if (target.hp <= 0){
            can_shoot = false;
            has_target = false;
            can_rotate = false;
            target = noone;
        }
    }

}*/

//Shooting sequence

if (can_shoot){
    timer += 1*shoot_speed;
    if (timer > 30){
        instance_create(x, y, tower_basic_shot);
            timer = 0;
    }
}
