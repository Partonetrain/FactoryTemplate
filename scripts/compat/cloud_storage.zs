#onlyif modloaded cloudstorage
import mods.create.MixingManager;


println("FactoryTemplate: Cloud Storage detected, loading integration.");

<tag:items:minecraft:music_discs>.add(<item:cloudstorage:music_disc_drift>);
<recipetype:create:mixing>.addRecipe("static_cloud", <constant:create:heat_condition:none>, [<item:cloudstorage:static_cloud>], [<item:minecraft:lightning_rod>, <item:cloudstorage:cloud>], [], 100);

#endif