//Make a row of ships
var ship_width2 = sprite_get_width(spr_ships);
var ship_height2 = sprite_get_height(spr_ships);
var ship2;

//Compute the y position of ships. Same for each ship in the row.
var row_y2 = sprite_get_height(spr_top_panel) + global.space_above_row2;
var ship_x2;
var num_ship_types2 = sprite_get_number(spr_ships);
var ship_type2;

//For each ship in the row.....
for (ship2 = 0; ship2 < global.ships_per_row2; ship2++) {
    //Choose a ship type.
    ship_type2 = random_range(0, num_ship_types2);
    //cOMPUTE X POS OF THE SHIP
    ship_x2 = global.space_left_first_col2 + (ship_width2 + global.space_between_ships2) * ship2;
    //Make it
    new_ship2 = instance_create(ship_x2, row_y2, obj_ship2);
    //Setting the image speed of the ship to 0.
    new_ship2.image_speed = 0;
    //Set ship type to show.
    new_ship2.image_index = ship_type2;
}
