inst_id = instance_position(x, y, tower_slower_circle);

//show_message(inst_id);

if (instance_exists(inst_id)){
    instance_create(x+52, y, tower_slower_upgrade);
    instance_create(x-52, y, tower_slower_refund);
    
}
