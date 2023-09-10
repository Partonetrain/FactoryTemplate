#priority 99

import mods.create.CuttingManager;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.item.IItemStack;

<recipetype:create:cutting>.removeAll();

sawBoth(<item:minecraft:oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:oak_planks>);
sawBoth(<item:minecraft:spruce_log>, <item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_planks>);
sawBoth(<item:minecraft:birch_log>, <item:minecraft:stripped_birch_log>, <item:minecraft:birch_planks>);
sawBoth(<item:minecraft:jungle_log>, <item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_planks>);
sawBoth(<item:minecraft:acacia_log>, <item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_planks>);
sawBoth(<item:minecraft:dark_oak_log>, <item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_planks>);
sawBoth(<item:minecraft:crimson_stem>, <item:minecraft:stripped_crimson_stem>, <item:minecraft:crimson_planks>);
sawBoth(<item:minecraft:warped_stem>, <item:minecraft:stripped_warped_stem>, <item:minecraft:warped_planks>);
sawBoth(<item:minecraft:mangrove_log>, <item:minecraft:stripped_mangrove_log>, <item:minecraft:mangrove_planks>);

sawBoth(<item:quark:blossom_log>, <item:quark:stripped_blossom_log>, <item:quark:blossom_planks>);
sawBoth(<item:quark:azalea_log>, <item:quark:stripped_azalea_log>, <item:quark:azalea_planks>);
sawBoth(<item:quark:ancient_log>, <item:quark:stripped_ancient_log>, <item:quark:ancient_planks>);


public function sawBoth(input as IItemStack, strippedOutput as IItemStack, output as IItemStack) as void{ 
	sawLog(input, strippedOutput);
	sawStripped(strippedOutput, output);
}


public function sawLog(input as IItemStack, output as IItemStack) as void{ 
	var recipeName = "mechanical_saw_log_" + input.getDefinition().getRegistryName().getNamespace() + "_" + input.getDefinition().getRegistryName().getPath();
	<recipetype:create:cutting>.addRecipe(recipeName, [output], input, 100);
}

public function sawStripped(input as IItemStack, output as IItemStack) as void{ 
	var recipeName = "mechanical_saw_stripped_" + input.getDefinition().getRegistryName().getNamespace() + "_" + input.getDefinition().getRegistryName().getPath();
	<recipetype:create:cutting>.addRecipe(recipeName, [(output * 4)], input, 50);
}
