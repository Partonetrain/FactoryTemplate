import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Blueprint;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.type.BlastingRecipe;
import crafttweaker.api.recipe.type.SmeltingRecipe;

//String recipePath, IIngredient input, int energy, IItemStack mainOutput, Percentaged<IItemStack>... additionalOutputs

<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_blaze_rod", <item:minecraft:blaze_rod>, 1600, <item:minecraft:blaze_powder> * 4, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_blaze_powder", <item:minecraft:blaze_powder>, 1600, <item:immersiveengineering:dust_sulfur> * 2, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_coal", <item:minecraft:coal>, 1600, <item:immersiveengineering:dust_sulfur>, []);
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/red_sandstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/sandstone");
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_sandstone", <tag:items:forge:sandstone/colorless>, 3200, <item:minecraft:sand> * 4, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_red_sandstone", <tag:items:forge:sandstone/red>, 3200, <item:minecraft:red_sand> * 4, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_sand", <tag:items:minecraft:sand>, 2000,  <item:immersiveengineering:dust_saltpeter>, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_netherrack", <item:minecraft:netherrack>, 3200,  <item:immersiveengineering:dust_saltpeter>, []);
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/gravel");
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_gravel", <item:minecraft:gravel>, 2000, <item:minecraft:sand>, []);

<recipetype:immersiveengineering:crusher>.addRecipe("crusher_obsidian", <item:minecraft:obsidian>, 3200, <item:create:powdered_obsidian> * 4, []);

<recipetype:immersiveengineering:crusher>.addRecipe("crusher_debris", <item:minecraft:ancient_debris>, 6400, <item:minecraft:netherite_scrap> * 2, []);

//===ORE

var zinc_grit = <item:immersiveengineering:windmill_sail>;
<recipetype:immersiveengineering:blueprint>.remove(<item:immersiveengineering:mold_unpacking>);
<recipetype:minecraft:blasting>.addRecipe("blast_zinc_dust", <item:create:zinc_ingot>, zinc_grit, 0, 100);
<recipetype:minecraft:smelting>.addRecipe("smelt_zinc_dust", <item:create:zinc_ingot>, zinc_grit, 0, 200);

<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/raw_block_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/raw_ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/ore_.*");
<recipetype:immersiveengineering:crusher>.removeByRegex("immersiveengineering:crusher/ingot_.*");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/nether_gold");

crusherMetal(<tag:items:forge:ores/iron>, <item:minecraft:raw_iron>, <item:immersiveengineering:dust_iron>, <item:minecraft:iron_ingot>);
crusherMetal(<tag:items:forge:ores/copper>, <item:minecraft:raw_copper>, <item:immersiveengineering:dust_copper>, <item:minecraft:copper_ingot>);
crusherMetal(<tag:items:forge:ores/gold>, <item:minecraft:raw_gold>, <item:immersiveengineering:dust_gold>, <item:minecraft:gold_ingot>);


crusherMetal(<tag:items:forge:ores/aluminum>, <item:immersiveengineering:raw_aluminum>, <item:immersiveengineering:dust_aluminum>, <item:immersiveengineering:ingot_aluminum>);
crusherMetal(<tag:items:forge:ores/lead>, <item:immersiveengineering:raw_lead>, <item:immersiveengineering:dust_lead>, <item:immersiveengineering:ingot_lead>);
crusherMetal(<tag:items:forge:ores/silver>, <item:immersiveengineering:raw_silver>, <item:immersiveengineering:dust_silver>, <item:immersiveengineering:ingot_silver>);
crusherMetal(<tag:items:forge:ores/nickel>, <item:immersiveengineering:raw_nickel>, <item:immersiveengineering:dust_nickel>, <item:immersiveengineering:ingot_nickel>);
crusherMetal(<tag:items:forge:ores/uranium>, <item:immersiveengineering:raw_uranium>, <item:immersiveengineering:dust_uranium>, <item:immersiveengineering:ingot_uranium>);

crusherMetal(<tag:items:forge:ores/zinc>, <item:create:raw_zinc>, zinc_grit, <item:create:zinc_ingot>);

<recipetype:immersiveengineering:crusher>.addRecipe("crusher_coal_ore", <tag:items:forge:ores/coal>, 6000, <item:minecraft:coal> * 3, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_redstone_ore", <tag:items:forge:ores/redstone>, 6000, <item:minecraft:redstone> * 12, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_emerald_ore", <tag:items:forge:ores/emerald>, 6000, <item:minecraft:emerald> * 3, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_lapis_ore", <tag:items:forge:ores/lapis>, 6000, <item:minecraft:lapis_lazuli> * 12, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_diamond_ore", <tag:items:forge:ores/diamond>, 6000, <item:minecraft:diamond> * 2, []);
<recipetype:immersiveengineering:crusher>.addRecipe("crusher_quartz_ore", <tag:items:forge:ores/quartz>, 6000, <item:minecraft:quartz> * 3, []);

<recipetype:immersiveengineering:crusher>.addRecipe("crusher_amethyst_shard", <item:minecraft:amethyst_cluster>, 6000, <item:minecraft:amethyst_shard> * 8, []);


function crusherMetal(oreBlock as IIngredient, rawOre as IItemStack, grit as IItemStack, ingot as IItemStack) as void{ 

	var blockRecipeName = "crusher_" + oreBlock.items[0].getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:crusher>.addRecipe(blockRecipeName, oreBlock, 8000, grit * 3, []);

	var rawRecipeName = "crusher_" + rawOre.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:crusher>.addRecipe(rawRecipeName, rawOre, 6000, grit * 2, []);
	
	var ingotRecipeName = "crusher_" + ingot.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:crusher>.addRecipe(ingotRecipeName, ingot, 2000, grit, []);
}
