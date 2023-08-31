import mods.create.CrushingManager;
import mods.create.MillingManager;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

var empty = IIngredientEmpty.getInstance();

//===MILLING 
<recipetype:create:milling>.addRecipe("milling_sand", [<item:immersiveengineering:dust_saltpeter> % 75], <tag:items:minecraft:sand>, 100);
<recipetype:create:milling>.addRecipe("milling_limestone", [<item:immersiveengineering:dust_saltpeter> % 50], <item:quark:limestone>, 100);
<recipetype:create:milling>.addRecipe("milling_cobble", [<item:minecraft:gravel>], <tag:items:forge:cobblestone>, 100);

<recipetype:create:milling>.removeByInput(<item:minecraft:saddle>);
<recipetype:create:milling>.removeByInput(<item:minecraft:granite>);

//MISC CRUSHING
<recipetype:create:crushing>.removeByInput(<item:minecraft:gravel>);
<recipetype:create:crushing>.addRecipe("crushing_wheel_gravel", [<item:minecraft:sand>], <item:minecraft:gravel>, 100);
<recipetype:create:crushing>.removeByInput(<item:minecraft:cobblestone>);

<recipetype:create:crushing>.addRecipe("crushing_wheel_sandstone", [<item:minecraft:sand> * 3, <item:immersiveengineering:dust_saltpeter>], <tag:items:forge:sandstone/colorless>, 100);
<recipetype:create:crushing>.addRecipe("crushing_wheel_red_sandstone", [<item:minecraft:red_sand> * 3, <item:immersiveengineering:dust_saltpeter>], <tag:items:forge:sandstone/red>, 100);

<recipetype:create:crushing>.removeByInput(<item:minecraft:blaze_rod>);
<recipetype:create:crushing>.addRecipe("crushing_wheel_blaze_rod", [<item:minecraft:blaze_powder> * 3, <item:immersiveengineering:dust_sulfur>], <item:minecraft:blaze_rod>, 100);

<recipetype:create:crushing>.removeByInput(<item:minecraft:prismarine_crystals>);
<recipetype:create:crushing>.addRecipe("crushing_wheel_coke", [<item:immersiveengineering:dust_coke>], <item:immersiveengineering:coal_coke>, 800);

//===ORES
var zinc_grit = <item:immersiveengineering:windmill_sail>;
//remove all
<recipetype:create:crushing>.removeByRegex("create:crushing/.*_ore");
<recipetype:create:crushing>.removeByRegex("create:crushing/raw_.*");

crushingWheelMetal(<tag:items:forge:ores/iron>, <item:minecraft:raw_iron>, <item:create:crushed_raw_iron>, <item:immersiveengineering:dust_iron>, <item:minecraft:iron_ingot>);
crushingWheelMetal(<tag:items:forge:ores/copper>, <item:minecraft:raw_copper>, <item:create:crushed_raw_copper>, <item:immersiveengineering:dust_copper>, <item:minecraft:copper_ingot>);
crushingWheelMetal(<tag:items:forge:ores/gold>, <item:minecraft:raw_gold>, <item:create:crushed_raw_gold>, <item:immersiveengineering:dust_gold>, <item:minecraft:gold_ingot>);

crushingWheelMetal(<tag:items:forge:ores/zinc>, <item:create:raw_zinc>, <item:create:crushed_raw_zinc>, zinc_grit, <item:create:zinc_ingot>);

crushingWheelMetal(<tag:items:forge:ores/aluminum>, <item:immersiveengineering:raw_aluminum>, <item:create:crushed_raw_aluminum>, <item:immersiveengineering:dust_aluminum>, <item:immersiveengineering:ingot_aluminum>);
crushingWheelMetal(<tag:items:forge:ores/lead>, <item:immersiveengineering:raw_lead>, <item:create:crushed_raw_lead>, <item:immersiveengineering:dust_lead>, <item:immersiveengineering:ingot_lead>);
crushingWheelMetal(<tag:items:forge:ores/silver>, <item:immersiveengineering:raw_silver>, <item:create:crushed_raw_silver>, <item:immersiveengineering:dust_silver>, <item:immersiveengineering:ingot_silver>);
crushingWheelMetal(<tag:items:forge:ores/nickel>, <item:immersiveengineering:raw_nickel>, <item:create:crushed_raw_nickel>, <item:immersiveengineering:dust_nickel>, <item:immersiveengineering:ingot_nickel>);
crushingWheelMetal(<tag:items:forge:ores/uranium>, <item:immersiveengineering:raw_uranium>, <item:create:crushed_raw_uranium>, <item:immersiveengineering:dust_uranium>, <item:immersiveengineering:ingot_uranium>);

<recipetype:create:crushing>.addRecipe("crushing_wheel_coal_ore", [<item:minecraft:coal> * 2, <item:create:experience_nugget>], <tag:items:forge:ores/coal>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_redstone_ore", [<item:minecraft:redstone> * 8, <item:create:experience_nugget>], <tag:items:forge:ores/redstone>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_emerald_ore", [<item:minecraft:emerald> * 2, <item:create:experience_nugget>], <tag:items:forge:ores/emerald>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_lapis_ore", [<item:minecraft:lapis_lazuli> * 8, <item:create:experience_nugget>], <tag:items:forge:ores/lapis>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_diamond_ore", [<item:minecraft:diamond> * 2, <item:create:experience_nugget>], <tag:items:forge:ores/diamond>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_quartz_ore", [<item:minecraft:quartz>, <item:create:experience_nugget>], <tag:items:forge:ores/quartz>, 400);
<recipetype:create:crushing>.addRecipe("crushing_wheel_debris", [<item:minecraft:netherite_scrap> * 2, <item:create:experience_nugget>], <tag:items:forge:ores/netherite_scrap>, 400);

<recipetype:create:crushing>.addRecipe("crushing_wheel_coal", [<item:immersiveengineering:dust_sulfur>], <item:minecraft:coal>, 400);


function crushingWheelMetal(oreBlock as IIngredient, rawOre as IItemStack, crushedRaw as IItemStack, grit as IItemStack, ingot as IItemStack) as void{ 

	var blockRecipeName = "crushing_wheel_" + oreBlock.items[0].getDefinition().getRegistryName().getPath();
	<recipetype:create:crushing>.addRecipe(blockRecipeName, [crushedRaw * 2, <item:create:experience_nugget>], oreBlock, 400);

	var rawRecipeName = "crushing_wheel_" + rawOre.getDefinition().getRegistryName().getPath();
	<recipetype:create:crushing>.addRecipe(rawRecipeName, [crushedRaw, <item:create:experience_nugget>], rawOre, 400);
	
	var ingotRecipeName = "crushing_wheel_" + ingot.getDefinition().getRegistryName().getPath();
	<recipetype:create:crushing>.addRecipe(ingotRecipeName, [grit], ingot, 100);


}

//===SALVAGING
//relevant salvaging tags
//these also affect stonecutting recipes
<tag:items:create:stone_types/tuff>.add(<item:quark:polished_tuff>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_stairs>);
<tag:items:create:stone_types/tuff>.add(<item:quark:polished_tuff_stairs>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_bricks>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_bricks_stairs>);
<tag:items:create:stone_types/tuff>.add(<item:quark:chiseled_tuff_bricks>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_pillar>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_wall>);
<tag:items:create:stone_types/tuff>.add(<item:quark:tuff_bricks_wall>);

<tag:items:create:stone_types/calcite>.add(<item:quark:polished_calcite>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_stairs>);
<tag:items:create:stone_types/calcite>.add(<item:quark:polished_calcite_stairs>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_bricks>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_bricks_stairs>);
<tag:items:create:stone_types/calcite>.add(<item:quark:chiseled_calcite_bricks>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_pillar>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_wall>);
<tag:items:create:stone_types/calcite>.add(<item:quark:calcite_bricks_wall>);

<tag:items:create:stone_types/dripstone>.add(<item:quark:polished_dripstone>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_block_stairs>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:polished_dripstone_stairs>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_bricks>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_bricks_stairs>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:chiseled_dripstone_bricks>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_pillar>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_block_wall>);
<tag:items:create:stone_types/dripstone>.add(<item:quark:dripstone_bricks_wall>);

<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_bricks>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_bricks_stairs>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:chiseled_limestone_bricks>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_pillar>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:polished_limestone>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_slab>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_stairs>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:polished_limestone_stairs>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:polished_limestone_stairs>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_bricks_wall>);
<tag:items:quark:stone_types/limestone>.add(<item:quark:limestone_wall>);

<tag:items:quark:stone_types/shale>.add(<item:quark:shale_bricks>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_bricks_stairs>);
<tag:items:quark:stone_types/shale>.add(<item:quark:chiseled_shale_bricks>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_pillar>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale>);
<tag:items:quark:stone_types/shale>.add(<item:quark:polished_shale>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_slab>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_stairs>);
<tag:items:quark:stone_types/shale>.add(<item:quark:polished_shale_stairs>);
<tag:items:quark:stone_types/shale>.add(<item:quark:polished_shale_stairs>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_bricks_wall>);
<tag:items:quark:stone_types/shale>.add(<item:quark:shale_wall>);

<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_bricks>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_bricks_stairs>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:chiseled_jasper_bricks>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_pillar>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:polished_jasper>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_slab>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_stairs>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:polished_jasper_stairs>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:polished_jasper_stairs>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_bricks_wall>);
<tag:items:quark:stone_types/jasper>.add(<item:quark:jasper_wall>);

<recipetype:create:milling>.removeByName("create:milling/calcite");
<recipetype:create:milling>.removeByName("create:milling/dripstone_block");
<recipetype:create:crushing>.removeByName("create:crushing/tuff");
<recipetype:create:crushing>.removeByName("create:crushing/tuff_recycling");

<recipetype:create:crushing>.removeByName("create:crushing/asurine");
<recipetype:create:crushing>.removeByName("create:crushing/crimsite");
<recipetype:create:crushing>.removeByName("create:crushing/ochrum");
<recipetype:create:crushing>.removeByName("create:crushing/veridium");
<recipetype:create:crushing>.removeByName("create:crushing/veridium_recycling");
<recipetype:create:crushing>.removeByName("create:crushing/ochrum_recycling");
<recipetype:create:crushing>.removeByName("create:crushing/crimsite_recycling");

<recipetype:create:crushing>.addRecipe("calcite_recycling", [<item:create:crushed_raw_silver> % 15, <item:immersiveengineering:nugget_silver> % 30], <tag:items:create:stone_types/calcite>, 100);
<recipetype:create:crushing>.addRecipe("tuff_recycling", [<item:create:crushed_raw_aluminum> % 10, <item:immersiveengineering:nugget_aluminum> % 30], <tag:items:create:stone_types/tuff>, 100);
<recipetype:create:crushing>.addRecipe("dripstone_recycling", [<item:create:crushed_raw_nickel> % 30, <item:immersiveengineering:nugget_nickel> % 30], <tag:items:create:stone_types/dripstone>, 100);

//asurine is default
<recipetype:create:crushing>.addRecipe("crimsite_recycling", [<item:create:crushed_raw_iron> % 20, <item:minecraft:iron_nugget> % 30], <tag:items:create:stone_types/crimsite>, 100);
<recipetype:create:crushing>.addRecipe("veridium_recycling", [<item:create:crushed_raw_copper> % 30, <item:immersiveengineering:nugget_copper> % 30], <tag:items:create:stone_types/veridium>, 100);
<recipetype:create:crushing>.addRecipe("ochrum_recycling", [<item:create:crushed_raw_gold> % 10, <item:minecraft:gold_nugget> % 30], <tag:items:create:stone_types/ochrum>, 100);
<recipetype:create:crushing>.addRecipe("marble_recycling", [<item:create:crushed_raw_silver> % 15, <item:immersiveengineering:nugget_silver> % 30], <tag:items:create:stone_types/limestone>, 100); //create limestone tag = marble
<recipetype:create:crushing>.addRecipe("scoria_recycling", [<item:create:crushed_raw_lead> % 15, <item:immersiveengineering:nugget_lead> % 30], <tag:items:create:stone_types/scoria>, 100);
<recipetype:create:crushing>.addRecipe("scorchia_recycling", [<item:create:crushed_raw_lead> % 15, <item:immersiveengineering:nugget_lead> % 30], <tag:items:create:stone_types/scorchia>, 100);
  
<recipetype:create:crushing>.addRecipe("limestone_recycling", [<item:create:crushed_raw_silver> % 15, <item:immersiveengineering:nugget_silver> % 30], <tag:items:quark:stone_types/limestone>, 100);
<recipetype:create:crushing>.addRecipe("jasper_recycling", [<item:create:crushed_raw_iron> % 20, <item:minecraft:iron_nugget> % 30], <tag:items:quark:stone_types/jasper>, 100);
<recipetype:create:crushing>.addRecipe("shale_recycling", [<item:create:crushed_raw_copper> % 30, <item:immersiveengineering:nugget_copper> % 30], <tag:items:quark:stone_types/shale>, 100);

//vanilla quartz stone salvaging
<recipetype:create:crushing>.removeByName("create:crushing/diorite");
<recipetype:create:crushing>.removeByName("create:crushing/diorite_recycling");

<recipetype:create:crushing>.addRecipe("granite_recycling", [<item:minecraft:quartz> % 25], <tag:items:create:stone_types/granite>, 100);
<recipetype:create:crushing>.addRecipe("diorite_recycling", [<item:minecraft:quartz> % 25], <tag:items:create:stone_types/diorite>, 100);
<recipetype:create:crushing>.addRecipe("andesite_recycling", [<item:minecraft:cobblestone> % 50], <tag:items:create:stone_types/andesite>, 100);

