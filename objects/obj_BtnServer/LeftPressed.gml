// Left Pressed Event
if (global.data >= current_cost) {
    global.data -= current_cost;
    
    if (upgrade_type == "cursor") {
        global.click_power += 1;
        global.cost_cursor = round(current_cost * 1.5);
    } else if (upgrade_type == "server") {
        global.auto_rate += 2;
        global.cost_server = round(current_cost * 1.4);
    } else if (upgrade_type == "botnet") {
        global.auto_rate += 15;
        global.cost_botnet = round(current_cost * 1.4);
    } else if (upgrade_type == "ai") {
        global.auto_rate += 50;
        global.cost_ai = round(current_cost * 1.4);
    }
    
    // Обновляем стоимость для отображения
    current_cost = global["cost_" + upgrade_type];
    
    // Создаем всплывающий текст
    var ft = instance_create_layer(x, y - 20, "Effects", "obj_FloatingText");
    ft.text = "UPGRADED!";
    ft.y_speed = -2;
}
