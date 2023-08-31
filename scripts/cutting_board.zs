import mods.farmersdelight.CuttingBoard;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.item.IItemStack;

<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/gravel");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/clay");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/stone");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/deepslate");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/quartz_block");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/amethyst_block");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/nether_bricks");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/bricks");
<recipetype:farmersdelight:cutting>.removeByName("farmersdelight:cutting/saddle");

<recipetype:farmersdelight:cutting>.removeByRegex("farmersdelight:cutting/.*sign");
<recipetype:farmersdelight:cutting>.removeByRegex("farmersdelight:cutting/.*trapdoor");
<recipetype:farmersdelight:cutting>.removeByRegex("farmersdelight:cutting/.*door");

cutLog(<item:quark:blossom_log>, <item:quark:stripped_blossom_log>);
cutLog(<item:quark:azalea_log>, <item:quark:stripped_azalea_log>);
cutLog(<item:quark:ancient_log>, <item:quark:ancient_log>);

cutLog(<item:quark:blossom_wood>, <item:quark:stripped_blossom_wood>);
cutLog(<item:quark:azalea_wood>, <item:quark:stripped_azalea_wood>);
cutLog(<item:quark:ancient_wood>, <item:quark:ancient_wood>);

function cutLog(input as IItemStack, output as IItemStack) as void{ 
	var recipeName = "cutting_board_" + input.getDefinition().getRegistryName().getPath();
	<recipetype:farmersdelight:cutting>.addRecipe(recipeName, input, [output, <item:farmersdelight:tree_bark>], <tag:items:forge:tools/axes>, "minecraft:block.wood.break");
}
