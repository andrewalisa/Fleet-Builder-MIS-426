//No ships are created yet, initalizing the variable 
global.num_ships_in_current_row_in_position = 0;

//Make a row of ships
var ship_width = sprite_get_width(spr_ships);
var ship_height = sprite_get_height(spr_ships);
var ship;

//Compute the y position of ships. Same for each ship in the row.
var row_y = -sprite_get_height(spr_ships);
var ship_x;
var num_ship_types = sprite_get_number(spr_ships);
var ship_type;

//Calculating where the ships stop at. 
global.destinationY = (obj_bottom_panel.y-(global.ship_row_gap + sprite_get_height(spr_ships)) * (global.num_rows_made + 1));

//For each ship in the row.....
for (ship = 0; ship < global.ships_per_row; ship++) {
    //Choose a ship type.
    ship_type = random_range(0, num_ship_types);
    //cOMPUTE X POS OF THE SHIP
    ship_x = global.space_left_first_col + (ship_width + global.space_between_ships) * ship;
    //Make it
    new_ship = instance_create(ship_x, row_y, obj_ship);
    //Setting the image speed of the ship to 0.
    new_ship.image_speed = 0;
    //Set ship type to show.
    new_ship.image_index = ship_type;
}
