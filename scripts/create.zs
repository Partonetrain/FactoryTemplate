import crafttweaker.api.ingredient.type.IIngredientEmpty;
import mods.create.PressingManager;
import mods.create.MechanicalCrafterManager;
import mods.create.FillingManager;

var empty = IIngredientEmpty.getInstance();

//generators
craftingTable.remove(<item:create:sail_frame>);
craftingTable.remove(<item:create:white_sail>);

craftingTable.addShaped("windmill_sail_frame", <item:create:sail_frame>, [[empty, <tag:items:forge:rods/treated_wood>, empty], [<tag:items:forge:rods/treated_wood>, empty, <tag:items:forge:rods/treated_wood>], [empty, <tag:items:forge:rods/treated_wood>, empty]]);
craftingTable.addShaped("windmill_sail", <item:create:white_sail>, [[empty, <tag:items:forge:rods/treated_wood>, empty], [<tag:items:forge:rods/treated_wood>, <tag:items:minecraft:wool>, <tag:items:forge:rods/treated_wood>], [empty, <tag:items:forge:rods/treated_wood>, empty]]);
craftingTable.addShapeless("windmill_sail_fill", <item:create:white_sail>, [<item:create:sail_frame>, <tag:items:minecraft:wool>]);

craftingTable.remove(<item:create:large_water_wheel>);
craftingTable.addShaped("large_water_wheel", <item:create:large_water_wheel>, [[<tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>], [<tag:items:forge:treated_wood>, <item:create:water_wheel>, <tag:items:forge:treated_wood>], [<tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>, <tag:items:forge:treated_wood>]]);

//machines
craftingTable.remove(<item:create:mechanical_saw>);
craftingTable.addShapeless("mechanical_saw", <item:create:mechanical_saw>, [<item:create:andesite_casing>, <tag:items:forge:sawblades>]);
craftingTable.addShaped("mechanical_saw_2", <item:create:mechanical_saw>, [[<item:create:andesite_casing>, <tag:items:forge:ingots/iron>, empty],[<tag:items:forge:ingots/iron>, <tag:items:forge:plates/steel>, <tag:items:forge:ingots/iron>], [empty, <tag:items:forge:ingots/iron>, empty]]);

craftingTable.remove(<item:create:mechanical_drill>);
craftingTable.addShapeless("mechanical_drill", <item:create:mechanical_drill>, [<item:create:andesite_casing>, <item:immersiveengineering:drillhead_iron>]);
craftingTable.addShaped("mechanical_drill_2", <item:create:mechanical_drill>, [[<item:create:andesite_casing>, empty, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, empty], [<tag:items:forge:plates/steel>, <tag:items:forge:ingots/iron>, empty]]);



craftingTable.remove(<item:create:rope_pulley>);
craftingTable.addShaped("rope_pulley", <item:create:rope_pulley>, [[<item:create:andesite_casing>], [<item:farmersdelight:rope>], [<tag:items:forge:plates/iron>]]);

//other
craftingTable.remove(<item:create:fluid_pipe>);
craftingTable.addShaped("copper_fluid_pipe", <item:create:fluid_pipe> * 8, [[<tag:items:forge:plates/copper>, <item:minecraft:copper_ingot>, <tag:items:forge:plates/copper>]]);
craftingTable.addShaped("copper_fluid_pipe_vertical", <item:create:fluid_pipe> * 8, [[<tag:items:forge:plates/copper>], [<item:minecraft:copper_ingot>], [<tag:items:forge:plates/copper>]]);

craftingTable.remove(<item:create:empty_blaze_burner>);
craftingTable.addShaped("empty_blazing_burner", <item:create:empty_blaze_burner>, [[empty, <tag:items:forge:plates/iron>, empty], [<tag:items:forge:plates/iron>, <item:immersiveengineering:plate_constantan>, <tag:items:forge:plates/iron>], [empty, <tag:items:forge:plates/iron>, empty]]);
craftingTable.addShaped("blazing_burner", <item:create:blaze_burner>, [[<tag:items:forge:rods/blaze>, <tag:items:forge:plates/iron>, <tag:items:forge:rods/blaze>], [<tag:items:forge:plates/iron>, <item:immersiveengineering:plate_constantan>, <tag:items:forge:plates/iron>], [<tag:items:forge:rods/blaze>, <tag:items:forge:plates/iron>, <tag:items:forge:rods/blaze>]]);
craftingTable.addShapeless("fill_blazing_burner", <item:create:blaze_burner>, [<item:create:empty_blaze_burner>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>, <tag:items:forge:rods/blaze>]);

<recipetype:create:mechanical_crafting>.remove(<item:create_jetpack:jetpack>);
<recipetype:create:mechanical_crafting>.addRecipe("jetpack", <item:create_jetpack:jetpack>, [[empty, <tag:items:forge:plates/brass>, <item:create:shaft>, <tag:items:forge:plates/brass>, empty], [<tag:items:forge:plates/brass>, <item:create:precision_mechanism>, <item:create:copper_backtank>, <item:create:precision_mechanism>, <tag:items:forge:plates/brass>], [<tag:items:forge:plates/brass>, <item:create:chute>, <item:minecraft:diamond>, <item:create:chute>, <tag:items:forge:plates/brass>], [empty, <item:create:chute>, empty, <item:create:chute>, empty]]);

<recipetype:create:filling>.remove(<item:create:blaze_cake>);
<recipetype:create:filling>.addRecipe("blazing_fuel", <item:create:blaze_cake>, <tag:items:forge:coal_coke>, <fluid:minecraft:lava> * 250);

craftingTable.remove(<item:create:tree_fertilizer>);
craftingTable.addShapeless("tree_fertilizer", <item:create:tree_fertilizer> * 2, [<tag:items:minecraft:small_flowers>, <tag:items:minecraft:small_flowers>, <item:immersiveengineering:fertilizer>, <item:immersiveengineering:slag>]);

//materials
<recipetype:create:pressing>.remove(<item:minecraft:dirt_path>);
<recipetype:create:pressing>.remove(<item:minecraft:paper>);
<recipetype:create:pressing>.remove(<item:create:brass_sheet>);

