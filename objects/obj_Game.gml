// Object: obj_Game
// Description: Main game controller, handles global variables, auto-income timer, and UI

// Create Event
global.data = 0;
global.crypto = 0;
global.click_power = 1;
global.auto_rate = 0;

// Upgrade costs
global.cost_cursor = 15;
global.cost_server = 100;
global.cost_botnet = 500;
global.cost_ai = 2000;

// Auto-income timer
auto_timer = 0;

// Step Event
if (global.auto_rate > 0) {
    auto_timer++;
    if (auto_timer >= 60) {
        global.data += global.auto_rate;
        // Small chance to earn crypto
        if (random(100) < 1) {
            global.crypto += 1;
        }
        auto_timer = 0;
    }
}

// Draw GUI Event
draw_set_color(c_lime);
draw_text(20, 20, "DATA: " + string(global.data));
draw_text(20, 50, "CRYPTO: " + string(global.crypto));
draw_text(20, 80, "HACK POWER: " + string(global.click_power));
draw_text(20, 110, "AUTO-HACK: " + string(global.auto_rate) + "/sec");

// Draw title
draw_set_color(c_white);
draw_text(20, 150, "=== CYBER-HACKER: NEURAL NETWORK ===");
