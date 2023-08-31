import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.recipe.type.StonecutterRecipe;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;
import mods.create.MechanicalCrafterManager;

var empty = IIngredientEmpty.getInstance();

var tooltip = Component.literal("May contain incorrect information. Use Factory Guide instead. Use this as a fallback.") as MutableComponent;
tooltip.setStyle(<constant:minecraft:formatting:red>.asStyle());
<item:immersiveengineering:manual>.addTooltip(tooltip);

//multiblock blocks
craftingTable.remove(<item:immersiveengineering:generator>);
<recipetype:create:mechanical_crafting>.addRecipe("generator_block", <item:immersiveengineering:generator> * 4, [[<item:immersiveengineering:plate_steel>, <item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:plate_steel>],
																												 [<item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:wirecoil_electrum>], 
																												 [<item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:component_iron>, <item:immersiveengineering:wirecoil_electrum>], 
																												 [<item:immersiveengineering:plate_steel>, <item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:wirecoil_electrum>, <item:immersiveengineering:plate_steel>]]);
craftingTable.remove(<item:immersiveengineering:radiator>);
craftingTable.addShaped("radiator_block", <item:immersiveengineering:radiator> * 3, [[<tag:items:forge:sheetmetals/steel>, <tag:items:forge:plates/copper>, <tag:items:forge:sheetmetals/steel>], [<tag:items:forge:plates/copper>, <item:create:propeller>, <tag:items:forge:plates/copper>], [<tag:items:forge:sheetmetals/steel>, <tag:items:forge:plates/copper>, <tag:items:forge:sheetmetals/steel>]]);


//unify stuff
craftingTable.addShapeless("plate_brass_hammering", <item:create:brass_sheet>, [<tag:items:forge:ingots/brass>, <item:immersiveengineering:hammer>]);
craftingTable.removeByName("immersiveengineering:crafting/windmill_sail");
craftingTable.addShapeless("hammer_crushing_raw_zinc", <item:immersiveengineering:windmill_sail>, [<tag:items:forge:raw_materials/zinc>, <item:immersiveengineering:hammer>]);
craftingTable.addShapeless("hammer_crushing_zinc_ore", <item:immersiveengineering:windmill_sail>, [<tag:items:forge:ores/zinc>, <item:immersiveengineering:hammer>]);


//tools
craftingTable.remove(<item:immersiveengineering:sawblade>);
craftingTable.addShaped("sawblade", <item:immersiveengineering:sawblade>, [[empty, <tag:items:forge:ingots/iron>, empty], [<tag:items:forge:ingots/iron>, <tag:items:forge:plates/steel>, <tag:items:forge:ingots/iron>], [empty, <tag:items:forge:ingots/iron>, empty]]);
craftingTable.remove(<item:immersiveengineering:rockcutter>);
craftingTable.addShaped("rockcutter", <item:immersiveengineering:rockcutter>, [[empty, <item:minecraft:diamond>, empty], [<item:minecraft:diamond>, <tag:items:forge:sawblades>, <item:minecraft:diamond>], [empty, <item:minecraft:diamond>, empty]]);

craftingTable.remove(<item:immersiveengineering:drillhead_iron>);
craftingTable.addShaped("drillhead_iron", <item:immersiveengineering:drillhead_iron>, [[empty, empty, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, empty], [<tag:items:forge:plates/steel>, <tag:items:forge:ingots/iron>, empty]]);
craftingTable.remove(<item:immersiveengineering:drillhead_steel>);
craftingTable.addShaped("drillhead_steel", <item:immersiveengineering:drillhead_steel>, [[empty, empty, <tag:items:forge:ingots/steel>], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, empty], [<tag:items:forge:plates/steel>, <tag:items:forge:ingots/steel>, empty]]);


//use ImmersivePosts instead
craftingTable.remove(<item:immersiveposts:postbase>);
craftingTable.addShapeless("extendable_post", <item:immersiveposts:postbase>, [<item:minecraft:stone_bricks>]);
<recipetype:stonecutting>.addRecipe("stonecut_extendable_post", <item:immersiveposts:postbase>, <item:minecraft:stone_bricks>);

//renames
craftingTable.removeByName("immersiveengineering:crafting/conveyor_basic");
craftingTable.addShaped("rolling_conveyor", <item:immersiveengineering:conveyor_basic> * 8, [[<tag:items:forge:rods/iron>, <tag:items:forge:rods/iron>, <tag:items:forge:rods/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>]]);

//misc
<recipetype:immersiveengineering:bottling_machine>.removeByName("immersiveengineering:bottling/duroplast_block");
craftingTable.addShapeless("duroplast_block", <item:immersiveengineering:duroplast>, [<item:immersiveengineering:plate_duroplast>, <item:immersiveengineering:plate_duroplast>, <item:immersiveengineering:plate_duroplast>, <item:immersiveengineering:plate_duroplast>]);

craftingTable.remove(<item:immersiveengineering:sawdust>);
craftingTable.addShapeless("sawdust_floor", <item:immersiveengineering:sawdust>, [<tag:items:forge:dusts/wood>]);
craftingTable.remove(<item:immersiveengineering:lantern>);
craftingTable.addShaped("big_lantern", <item:immersiveengineering:lantern>, [[empty, <tag:items:forge:plates/iron>, empty], [<item:minecraft:glass_pane>, <item:minecraft:lantern>, <item:minecraft:glass_pane>], [empty, <tag:items:forge:plates/iron>, empty]]);

craftingTable.remove(<item:immersiveengineering:fertilizer>);
craftingTable.addShapeless("fertilizer", <item:immersiveengineering:fertilizer> * 2, [<tag:items:forge:dusts/saltpeter>, <tag:items:forge:slag>]);
craftingTable.addShapeless("fertilizer_2", <item:immersiveengineering:fertilizer>, [<tag:items:forge:dusts/saltpeter>, <tag:items:forge:dusts/wood>]);
craftingTable.addShapeless("fertilizer_3", <item:immersiveengineering:fertilizer>, [<item:minecraft:bone_meal>]);

craftingTable.remove(<item:immersiveengineering:gunpart_barrel>);
craftingTable.addShaped("gunpart_barrel", <item:immersiveengineering:gunpart_barrel>, [[empty, empty, empty], [empty, <tag:items:forge:rods/steel>, empty], [<tag:items:forge:ingots/steel>, empty, empty]]);
craftingTable.removeByName("immersiveengineering:crafting/blastbrick");
craftingTable.addShaped("blast_brick", <item:immersiveengineering:blastbrick> * 9, [[<tag:items:forge:ingots/brick>, <tag:items:forge:ingots/brick>, <tag:items:forge:ingots/brick>], [<tag:items:forge:ingots/brick>, <item:quark:deepslate_furnace>, <tag:items:forge:ingots/brick>], [<tag:items:forge:ingots/brick>, <tag:items:forge:ingots/brick>, <tag:items:forge:ingots/brick>]]);

craftingTable.remove(<item:immersiveengineering:fluid_pipe>);
craftingTable.addShaped("steel_pipe", <item:immersiveengineering:fluid_pipe> * 8, [[<tag:items:forge:plates/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:plates/steel>]]);
craftingTable.addShaped("steel_pipe_vert", <item:immersiveengineering:fluid_pipe> * 8, [[<tag:items:forge:plates/steel>], [<tag:items:forge:ingots/steel>], [<tag:items:forge:plates/steel>]]);

craftingTable.removeByName("immersiveengineering:crafting/concrete");
craftingTable.addShaped("concrete", <item:immersiveengineering:concrete> * 8, [[<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>], [<tag:items:forge:gravel>, <item:minecraft:water_bucket>, <tag:items:forge:gravel>], [<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>]]);
craftingTable.addShaped("concrete_slag", <item:immersiveengineering:concrete> * 12, [[<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>], [<tag:items:forge:slag>, <item:minecraft:water_bucket>, <tag:items:forge:slag>], [<tag:items:forge:sand>, <tag:items:forge:clay>, <tag:items:forge:sand>]]);

craftingTable.removeByName("immersiveengineering:crafting/fluid_pump");
craftingTable.addShaped("electric_pump", <item:immersiveengineering:fluid_pump>, [[empty, <tag:items:forge:plates/iron>, empty], [<tag:items:forge:plates/iron>, <item:create:mechanical_pump>, <tag:items:forge:plates/iron>], [<item:immersiveengineering:fluid_pipe>, <item:immersiveengineering:fluid_pipe>, <item:immersiveengineering:fluid_pipe>]]);

craftingTable.remove(<item:immersiveengineering:conveyor_extract>);
craftingTable.addShaped("conveyor_extract", <item:immersiveengineering:conveyor_extract>, [[<tag:items:forge:treated_wood>, <item:create:andesite_funnel>], [<item:immersiveengineering:component_iron>, <item:immersiveengineering:conveyor_basic>]]);
craftingTable.addShaped("conveyor_extract_covered", <item:immersiveengineering:conveyor_extract>.withTag({defaultCover: "immersiveengineering:steel_scaffolding_standard"}), [[<tag:items:immersiveengineering:scaffoldings/steel>], [<item:immersiveengineering:conveyor_extract>]]);

craftingTable.remove(<item:immersiveengineering:conveyor_extract>);

