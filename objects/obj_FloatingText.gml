// Object: obj_FloatingText
// Description: Floating text effect when clicking the core

// Create Event
text = "+" + string(global.click_power);
y_speed = -1;
life = 30;
alpha = 1;

// Step Event
y += y_speed;
life--;
alpha -= 1/30;

if (life <= 0) {
    instance_destroy();
}

// Draw Event
draw_set_color(c_yellow);
draw_set_alpha(alpha);
draw_text(x, y, text);
draw_set_alpha(1);
