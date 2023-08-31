import mods.immersiveengineering.Sawmill;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

<recipetype:immersiveengineering:sawmill>.removeAll();

//logs
sawmill(<item:minecraft:oak_log>, <item:minecraft:stripped_oak_log>, <item:minecraft:oak_planks>);
sawmill(<item:minecraft:spruce_log>, <item:minecraft:stripped_spruce_log>, <item:minecraft:spruce_planks>);
sawmill(<item:minecraft:birch_log>, <item:minecraft:stripped_birch_log>, <item:minecraft:birch_planks>);
sawmill(<item:minecraft:jungle_log>, <item:minecraft:stripped_jungle_log>, <item:minecraft:jungle_planks>);
sawmill(<item:minecraft:acacia_log>, <item:minecraft:stripped_acacia_log>, <item:minecraft:acacia_planks>);
sawmill(<item:minecraft:dark_oak_log>, <item:minecraft:stripped_dark_oak_log>, <item:minecraft:dark_oak_planks>);
sawmill(<item:minecraft:mangrove_log>, <item:minecraft:stripped_mangrove_log>, <item:minecraft:mangrove_planks>);

sawmill(<item:quark:blossom_log>, <item:quark:stripped_blossom_log>, <item:quark:blossom_planks>);
sawmill(<item:quark:azalea_log>, <item:quark:azalea_log>, <item:quark:azalea_planks>);
sawmill(<item:quark:ancient_log>, <item:quark:ancient_log>, <item:quark:ancient_planks>);

//"wood"
sawmill(<item:minecraft:oak_wood>, <item:minecraft:stripped_oak_wood>, <item:minecraft:oak_planks>);
sawmill(<item:minecraft:spruce_wood>, <item:minecraft:stripped_spruce_wood>, <item:minecraft:spruce_planks>);
sawmill(<item:minecraft:birch_wood>, <item:minecraft:stripped_birch_wood>, <item:minecraft:birch_planks>);
sawmill(<item:minecraft:jungle_wood>, <item:minecraft:stripped_jungle_wood>, <item:minecraft:jungle_planks>);
sawmill(<item:minecraft:acacia_wood>, <item:minecraft:stripped_acacia_wood>, <item:minecraft:acacia_planks>);
sawmill(<item:minecraft:dark_oak_wood>, <item:minecraft:stripped_dark_oak_wood>, <item:minecraft:dark_oak_planks>);
sawmill(<item:minecraft:mangrove_wood>, <item:minecraft:stripped_mangrove_wood>, <item:minecraft:mangrove_planks>);

sawmill(<item:quark:blossom_wood>, <item:quark:stripped_blossom_wood>, <item:quark:blossom_planks>);
sawmill(<item:quark:azalea_wood>, <item:quark:stripped_azalea_wood>, <item:quark:azalea_planks>);
sawmill(<item:quark:ancient_wood>, <item:quark:stripped_ancient_wood>, <item:quark:ancient_planks>);

//salvage
salvage(<item:minecraft:oak_planks>, <item:minecraft:oak_door>, <item:minecraft:oak_trapdoor>, <item:minecraft:oak_sign>, <item:minecraft:bookshelf>);
salvage(<item:minecraft:spruce_planks>, <item:minecraft:spruce_door>, <item:minecraft:spruce_trapdoor>, <item:minecraft:spruce_sign>, <item:quark:spruce_bookshelf>);
salvage(<item:minecraft:birch_planks>, <item:minecraft:birch_door>, <item:minecraft:birch_trapdoor>, <item:minecraft:birch_sign>, <item:quark:birch_bookshelf>);
salvage(<item:minecraft:jungle_planks>, <item:minecraft:jungle_door>, <item:minecraft:jungle_trapdoor>, <item:minecraft:jungle_sign>, <item:quark:jungle_bookshelf>);
salvage(<item:minecraft:mangrove_planks>, <item:minecraft:mangrove_door>, <item:minecraft:mangrove_trapdoor>, <item:minecraft:mangrove_sign>, <item:quark:mangrove_bookshelf>);

salvage(<item:quark:blossom_planks>, <item:quark:blossom_door>, <item:quark:blossom_trapdoor>, <item:quark:blossom_sign>, <item:quark:blossom_bookshelf>);
salvage(<item:quark:azalea_planks>, <item:quark:azalea_door>, <item:quark:azalea_trapdoor>, <item:quark:azalea_sign>, <item:quark:azalea_bookshelf>);
salvage(<item:quark:ancient_planks>, <item:quark:ancient_door>, <item:quark:ancient_trapdoor>, <item:quark:ancient_sign>, <item:quark:ancient_bookshelf>);

function sawmill(input as IItemStack, strippedOutput as IItemStack, output as IItemStack) as void{ 
	var recipeName = "sawmill_" + input.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:sawmill>.addRecipe(recipeName, input, 1600, strippedOutput, [<item:farmersdelight:tree_bark>], (output * 6), [<item:immersiveengineering:dust_wood>]);
}

function salvage(plank as IItemStack, door as IItemStack, trapdoor as IItemStack, sign as IItemStack, bookshelf as IItemStack) as void{ 
	var doorRecipeName = "sawmill_door_" + plank.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:sawmill>.addRecipe(doorRecipeName, door, 100, plank, []);
	
	var trapdoorRecipeName = "sawmill_trapdoor_" + plank.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:sawmill>.addRecipe(trapdoorRecipeName, trapdoor, 100, plank * 2, []);
	
	var signRecipeName = "sawmill_sign_" + plank.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:sawmill>.addRecipe(signRecipeName, sign, 100, plank * 2, []);
	
	var shelfRecipeName = "sawmill_bookshelf_" + plank.getDefinition().getRegistryName().getPath();
	<recipetype:immersiveengineering:sawmill>.addRecipe(shelfRecipeName, bookshelf, 100, plank * 6, [<item:minecraft:book>*3]);
}