#onlyif modloaded railways
import crafttweaker.api.recipe.type.StonecutterRecipe;

println("FactoryTemplate: Create Steam and Rails detected, loading integration.");

<recipetype:stonecutting>.remove(<item:railways:conductor_vent>);
<recipetype:stonecutting>.addRecipe("copycat_block", <item:railways:conductor_vent> * 4, <tag:items:forge:ingots/zinc>);

#endif