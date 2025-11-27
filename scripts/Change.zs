val mlIgont = <ThermalFoundation:material:38>;//蕴魔粉
val ironIgont = <minecraft:iron_ingot>;
val glass = <ore:glass> ;
val gearMithril = <ore:gearMithril> ;//蕴魔齿轮
val flint = <minecraft:flint>;//燧石
val piston = <minecraft:piston>;//活塞
val redstone = <ore:alloyBasic>;
val jkd = <ore:circuitBasic>;
val Gwk = <Mekanism:BasicBlock:8>;
val dye = <ore:dye>;
val leather = <minecraft:leather>;
val flesh = <minecraft:rotten_flesh>;
val dust = <exnihilo:dust>;
val gravel = <ore:gravel>;//砂砾
val cobble = <ore:cobblestone>;
val qjk = <ImmersiveEngineering:metalDecoration:7>;
val jxlj = <ImmersiveEngineering:material:11>;
val copper = <ore:ingotCopper>;
val netherbrick = <minecraft:netherbrick>;
val brick = <minecraft:brick>;
val glk = <ImmersiveEngineering:stoneDecoration:2>;
val plasticSheet = <MineFactoryReloaded:plastic.sheet>;
val stone = <ore:stone>;
val sand = <ore:sand>;

//remove Frame
recipes.remove(<ThermalExpansion:Frame>);
recipes.remove(<EnderIO:blockSagMill>);
recipes.remove(qjk);
recipes.remove(glk);
recipes.remove(<Mekanism:MachineBlock>);
recipes.remove(<ImmersiveEngineering:stoneDecoration:1>);
recipes.remove(<MineFactoryReloaded:machineblock>);
recipes.remove(<exastrisrebirth:blockEndCake>);
recipes.remove(<DraconicEvolution:sunDial>);

//MlIgont
recipes.addShapeless(<ThermalFoundation:material:38> * 3 ,
    [<ore:dustIron>,<ore:dustCopper>,<ore:dye>]);
    
//Mlmachine
recipes.addShaped(<ThermalExpansion:Frame> * 1, [
    [ironIgont,glass,ironIgont],
    [glass,gearMithril,glass],
    [ironIgont,glass,ironIgont]
]); 

recipes.addShaped(<EnderIO:blockSagMill> * 1, [
    [flint,flint,flint],
    [ironIgont,gearMithril,ironIgont],
    [ironIgont,piston,ironIgont]
]);

recipes.addShaped(<Mekanism:MachineBlock> * 1, [
    [redstone,jkd,redstone],
    [ironIgont,Gwk,gearMithril],
    [redstone,jkd,redstone]
]);

recipes.addShaped(<minecraft:gravel> * 8, [
    [cobble,cobble,cobble],
    [cobble,dust,cobble],
    [cobble,cobble,cobble]
]);

recipes.addShaped(qjk * 8, [
    [ironIgont,jxlj,ironIgont],
    [copper,copper,copper],
    [ironIgont,jxlj,ironIgont]
]);

recipes.addShaped(glk*4,[
    [netherbrick,brick,netherbrick],
    [brick,null,brick],
    [netherbrick,brick,netherbrick]
]);

recipes.addShaped(<ImmersiveEngineering:stoneDecoration:1> * 8 ,[
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
    [<minecraft:brick>,<ore:sandstone>,<minecraft:brick>],
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]
]);

recipes.addShaped(<MineFactoryReloaded:machineblock>,[
    [plasticSheet,plasticSheet,plasticSheet],
    [stone,gearMithril,stone],
    [null,null,null]
]);
recipes.addShaped(<TConstruct:CraftedSoil:1> * 4,[
    [<ImmersiveEngineering:stoneDecoration>,sand,null],
    [sand,<ImmersiveEngineering:stoneDecoration>,null],
    [null,null,null]
]);//水泥
//furnace  ==== furnace.addRecipe(out,import); ====
furnace.addRecipe(flesh,leather);
furnace.addRecipe(leather,flesh);
mods.exnihilo.Sieve.addRecipe(<minecraft:sand>,<DraconicEvolution:draconiumDust>, 3);
mods.exnihilo.Sieve.addRecipe(<EnderIO:blockReinforcedObsidian>,<ExtraUtilities:bedrockiumIngot>, 40);