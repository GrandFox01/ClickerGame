// Object: obj_Upgrades
// Description: Upgrade buttons interface

// Draw GUI Event
var y_start = 200;
var gap = 40;
var btn_width = 280;
var btn_height = 35;

draw_set_color(c_white);
draw_text(20, 180, "=== BLACK MARKET UPGRADES ===");

// Helper function to draw upgrade button
function draw_upgrade(y_pos, name, cost, can_afford) {
    if (can_afford) {
        draw_set_color(c_darkgreen);
    } else {
        draw_set_color(c_maroon);
    }
    draw_rectangle(20, y_pos, 20 + btn_width, y_pos + btn_height, true);
    
    draw_set_color(c_white);
    draw_text(30, y_pos + 10, name + " (" + string(cost) + " data)");
    
    // Buy button
    if (can_afford) {
        draw_set_color(c_green);
    } else {
        draw_set_color(c_red);
    }
    draw_rectangle(20 + btn_width - 60, y_pos, 20 + btn_width, y_pos + btn_height, true);
    draw_set_color(c_white);
    draw_text(20 + btn_width - 50, y_pos + 10, "BUY");
}

// Draw all upgrades
draw_upgrade(y_start, "Better Tool", global.cost_cursor, global.data >= global.cost_cursor);
draw_upgrade(y_start + gap, "Server Rack", global.cost_server, global.data >= global.cost_server);
draw_upgrade(y_start + gap * 2, "Botnet Node", global.cost_botnet, global.data >= global.cost_botnet);
draw_upgrade(y_start + gap * 3, "AI Core", global.cost_ai, global.data >= global.cost_ai);

// Mouse Left Pressed Event
var mx = mouse_x;
var my = mouse_y;
var y_start = 200;
var gap = 40;
var btn_width = 280;
var btn_height = 35;

function try_buy(cost_ref, type) {
    if (global.data >= cost_ref) {
        global.data -= cost_ref;
        switch(type) {
            case "cursor":
                global.click_power += 1;
                global.cost_cursor = ceil(global.cost_cursor * 1.5);
                break;
            case "server":
                global.auto_rate += 2;
                global.cost_server = ceil(global.cost_server * 1.4);
                break;
            case "botnet":
                global.auto_rate += 15;
                global.cost_botnet = ceil(global.cost_botnet * 1.4);
                break;
            case "ai":
                global.auto_rate += 50;
                global.cost_ai = ceil(global.cost_ai * 1.4);
                break;
        }
        return true;
    }
    return false;
}

// Check clicks on each button
if (mx >= 20 && mx <= 20 + btn_width) {
    if (my >= y_start && my <= y_start + btn_height) {
        try_buy(global.cost_cursor, "cursor");
    } else if (my >= y_start + gap && my <= y_start + gap + btn_height) {
        try_buy(global.cost_server, "server");
    } else if (my >= y_start + gap * 2 && my <= y_start + gap * 2 + btn_height) {
        try_buy(global.cost_botnet, "botnet");
    } else if (my >= y_start + gap * 3 && my <= y_start + gap * 3 + btn_height) {
        try_buy(global.cost_ai, "ai");
    }
}
