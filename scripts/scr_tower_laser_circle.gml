inst_id = instance_position(x, y, tower_laser_circle);

//show_message(inst_id);

if (instance_exists(inst_id)){
    instance_create(x+92, y, tower_laser_upgrade);
    instance_create(x-92, y, tower_laser_refund);
    
}
