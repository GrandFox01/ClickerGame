// Object: obj_Core
// Description: The main clickable object (the neural network core)

// Mouse Left Pressed Event
global.data += global.click_power;

// Create floating text effect
var ft = instance_create_layer(x, y, "Effects", obj_FloatingText);
ft.text = "+" + string(global.click_power);

// Optional: Add sound effect here
// audio_play_sound(snd_click, 1, false);

// Draw Event (visual representation of the core)
draw_set_color(c_lime);
draw_ellipse(x-30, y-30, x+30, y+30, false);
draw_circle(x, y, 25, false);
draw_set_color(c_green);
draw_circle(x, y, 15, true);

// Draw core symbol
draw_set_color(c_white);
draw_text(x-7, y-5, "[_]");

// Animation pulse effect
var scale = 1 + sin(room_speed * current_time / 1000) * 0.1;
draw_set_color(c_lime);
draw_ellipse(x-30*scale, y-30*scale, x+30*scale, y+30*scale, false);
