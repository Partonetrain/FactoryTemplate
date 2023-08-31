import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.MutableComponent;
import crafttweaker.api.recipe.type.StonecutterRecipe;

import mods.jeitweaker.Jei;

//Create
Remove(<item:create:blaze_cake_base>);

//use kinetics instead
Remove(<item:immersiveengineering:dynamo>);
Remove(<item:immersiveengineering:waterwheel_segment>);
Remove(<item:immersiveengineering:watermill>);
Remove(<item:immersiveengineering:windmill_blade>);
Remove(<item:immersiveengineering:windmill>);

Remove(<item:immersiveengineering:strip_curtain>);
Remove(<item:immersiveengineering:sorter>);
Remove(<item:immersiveengineering:fluid_sorter>);
Remove(<item:immersiveengineering:conveyor_redstone>);
Remove(<item:immersiveengineering:conveyor_dropper>);
Remove(<item:immersiveengineering:conveyor_splitter>);
//Remove(<item:immersiveengineering:conveyor_extract>);

//packing metal press molds (use create press instead)
Remove(<item:immersiveengineering:mold_packing_9>);
Remove(<item:immersiveengineering:mold_packing_4>);
Remove(<item:immersiveengineering:mold_unpacking>);

<recipetype:immersiveengineering:metal_press>.removeByName("immersiveengineering:metalpress/melon");
<recipetype:immersiveengineering:metal_press>.removeByName("farmersdelight:integration/immersiveengineering/metalpress/pumpkin");

//unified crafting materials
Remove(<item:create:copper_sheet>);
Remove(<item:create:golden_sheet>);
Remove(<item:create:iron_sheet>);
Remove(<item:create:copper_nugget>);
craftingTable.removeByName("create:crafting/materials/copper_ingot");

//use extendable posts instead
Remove(<item:immersiveengineering:alu_post>);
Remove(<item:immersiveengineering:steel_post>);
Remove(<item:immersiveengineering:treated_post>);

//Solars
Remove(<item:solargeneration:lapis_shard>);
Remove(<item:solargeneration:solar_core_leadstone>);
//hardened one is used
Remove(<item:solargeneration:solar_core_redstone>);
Remove(<item:solargeneration:solar_core_signalum>);
Remove(<item:solargeneration:solar_core_resonant>);
Remove(<item:solargeneration:solar_core_advanced>);
Remove(<item:solargeneration:solar_core_ultimate>);

Remove(<item:solargeneration:solar_panel_leadstone>);
Remove(<item:solargeneration:solar_helmet_leadstone>);
Remove(<item:solargeneration:solar_panel_resonant>);
Remove(<item:solargeneration:solar_helmet_resonant>);
Remove(<item:solargeneration:solar_panel_advanced>);
Remove(<item:solargeneration:solar_helmet_advanced>);
Remove(<item:solargeneration:solar_panel_ultimate>);

Remove(<item:farmersdelight:wheat_dough>);

//quark overlap
//storage crates, iron rod, magnet, etc are removed by config

//misc
Remove(<item:immersiveengineering:slag_gravel>);
Remove(<item:computercraft:computer_normal>);
Remove(<item:computercraft:turtle_normal>);
Remove(<item:computercraft:pocket_computer_normal>);
Remove(<item:computercraft:monitor_normal>);
Remove(<item:computercraft:wireless_modem_normal>);

Jei.hideIngredient(<item:computercraft:pocket_computer_normal>.withTag({Upgrade: "computercraft:wireless_modem_advanced"}));
Jei.hideIngredient(<item:computercraft:pocket_computer_normal>.withTag({Upgrade: "computercraft:wireless_modem_normal"}));
Jei.hideIngredient(<item:computercraft:pocket_computer_normal>.withTag({Upgrade: "computercraft:speaker"}));

Remove(<item:storagedrawers:compacting_drawers_3>);
Remove(<item:framedcompactdrawers:framed_compact_drawer>);
Remove(<item:storagedrawers:obsidian_storage_upgrade>);
Remove(<item:storagedrawers:iron_storage_upgrade>);
Remove(<item:storagedrawers:gold_storage_upgrade>);
Remove(<item:storagedrawers:diamond_storage_upgrade>);
Remove(<item:storagedrawers:emerald_storage_upgrade>);

Remove(<item:buildinggadgets:gadget_destruction>);
Remove(<item:buildinggadgets:gadget_copy_paste>);
Jei.hideIngredient(<item:buildinggadgets:gadget_destruction>.withTag({overlay: 1, fuzzy: 1, energy: 1000000.0}));


Remove(<item:solargeneration:solar_helmet_ultimate>);

// ==== Functions

function AddTooltip(i as IItemStack) as void{
	var tooltip = Component.literal("Disabled by modpack!") as MutableComponent;
	tooltip.setStyle(<constant:minecraft:formatting:red>.asStyle());
	
	i.addTooltip(tooltip);
}

function Remove(i as IItemStack) as void{
	Jei.hideIngredient(i);
	AddTooltip(i);
	recipes.remove(i);
}


/*
//remove stonecutter and crafting
function RSC(i as IItemStack) as void{ 
	stoneCutter.remove(i);
	craftingTable.remove(i);
	Jei.hideIngredient(i);
	AddTooltip(i);
}

//remove crafting only
function RC(i as IItemStack) as void{ 
	craftingTable.remove(i);
	Jei.hideIngredient(i);
	AddTooltip(i);
}
*/