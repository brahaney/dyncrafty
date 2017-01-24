// Convience
var leather = <minecraft:leather>;
var gold = <ore:ingotGold>;
var goldblock = <ore:blockGold>;
var iron = <ore:ingotIron>;
var ironblock = <ore:blockIron>;
var diamond = <ore:gemDiamond>;
var diamondblock = <ore:blockDiamond>;

// Add flesh to Leather recipe
furnace.addRecipe(leather, <minecraft:rotten_flesh>);

// Add saddle recipe
recipes.addShaped(<minecraft:saddle>, [
				      [ leather, iron,    leather ],
				      [ null,    leather, null    ]]);

// Diamond Horse Armor
recipes.addShaped(<minecraft:diamond_horse_armor>, [
						   [ null, null, diamond ],
						   [ diamond, diamond, diamondblock ]]);

// Gold Horse Armor
recipes.addShaped(<minecraft:golden_horse_armor>, [
						  [ null, null, gold ],
						  [ gold, gold, goldblock]]);

// Iron Horse Armor
recipes.addShaped(<minecraft:iron_horse_armor>, [
						[ null, null, iron ],
						[ iron, iron, ironblock]]);
