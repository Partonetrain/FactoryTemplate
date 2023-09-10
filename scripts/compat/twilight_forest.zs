#priority -99
#onlyif modloaded twilightforest
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.item.IItemStack;

println("FactoryTemplate: Twilight Forest detected, loading integration.");

craftingTable.addShapeless("tf_insect_membrane", <item:minecraft:phantom_membrane>, [<item:twilightforest:cicada>]);
<tag:items:quark:ladders>.add(<item:twilightforest:iron_ladder>);



//The stonecutter recipe for "fallen" logs breaks the mechanical saw recipes. 
//A new recipe for the "fallen" logs will be added later in the script
for item in <tag:items:minecraft:logs>{
		stoneCutter.removeByInput(item);
		<tag:items:twilightforest:banned_uncrafting_ingredients>.add(item); //prevent wood dupe
}

for item in <tag:items:forge:dyes>{
		<tag:items:twilightforest:banned_uncraftables>.add(item);
}

for item in <tag:items:forge:seeds>{
		<tag:items:twilightforest:banned_uncraftables>.add(item);
}

for item in <tag:items:forge:crops>{
		<tag:items:twilightforest:banned_uncraftables>.add(item);
}

<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:drillhead_steel>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:drillhead_iron>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:sawblade>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:rockcutter>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:component_steel>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:immersiveengineering:component_iron>);

<tag:items:twilightforest:banned_uncraftables>.add(<item:create:andesite_alloy>);
<tag:items:twilightforest:banned_uncraftables>.add(<item:create:rose_quartz>);

//cutting board
cutLog(<item:twilightforest:twilight_oak_log>, <item:twilightforest:stripped_twilight_oak_log>);
cutLog(<item:twilightforest:canopy_log>, <item:twilightforest:stripped_canopy_log>);
cutLog(<item:twilightforest:mangrove_log>, <item:twilightforest:stripped_mangrove_log>);
cutLog(<item:twilightforest:dark_log>, <item:twilightforest:stripped_dark_log>);
cutLog(<item:twilightforest:time_log>, <item:twilightforest:stripped_time_log>);
cutLog(<item:twilightforest:transformation_log>, <item:twilightforest:stripped_transformation_log>);
cutLog(<item:twilightforest:mining_log>, <item:twilightforest:stripped_mining_log>);
cutLog(<item:twilightforest:sorting_log>, <item:twilightforest:stripped_sorting_log>);

cutLog(<item:twilightforest:twilight_oak_wood>, <item:twilightforest:stripped_twilight_oak_wood>);
cutLog(<item:twilightforest:canopy_wood>, <item:twilightforest:stripped_canopy_wood>);
cutLog(<item:twilightforest:mangrove_wood>, <item:twilightforest:stripped_mangrove_wood>);
cutLog(<item:twilightforest:dark_wood>, <item:twilightforest:stripped_dark_wood>);
cutLog(<item:twilightforest:time_wood>, <item:twilightforest:stripped_time_wood>);
cutLog(<item:twilightforest:transformation_wood>, <item:twilightforest:stripped_transformation_wood>);
cutLog(<item:twilightforest:mining_wood>, <item:twilightforest:stripped_mining_wood>);
cutLog(<item:twilightforest:sorting_wood>, <item:twilightforest:stripped_sorting_wood>);

//create saw
sawBoth(<item:twilightforest:twilight_oak_log>, <item:twilightforest:stripped_twilight_oak_log>, <item:twilightforest:twilight_oak_planks>);
sawBoth(<item:twilightforest:canopy_log>, <item:twilightforest:stripped_canopy_log>, <item:twilightforest:canopy_planks>);
sawBoth(<item:twilightforest:mangrove_log>, <item:twilightforest:stripped_mangrove_log>, <item:twilightforest:mangrove_planks>);
sawBoth(<item:twilightforest:dark_log>, <item:twilightforest:stripped_dark_log>, <item:twilightforest:dark_planks>);
sawBoth(<item:twilightforest:time_log>, <item:twilightforest:stripped_time_log>, <item:twilightforest:time_planks>);
sawBoth(<item:twilightforest:transformation_log>, <item:twilightforest:stripped_transformation_log>, <item:twilightforest:transformation_planks>);
sawBoth(<item:twilightforest:mining_log>, <item:twilightforest:stripped_mining_log>, <item:twilightforest:mining_planks>);
sawBoth(<item:twilightforest:sorting_log>, <item:twilightforest:stripped_sorting_log>, <item:twilightforest:sorting_planks>);

//IE sawmill logs
sawmill(<item:twilightforest:twilight_oak_log>, <item:twilightforest:stripped_twilight_oak_log>, <item:twilightforest:twilight_oak_planks>);
sawmill(<item:twilightforest:canopy_log>, <item:twilightforest:stripped_canopy_log>, <item:twilightforest:canopy_planks>);
sawmill(<item:twilightforest:mangrove_log>, <item:twilightforest:stripped_mangrove_log>, <item:twilightforest:mangrove_planks>);
sawmill(<item:twilightforest:dark_log>, <item:twilightforest:stripped_dark_log>, <item:twilightforest:dark_planks>);
sawmill(<item:twilightforest:time_log>, <item:twilightforest:stripped_time_log>, <item:twilightforest:time_planks>);
sawmill(<item:twilightforest:transformation_log>, <item:twilightforest:stripped_transformation_log>, <item:twilightforest:transformation_planks>);
sawmill(<item:twilightforest:mining_log>, <item:twilightforest:stripped_mining_log>, <item:twilightforest:mining_planks>);
sawmill(<item:twilightforest:sorting_log>, <item:twilightforest:stripped_sorting_log>, <item:twilightforest:sorting_planks>);

//IE sawmill wood
sawmill(<item:twilightforest:twilight_oak_wood>, <item:twilightforest:stripped_twilight_oak_wood>, <item:twilightforest:twilight_oak_planks>);
sawmill(<item:twilightforest:canopy_wood>, <item:twilightforest:stripped_canopy_wood>, <item:twilightforest:canopy_planks>);
sawmill(<item:twilightforest:mangrove_wood>, <item:twilightforest:stripped_mangrove_wood>, <item:twilightforest:mangrove_planks>);
sawmill(<item:twilightforest:dark_wood>, <item:twilightforest:stripped_dark_wood>, <item:twilightforest:dark_planks>);
sawmill(<item:twilightforest:time_wood>, <item:twilightforest:stripped_time_wood>, <item:twilightforest:time_planks>);
sawmill(<item:twilightforest:transformation_wood>, <item:twilightforest:stripped_transformation_wood>, <item:twilightforest:transformation_planks>);
sawmill(<item:twilightforest:mining_wood>, <item:twilightforest:stripped_mining_wood>, <item:twilightforest:mining_planks>);
sawmill(<item:twilightforest:sorting_wood>, <item:twilightforest:stripped_sorting_wood>, <item:twilightforest:sorting_planks>);

//IE sawmill salvage
salvage(<item:twilightforest:twilight_oak_planks>, <item:twilightforest:twilight_oak_door>, <item:twilightforest:twilight_oak_trapdoor>, <item:twilightforest:twilight_oak_sign>, <item:everycomp:q/twilightforest/twilight_oak_bookshelf>);
salvage(<item:twilightforest:canopy_planks>, <item:twilightforest:canopy_door>, <item:twilightforest:canopy_trapdoor>, <item:twilightforest:canopy_sign>, <item:twilightforest:canopy_bookshelf>);
salvage(<item:twilightforest:mangrove_planks>, <item:twilightforest:mangrove_door>, <item:twilightforest:mangrove_trapdoor>, <item:twilightforest:mangrove_sign>, <item:everycomp:q/twilightforest/mangrove_bookshelf>);
salvage(<item:twilightforest:dark_planks>, <item:twilightforest:dark_door>, <item:twilightforest:dark_trapdoor>, <item:twilightforest:darkwood_sign>, <item:everycomp:q/twilightforest/dark_bookshelf>);
salvage(<item:twilightforest:time_planks>, <item:twilightforest:time_door>, <item:twilightforest:time_trapdoor>, <item:twilightforest:time_sign>, <item:everycomp:q/twilightforest/time_bookshelf>);
salvage(<item:twilightforest:transformation_planks>, <item:twilightforest:transformation_door>, <item:twilightforest:transformation_trapdoor>, <item:twilightforest:transformation_sign>, <item:everycomp:q/twilightforest/transformation_bookshelf>);
salvage(<item:twilightforest:mining_planks>, <item:twilightforest:mining_door>, <item:twilightforest:mining_trapdoor>, <item:twilightforest:mining_sign>, <item:everycomp:q/twilightforest/mining_bookshelf>);
salvage(<item:twilightforest:sorting_planks>, <item:twilightforest:sorting_door>, <item:twilightforest:sorting_trapdoor>, <item:twilightforest:sorting_sign>, <item:everycomp:q/twilightforest/sorting_bookshelf>);


//"fallen" log blocks
fixFallen(<item:quark:hollow_oak_log>, <item:twilightforest:hollow_oak_log_vertical>);
fixFallen(<item:quark:hollow_birch_log>, <item:twilightforest:hollow_birch_log_vertical>);
fixFallen(<item:quark:hollow_spruce_log>, <item:twilightforest:hollow_spruce_log_vertical>);
fixFallen(<item:quark:hollow_jungle_log>, <item:twilightforest:hollow_jungle_log_vertical>);
fixFallen(<item:quark:hollow_acacia_log>, <item:twilightforest:hollow_acacia_log_vertical>);
fixFallen(<item:quark:hollow_dark_oak_log>, <item:twilightforest:hollow_dark_oak_log_vertical>);
fixFallen(<item:quark:hollow_crimson_stem>, <item:twilightforest:hollow_crimson_stem_vertical>);
fixFallen(<item:quark:hollow_warped_stem>, <item:twilightforest:hollow_warped_stem_vertical>);
fixFallen(<item:quark:hollow_mangrove_log>, <item:twilightforest:hollow_vangrove_log_vertical>);

fixFallen(<item:everycomp:q/twilightforest/hollow_twilight_oak_log>, <item:twilightforest:hollow_twilight_oak_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_canopy_log>, <item:twilightforest:hollow_canopy_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_mangrove_log>, <item:twilightforest:hollow_mangrove_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_dark_log>, <item:twilightforest:hollow_dark_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_time_log>, <item:twilightforest:hollow_time_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_transformation_log>, <item:twilightforest:hollow_transformation_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_mining_log>, <item:twilightforest:hollow_mining_log_vertical>);
fixFallen(<item:everycomp:q/twilightforest/hollow_sorting_log>, <item:twilightforest:hollow_sorting_log_vertical>);

function fixFallen(hollow as IItemStack, fallen as IItemStack) as void{
	var recipeName = "fallen_" + hollow.getDefinition().getRegistryName().getPath();
	var recipeName2 = "hollow_" + fallen.getDefinition().getRegistryName().getPath();
	
	craftingTable.addShapeless(recipeName, fallen, [hollow]);
	craftingTable.addShapeless(recipeName2, hollow, [fallen]);
	
	
}

#endif