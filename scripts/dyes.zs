import mods.create.MillingManager;

<recipetype:create:milling>.removeByName("create:milling/grass");
<recipetype:create:milling>.removeByName("create:milling/tall_grass");
<recipetype:create:milling>.removeByName("create:milling/lapis_lazuli");
<recipetype:create:milling>.removeByName("corn_delight:integration/create/milling/corn");

//white
<recipetype:create:milling>.addRecipe("milled_sugar", [<item:minecraft:white_dye> % 50], <item:minecraft:sugar>, 100);
//orange
<recipetype:create:milling>.addRecipe("milled_carrot", [<item:minecraft:orange_dye>], <item:minecraft:carrot>, 100);
//magenta
<recipetype:create:milling>.addRecipe("milled_bubble_coral", [<item:minecraft:magenta_dye> * 3, (<item:minecraft:magenta_dye> % 50)], <item:minecraft:bubble_coral>, 100);
<recipetype:create:milling>.addRecipe("milled_bbubble_coral_fan", [<item:minecraft:magenta_dye> * 2, (<item:minecraft:magenta_dye> % 50)], <item:minecraft:bubble_coral_fan>, 100);
//lightblue
<recipetype:create:milling>.addRecipe("milled_glow_shroom", [<item:minecraft:light_blue_dye> * 2], <item:quark:glow_shroom>, 100);
//yellow
<recipetype:create:milling>.addRecipe("milled_maize", [<item:minecraft:yellow_dye>, <item:farmersdelight:straw>], <item:corn_delight:corn>, 100);
<recipetype:create:milling>.addRecipe("milled_horn_coral", [<item:minecraft:yellow_dye> * 3, (<item:minecraft:yellow_dye> % 50)], <item:minecraft:horn_coral>, 100);
<recipetype:create:milling>.addRecipe("milled_horn_coral_fan", [<item:minecraft:yellow_dye> * 2, (<item:minecraft:yellow_dye> % 50)], <item:minecraft:horn_coral_fan>, 100);
//lime
<recipetype:create:milling>.addRecipe("milled_cabbage", [<item:minecraft:lime_dye>], <item:farmersdelight:cabbage>, 100);
<recipetype:create:milling>.addRecipe("milled_poison_potato", [<item:minecraft:lime_dye> * 2], <item:minecraft:poisonous_potato>, 100);
<recipetype:create:milling>.addRecipe("milled_mangrove_sapling", [<item:minecraft:lime_dye>], <item:minecraft:mangrove_propagule>, 100);
//pink
<recipetype:create:milling>.addRecipe("milled_brain_coral", [<item:minecraft:pink_dye> * 3, (<item:minecraft:pink_dye> % 50)], <item:minecraft:brain_coral>, 100);
<recipetype:create:milling>.addRecipe("milled_brain_coral_fan", [<item:minecraft:pink_dye> * 2, (<item:minecraft:pink_dye> % 50)], <item:minecraft:brain_coral_fan>, 100);
//gray
<recipetype:create:milling>.addRecipe("milled_coke", [<item:minecraft:gray_dye>, <item:minecraft:light_gray_dye>], <item:immersiveengineering:coal_coke>, 100);
//lightgray
//cyan
<recipetype:create:milling>.addRecipe("milled_warped_shroom", [<item:minecraft:cyan_dye>, <item:minecraft:orange_dye>], <item:minecraft:warped_fungus>, 100);
//purple
<recipetype:create:milling>.addRecipe("milled_chorus_fruit", [<item:minecraft:purple_dye>], <item:minecraft:chorus_fruit>, 100);
//blue
<recipetype:create:milling>.addRecipe("milled_lapis", [<item:minecraft:blue_dye> * 3, (<item:minecraft:blue_dye> % 50)], <item:minecraft:lapis_lazuli>, 100);
<recipetype:create:milling>.addRecipe("milled_echo_shard", [<item:minecraft:blue_dye> * 1, (<item:minecraft:purple_dye> % 50)], <item:minecraft:echo_shard>, 100);
<recipetype:create:milling>.addRecipe("milled_sculk", [<item:minecraft:blue_dye> * 1, (<item:minecraft:purple_dye> % 50)], <item:minecraft:sculk>, 100);
<recipetype:create:milling>.addRecipe("milled_tube_coral", [<item:minecraft:blue_dye> * 3, (<item:minecraft:blue_dye> % 50)], <item:minecraft:tube_coral>, 100);
<recipetype:create:milling>.addRecipe("milled_tube_coral_fan", [<item:minecraft:blue_dye> * 2, (<item:minecraft:blue_dye> % 50)], <item:minecraft:tube_coral_fan>, 100);
//brown
<recipetype:create:milling>.addRecipe("milled_bark", [<item:minecraft:brown_dye> % 50], <item:farmersdelight:tree_bark>, 100);
<recipetype:create:milling>.addRecipe("milled_brown_shroom", [<item:minecraft:brown_dye>], <item:minecraft:brown_mushroom>, 100);
//green
<recipetype:create:milling>.addRecipe("milled_grass", [<item:minecraft:green_dye>, <item:minecraft:wheat_seeds> % 25], <item:minecraft:grass>, 100);
<recipetype:create:milling>.addRecipe("milled_talled_grass", [<item:minecraft:green_dye>, <item:minecraft:wheat_seeds> % 25], <item:minecraft:tall_grass>, 100);
<recipetype:create:milling>.addRecipe("milled_moss_paste", [<item:minecraft:green_dye>, <item:minecraft:slime_ball> % 10], <item:quark:moss_paste>, 100);
//red
<recipetype:create:milling>.addRecipe("milled_red_shroom", [<item:minecraft:red_dye>], <item:minecraft:red_mushroom>, 100);
<recipetype:create:milling>.addRecipe("milled_crimson_shroom", [<item:minecraft:red_dye>, <item:minecraft:orange_dye>], <item:minecraft:crimson_fungus>, 100);
<recipetype:create:milling>.addRecipe("milled_fire_coral", [<item:minecraft:red_dye> * 3, (<item:minecraft:red_dye> % 50)], <item:minecraft:fire_coral>, 100);
<recipetype:create:milling>.addRecipe("milled_fire_coral_fan", [<item:minecraft:red_dye> * 2, (<item:minecraft:red_dye> % 50)], <item:minecraft:fire_coral_fan>, 100);

//black
//related
<recipetype:create:milling>.addRecipe("milled_moss", [<item:quark:moss_paste> * 2], <item:minecraft:moss_block>, 100);
