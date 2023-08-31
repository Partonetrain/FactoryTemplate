import crafttweaker.api.ingredient.type.IIngredientEmpty;

var empty = IIngredientEmpty.getInstance();

craftingTable.remove(<item:rpm2rf:alternator>);
craftingTable.addShaped("alternator", <item:rpm2rf:alternator>, [[<tag:items:forge:plates/steel>, <tag:items:forge:ingots/brass>, <tag:items:forge:plates/steel>], [<item:immersiveengineering:coil_mv>, <item:create:shaft>, <item:immersiveengineering:coil_mv>], [<tag:items:forge:plates/steel>, <tag:items:forge:ingots/brass>, <tag:items:forge:plates/steel>]]);

craftingTable.remove(<item:solargeneration:photovoltaic_cell>);
craftingTable.addShaped("solar_cell", <item:solargeneration:photovoltaic_cell>, [[<item:minecraft:glass_pane>, <item:minecraft:glass_pane>, <item:minecraft:glass_pane>], [<tag:items:forge:gems/lapis>, <tag:items:forge:gems/lapis>, <tag:items:forge:gems/lapis>], [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>]]);

craftingTable.remove(<item:solargeneration:solar_core_hardened>);
craftingTable.addShaped("solar_core", <item:solargeneration:solar_core_hardened>, [[empty, <tag:items:forge:wires/electrum>, empty], [<tag:items:forge:wires/electrum>, <tag:items:forge:ingots/steel>, <tag:items:forge:wires/electrum>], [empty, <tag:items:forge:wires/electrum>, empty]]);

craftingTable.remove(<item:solargeneration:solar_panel_hardened>);
craftingTable.addShaped("lv_solar", <item:solargeneration:solar_panel_hardened>, [[<item:solargeneration:photovoltaic_cell>, <item:solargeneration:photovoltaic_cell>, <item:solargeneration:photovoltaic_cell>], [<tag:items:forge:wires/copper>, <item:solargeneration:solar_core_hardened>, <tag:items:forge:wires/copper>], [empty, <tag:items:forge:plates/steel>, empty]]);
  
craftingTable.remove(<item:solargeneration:solar_panel_redstone>);
craftingTable.addShaped("mv_solar", <item:solargeneration:solar_panel_redstone>, [[<item:solargeneration:solar_panel_hardened>, <item:solargeneration:solar_panel_hardened>, <item:solargeneration:solar_panel_hardened>], [<item:solargeneration:solar_panel_hardened>, <item:solargeneration:solar_core_hardened>, <item:solargeneration:solar_panel_hardened>], [<item:solargeneration:solar_panel_hardened>, <item:solargeneration:solar_panel_hardened>, <item:solargeneration:solar_panel_hardened>]]);
  
craftingTable.remove(<item:solargeneration:solar_panel_signalum>);
craftingTable.addShaped("hv_solar", <item:solargeneration:solar_panel_signalum>, [[<item:solargeneration:solar_panel_redstone>, <item:solargeneration:solar_panel_redstone>, <item:solargeneration:solar_panel_redstone>], [<item:solargeneration:solar_panel_redstone>, <item:solargeneration:solar_core_hardened>, <item:solargeneration:solar_panel_redstone>], [<item:solargeneration:solar_panel_redstone>, <item:solargeneration:solar_panel_redstone>, <item:solargeneration:solar_panel_redstone>]]);
  