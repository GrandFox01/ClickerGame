// Draw Event
// Определяем цвет кнопки
var current_cost = variable_global_get("cost_" + upgrade_type);

if (global.data >= current_cost) {
    if (hover) {
        draw_set_color(c_lime);  // Ярко-зеленый при наведении
    } else {
        draw_set_color(c_green); // Зеленый если хватает денег
    }
} else {
    if (hover) {
        draw_set_color(c_red);   // Ярко-красный при наведении
    } else {
        draw_set_color(c_dkgray); // Темно-серый если не хватает денег
    }
}

// Рисуем кнопку
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);

// Рисуем текст
draw_set_color(c_white);
draw_set_font(fnt_main);
var desc = "";
var bonus = "";

switch(upgrade_type) {
    case "cursor": 
        desc = "Upgrade Tool"; 
        bonus = "+" + string(1) + " Click Power";
        break;
    case "server": 
        desc = "Buy Server"; 
        bonus = "+" + string(2) + " Data/sec";
        break;
    case "botnet": 
        desc = "Deploy Botnet"; 
        bonus = "+" + string(15) + " Data/sec";
        break;
    case "ai": 
        desc = "Develop AI"; 
        bonus = "+" + string(50) + " Data/sec";
        break;
}

draw_text(btn_x + 10, btn_y + 5, desc);
draw_text(btn_x + 10, btn_y + 22, bonus);

// Рисуем стоимость
if (global.data >= current_cost) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_red);
}
draw_text(btn_x + btn_w - 80, btn_y + 12, string(current_cost));

// Рамка при наведении
if (hover) {
    draw_set_color(c_white);
    draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, true);
}
