import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.recipe.FurnaceRecipeManager;

import mods.jeitweaker.Jei;

var empty = IIngredientEmpty.getInstance();

//The book!
craftingTable.addShapeless("factoryguide", <item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:factoryguide"}), [<item:minecraft:paper>, <tag:items:forge:fiber_hemp>]);


//===VANILLA
craftingTable.remove(<item:minecraft:hopper>);
craftingTable.addShaped("hopper", <item:minecraft:hopper>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:ingots/iron>], [empty, <tag:items:forge:ingots/iron>, empty]]);

craftingTable.addShapeless("pearl", <item:minecraft:ender_pearl>, [<item:minecraft:quartz>, <item:minecraft:lapis_lazuli>]);
<item:minecraft:blaze_rod>.setBurnTime(0);
furnace.addRecipe("blazing_rod", <item:minecraft:blaze_rod>, <tag:items:forge:rods/all_metal>, 0.25, 100);
craftingTable.addShaped("shulker_shell", <item:minecraft:shulker_shell>, [[<item:minecraft:amethyst_shard>, <item:minecraft:amethyst_shard>, <item:minecraft:amethyst_shard>], [<item:minecraft:amethyst_shard>, empty, <item:minecraft:amethyst_shard>]]);
craftingTable.addShaped("elytra", <item:minecraft:elytra>.withDamage(216), [[<item:minecraft:diamond>, <item:immersiveengineering:glider>, <item:minecraft:diamond>], [<item:immersiveengineering:hemp_fabric>, empty, <item:immersiveengineering:hemp_fabric>], [<item:minecraft:phantom_membrane>, empty, <item:minecraft:phantom_membrane>]]);

craftingTable.addShaped("saddle", <item:minecraft:saddle>, [[<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:fiber_hemp>, <tag:items:forge:leather>], [empty, <tag:items:forge:ingots/iron>, empty]]);
craftingTable.addShapeless("name_tag", <item:minecraft:name_tag>, [<item:minecraft:paper>, <item:immersiveengineering:hemp_fiber>]);
craftingTable.addShapeless("5_fragment", <item:minecraft:disc_fragment_5> * 9, [<item:minecraft:music_disc_5>]);

craftingTable.addShaped("candle", <item:minecraft:candle>, [[<item:minecraft:string>], [<item:immersiveengineering:dust_wood>], [<item:immersiveengineering:dust_wood>]]);

craftingTable.addShapeless("large_hide_to_leather", <item:minecraft:leather> * 4, [<item:quark:ravager_hide>]);
craftingTable.addShaped("leather_to_large_hide", <item:quark:ravager_hide>, [[<item:minecraft:leather>, <item:minecraft:leather>], [<item:minecraft:leather>, <item:minecraft:leather>]]);


//===random
var wheeltip = Component.literal("Also usable as wheels!") as MutableComponent;
<item:immersiveengineering:grindingdisk>.addTooltip(wheeltip);
var adv_heelys = <item:create:netherite_diving_boots>.withTag({AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", UUID: [-123724, 23521, 145751, -47042], Amount: 3, Name: "generic.armor"}, {Slot: "feet", AttributeName: "generic.armor_toughness", UUID: [-123724, 23621, 145751, -47242], Amount: 3, Name: "generic.armor_toughness"}, {Slot: "feet", AttributeName: "generic.knockback_resistance", UUID: [-123724, 23721, 145751, -47442], Amount: 0.1, Name: "generic.knockback_resistance"}, {Slot: "feet", AttributeName: "generic.movement_speed", UUID: [-123724, 23821, 145751, -47642], Amount: 1, Operation:1, Name: "generic.movement_speed"}], display: {Name: "{\"text\":\"Ultimate adv_heelys\"}"}, Enchantments: [{lvl: 1, id: "step:stepping"}]});
craftingTable.addShaped("adv_heelys", adv_heelys, [[empty, <item:create:netherite_diving_boots>, empty], [<item:immersiveengineering:grindingdisk>, empty, <item:immersiveengineering:grindingdisk>]]);
Jei.addIngredient(adv_heelys);

craftingTable.remove(<item:energymeter:meter>);
craftingTable.addShaped("energymeter", <item:energymeter:meter>, [[<tag:items:forge:ingots/steel>, <item:immersiveengineering:current_transformer>, <tag:items:forge:ingots/steel>], [<item:minecraft:redstone>, <tag:items:forge:glass_panes>, <item:minecraft:redstone>], [<tag:items:forge:ingots/steel>, <item:minecraft:observer>, <tag:items:forge:ingots/steel>]]);

craftingTable.addShapeless("mini_charcoal_1", <item:minicoal:mini_charcoal>, [<item:immersiveengineering:dust_wood>, <item:immersiveengineering:dust_wood>]);
craftingTable.addShapeless("mini_charcoal_2", <item:minicoal:mini_charcoal>, [<item:farmersdelight:tree_bark>]);

//===DRAWERS
craftingTable.remove(<item:storagedrawers:void_upgrade>);
craftingTable.addShaped("drawer_void_upgrade", <item:storagedrawers:void_upgrade>, [[<item:create:powdered_obsidian>, <item:create:powdered_obsidian>, <item:create:powdered_obsidian>], [<item:create:powdered_obsidian>, <item:storagedrawers:upgrade_template>, <item:create:powdered_obsidian>], [<item:create:powdered_obsidian>, <item:create:powdered_obsidian>, <item:create:powdered_obsidian>]]);
craftingTable.remove(<item:storagedrawers:obsidian_storage_upgrade>);

craftingTable.addShapeless("key_1", <item:storagedrawers:drawer_key>, [<item:storagedrawers:shroud_key>]);
craftingTable.remove(<item:storagedrawers:quantify_key>);
craftingTable.addShapeless("key_2", <item:storagedrawers:quantify_key>, [<item:storagedrawers:drawer_key>]);
craftingTable.remove(<item:storagedrawers:shroud_key>);
craftingTable.addShapeless("key_3", <item:storagedrawers:shroud_key>, [<item:storagedrawers:quantify_key>]);


//BUILDING GADGETS
craftingTable.removeByName("buildinggadgets:gadget_building");
craftingTable.removeByName("buildinggadgets:gadget_exchanging");
craftingTable.addShaped("gadget_building", <item:buildinggadgets:gadget_building>.withTag({state: {serializer: "buildinggadgets:dummy_serializer", state: {Name: "minecraft:air"}, data: {}}}), [[<tag:items:forge:plates/aluminum>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/aluminum>], [<tag:items:forge:gems/diamond>, <tag:items:forge:dusts/redstone>, <tag:items:forge:gems/diamond>], [<tag:items:forge:plates/aluminum>, <item:minecraft:dispenser>, <tag:items:forge:plates/aluminum>]]);
craftingTable.addShaped("gadget_exchanging", <item:buildinggadgets:gadget_exchanging>.withTag({state: {serializer: "buildinggadgets:dummy_serializer", state: {Name: "minecraft:air"}, data: {}}}), [[<tag:items:forge:plates/aluminum>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/aluminum>], [<tag:items:forge:gems/diamond>, <tag:items:forge:dusts/redstone>, <tag:items:forge:gems/diamond>], [<tag:items:forge:plates/aluminum>, <item:create:schematicannon>, <tag:items:forge:plates/aluminum>]]);


//===COMPUTERS
recipes.remove(<item:computercraft:computer_advanced>);
recipes.remove(<item:computercraft:pocket_computer_advanced>);
recipes.remove(<item:computercraft:turtle_advanced>);
recipes.remove(<item:computercraft:monitor_advanced>);
recipes.remove(<item:computercraft:wireless_modem_advanced>);

craftingTable.addShaped("computer", <item:computercraft:computer_advanced>, [[<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>], [<tag:items:forge:ingots/brass>, <item:immersiveengineering:logic_unit>, <tag:items:forge:ingots/brass>],[<tag:items:forge:ingots/brass>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/brass>]]);
craftingTable.addShaped("pocket_computer", <item:computercraft:pocket_computer_advanced>, [[<tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/brass>, <tag:items:forge:nuggets/brass>], [<tag:items:forge:nuggets/brass>, <item:immersiveengineering:logic_unit>, <tag:items:forge:nuggets/brass>],[<tag:items:forge:nuggets/brass>, <tag:items:forge:glass_panes>, <tag:items:forge:nuggets/brass>]]);
craftingTable.addShaped("turtle", <item:computercraft:turtle_advanced>, [[<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>], [<tag:items:forge:ingots/brass>, <item:immersiveengineering:logic_unit>, <tag:items:forge:ingots/brass>],[<item:immersiveengineering:grindingdisk>, <tag:items:forge:chests/wooden>, <item:immersiveengineering:grindingdisk>]]);
craftingTable.addShaped("monitor", <item:computercraft:monitor_advanced> * 4, [[<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>], [<tag:items:forge:ingots/brass>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/brass>], [<tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>, <tag:items:forge:ingots/brass>]]);
craftingTable.addShaped("modem", <item:computercraft:wireless_modem_advanced>, [[empty, <tag:items:forge:ingots/brass>, empty], [<tag:items:forge:ingots/brass>, <item:create:redstone_link>, <tag:items:forge:ingots/brass>], [empty, <tag:items:forge:ingots/brass>, empty]]);

//===QUARK

//===ersatz leather is fine!
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>, [[<item:minecraft:string>, <tag:items:forge:leather>, <item:minecraft:string>], [<tag:items:forge:leather>, empty, <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);
craftingTable.remove(<item:quark:backpack>);
craftingTable.addShaped("backpack", <item:quark:backpack>.withTag({Inventory: [{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]}),
 [[<tag:items:forge:leather>, <tag:items:forge:gems/diamond>, <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:chests/wooden>, <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:ingots/iron>, <tag:items:forge:leather>]]);
craftingTable.remove(<item:quark:seed_pouch>);
craftingTable.addShaped("seed_pouch", <item:quark:seed_pouch>, [[empty, <tag:items:forge:string>, empty], [<tag:items:forge:leather>, <tag:items:quark:seed_pouch_holdable>, <tag:items:forge:leather>], [empty, <tag:items:forge:leather>, empty]]);

craftingTable.removeByName("minecraft:book");
craftingTable.addShapeless("book", <item:minecraft:book>, [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>, <tag:items:forge:leather>]);
  
craftingTable.remove(<item:minecraft:item_frame>);
craftingTable.addShaped("item_frame", <item:minecraft:item_frame>, [[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>], [<tag:items:forge:rods/wooden>, <tag:items:forge:leather>, <tag:items:forge:rods/wooden>], [<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>]]);
