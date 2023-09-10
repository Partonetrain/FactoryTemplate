#onlyif modloaded sliceanddice
import mods.create.MixingManager;

println("FactoryTemplate: Slice and Dice detected, loading integration.");

<tag:fluids:minecraft:water>.remove(<fluid:sliceanddice:fertilizer>);
<tag:fluids:minecraft:water>.remove(<fluid:sliceanddice:flowing_fertilizer>);
<recipetype:create:mixing>.remove(<fluid:sliceanddice:fertilizer>);
<recipetype:create:mixing>.addRecipe("liquid_fertilizer", <constant:create:heat_condition:none>, [<fluid:sliceanddice:fertilizer> * 250], [<item:immersiveengineering:fertilizer>], [<fluid:minecraft:water> * 250], 100);

#endif