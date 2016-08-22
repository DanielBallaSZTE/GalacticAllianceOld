
inst_id = instance_position(x, y, tower_basic_circle);

//show_message(inst_id);

if (instance_exists(inst_id)){
    instance_create(x+52, y, tower_basic_upgrade);
    instance_create(x-52, y, tower_basic_refund);
    
}
