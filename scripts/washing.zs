import mods.create.SplashingManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.item.ItemDefinition;

<recipetype:create:splashing>.removeByInput(<item:minecraft:gravel>);
<recipetype:create:splashing>.removeByInput(<item:minecraft:sand>);
<recipetype:create:splashing>.removeByInput(<item:minecraft:red_sand>);
<recipetype:create:splashing>.removeByInput(<item:minecraft:soul_sand>);

<recipetype:create:splashing>.removeByRegex("create:splashing/crushed_raw_.*");
<recipetype:create:splashing>.removeByRegex("create:splashing/immersiveengineering/crushed_raw_.*");

//BLOCKS
<recipetype:create:splashing>.addRecipe("wash_sand", [<item:minecraft:clay_ball> % 50], <tag:items:forge:sand>);
<recipetype:create:splashing>.addRecipe("wash_dirt", [<item:minecraft:mud>], <item:minecraft:dirt>);


<recipetype:create:splashing>.addRecipe("wash_deepslate_cobble", [<item:minecraft:gold_nugget> % 12.5, <item:immersiveengineering:nugget_uranium> % 6.25], <item:minecraft:cobbled_deepslate>);
<recipetype:create:splashing>.addRecipe("wash_cobble", [<item:immersiveengineering:nugget_lead> % 12.5, <item:immersiveengineering:nugget_silver> % 12.5, <item:immersiveengineering:nugget_nickel> % 10], <item:minecraft:cobblestone>);
<recipetype:create:splashing>.addRecipe("wash_gravel", [<item:immersiveengineering:nugget_copper> % 25, <item:minecraft:iron_nugget> % 12.5, <item:create:zinc_nugget> % 10, <item:immersiveengineering:nugget_aluminum> % 5], <item:minecraft:gravel>);

//CRUSHED ORES
<recipetype:create:splashing>.addRecipe("wash_crushed_iron", [<item:minecraft:iron_nugget> * 9, <item:immersiveengineering:nugget_nickel> * 3 % 25], <item:create:crushed_raw_iron>);
<recipetype:create:splashing>.addRecipe("wash_crushed_gold", [<item:minecraft:gold_nugget> * 9, <item:minecraft:quartz> % 25], <item:create:crushed_raw_gold>);
<recipetype:create:splashing>.addRecipe("wash_crushed_copper", [<item:immersiveengineering:nugget_copper> * 9, <item:minecraft:clay_ball> % 25], <item:create:crushed_raw_copper>);

<recipetype:create:splashing>.addRecipe("wash_crushed_zinc", [<item:create:zinc_nugget> * 9, <item:minecraft:gunpowder> % 25], <item:create:crushed_raw_zinc>);

<recipetype:create:splashing>.addRecipe("wash_crushed_silver", [<item:immersiveengineering:nugget_silver> * 9, <item:immersiveengineering:nugget_lead> * 3 % 25], <item:create:crushed_raw_silver>);
<recipetype:create:splashing>.addRecipe("wash_crushed_lead", [<item:immersiveengineering:nugget_lead> * 9, <item:immersiveengineering:nugget_silver> * 3 % 25], <item:create:crushed_raw_lead>);
<recipetype:create:splashing>.addRecipe("wash_crushed_aluminum", [<item:immersiveengineering:nugget_aluminum> * 9, <item:immersiveengineering:slag> % 25], <item:create:crushed_raw_aluminum>);
<recipetype:create:splashing>.addRecipe("wash_crushed_uranium", [<item:immersiveengineering:nugget_uranium> * 9, <item:immersiveengineering:dust_sulfur> % 25], <item:create:crushed_raw_uranium>);
<recipetype:create:splashing>.addRecipe("wash_crushed_nickel", [<item:immersiveengineering:nugget_nickel> * 9, <item:minecraft:iron_nugget> * 3 % 25], <item:create:crushed_raw_nickel>);