#onlyif modloaded create_enchantment_industry

<tag:fluids:forge:experience>.add(<fluid:create_enchantment_industry:experience>);
<tag:fluids:forge:hyper_experience>.add(<fluid:create_enchantment_industry:hyper_experience>);

<recipetype:immersiveengineering:squeezer>.addRecipe("squeezer_ink", <tag:items:create_enchantment_industry:ink_ingredient>, 3000, <fluid:create_enchantment_industry:ink> * 250);
<recipetype:immersiveengineering:squeezer>.addRecipe("squeezer_exp", <item:create:experience_nugget>, 1000, <fluid:create_enchantment_industry:experience> * 3);

//the player doesn't seem to gain experience when picking up hyper experience orbs, but I'm not sure if this is a bug. 
//If it is, then hyper exp isn't 1:1 and the following lines need to be removed
<recipetype:immersiveengineering:mixer>.addRecipe("mixer_hyper_exp", <tag:fluids:forge:experience>, [<item:minecraft:glow_ink_sac>, <item:minecraft:lapis_lazuli>], 2400, <fluid:create_enchantment_industry:hyper_experience>, 10);
<recipetype:create:mixing>.removeByName("create_enchantment_industry:mixing/hyper_experience");
<recipetype:create:mixing>.addRecipe("whisk_hyper_experience", <constant:create:heat_condition:superheated>, [<fluid:create_enchantment_industry:hyper_experience> * 10], [<item:minecraft:glow_ink_sac>, <item:minecraft:lapis_lazuli>], [<fluid:create_enchantment_industry:experience> * 10], 100);

#endif