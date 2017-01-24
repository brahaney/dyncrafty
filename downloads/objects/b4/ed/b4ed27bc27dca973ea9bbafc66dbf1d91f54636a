// Creating warm blood from life essence
furnace.addRecipe(<witchery:ingredient:163>, <AWWayofTime:bucketLife>);

// Koboldite dust -> nuggets -> ingots
var kobolditeDust   = <witchery:ingredient:148>;
var kobolditeNugget = <witchery:ingredient:149>;
var kobolditeIngot  = <witchery:ingredient:150>;
recipes.addShaped(kobolditeNugget, [
    [kobolditeDust, kobolditeDust, kobolditeDust],
    [kobolditeDust, kobolditeDust, kobolditeDust],
    [kobolditeDust, kobolditeDust, kobolditeDust]]);
recipes.addShaped(kobolditeIngot, [
    [kobolditeNugget, kobolditeNugget, kobolditeNugget],
    [kobolditeNugget, kobolditeNugget, kobolditeNugget],
    [kobolditeNugget, kobolditeNugget, kobolditeNugget]]);
recipes.addShapeless(kobolditeNugget*9, [kobolditeIngot]);
