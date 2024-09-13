--[[
Storage and retrieval of augmentation stones
Transmutation:
** done Transmutation of NQ Skirmish Weapons to +1 Skirmish Weapons in exchange for 5,000 bayld plus a Vial of translurry.
** done Transmutation of +1 Skirmish Weapons to +2 Skirmish Weapons in exchange for bayld plus a Vial of transmelange.
** done Transmutation of NQ Skirmish Armor to +1 Skirmish Armor in exchange for bayld plus a Vial of transmelange.
Note: that this process will remove any augments and return an un-augmented HQ weapon.
Augmentation:
Augmentation of NQ Skirmish Weapons in exchange for bayld plus a Ghastly Stone, Ghastly Stone +1, or Ghastly Stone +2.
Augmentation of +1 Skirmish Weapons in exchange for bayld plus a Verdigris Stone, Verdigris Stone +1, or Verdigris Stone +2.
Augmentation of +2 Skirmish Weapons in exchange for bayld plus a Wailing Stone, Wailing Stone +1, or Wailing Stone +2 .
Augmentation of NQ Skirmish Armor in exchange for bayld plus a Verdigris Stone, Verdigris Stone +1, or Verdigris Stone +2.
Augmentation of +1 Skirmish Armor in exchange for bayld plus a Wailing Stone, Wailing Stone +1, or Wailing Stone +2.
Augmentation of Alluvion Skirmish Weapons in exchange for Obsidian Fragments plus a Leaf, Snow, or Dusk stone.
Augmentation of Alluvion Skirmish Armor in exchange for Obsidian Fragments plus a Leaf, Snow, or Dusk stone.
]]--
local entity = {}

entity.onTrade = function(player, npc, trade)
local amount   = player:getCurrency('bayld')
local itemID = trade:getItemId()
local itemparam = itemID * 65536

-----------------------------------------------------------------------------------------------------
------------ trade in for augments
-----------------------------------------------------------------------------------------------------
local skirAug =
{
[1]={trade={27768,4035,{65535,1}},base=27768,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Helm/Physical Damage Taken-/Attack/-
[2]={trade={27768,4035,{65535,2}},base=27768,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Helm/Physical Damage Taken-/Accuracy/-
[3]={trade={27768,4035,{65535,3}},base=27768,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Helm/Physical Damage Taken-/Double Attack/-
[4]={trade={27768,4035,{65535,4}},base=27768,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Helm/Physical Damage Taken-/Critical Hit Rate/-
[5]={trade={27768,4035,{65535,5}},base=27768,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Cizin Helm/Physical Damage Taken-/Magic Defense Bonus/-
[6]={trade={27912,4035,{65535,1}},base=27912,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mail/Physical Damage Taken-/Attack/-
[7]={trade={27912,4035,{65535,2}},base=27912,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mail/Physical Damage Taken-/Accuracy/-
[8]={trade={27912,4035,{65535,3}},base=27912,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mail/Physical Damage Taken-/Double Attack/-
[9]={trade={27912,4035,{65535,4}},base=27912,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mail/Physical Damage Taken-/Critical Hit Rate/-
[10]={trade={27912,4035,{65535,5}},base=27912,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mail/Physical Damage Taken-/Magic Defense Bonus/-
[11]={trade={28051,4035,{65535,1}},base=28051,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mufflers/Physical Damage Taken-/Attack/-
[12]={trade={28051,4035,{65535,2}},base=28051,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mufflers/Physical Damage Taken-/Accuracy/-
[13]={trade={28051,4035,{65535,3}},base=28051,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mufflers/Physical Damage Taken-/Double Attack/-
[14]={trade={28051,4035,{65535,4}},base=28051,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mufflers/Physical Damage Taken-/Critical Hit Rate/-
[15]={trade={28051,4035,{65535,5}},base=28051,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Cizin Mufflers/Physical Damage Taken-/Magic Defense Bonus/-
[16]={trade={28192,4035,{65535,1}},base=28192,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Breeches/Physical Damage Taken-/Attack/-
[17]={trade={28192,4035,{65535,2}},base=28192,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Breeches/Physical Damage Taken-/Accuracy/-
[18]={trade={28192,4035,{65535,3}},base=28192,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Breeches/Physical Damage Taken-/Double Attack/-
[19]={trade={28192,4035,{65535,4}},base=28192,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Breeches/Physical Damage Taken-/Critical Hit Rate/-
[20]={trade={28192,4035,{65535,5}},base=28192,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Cizin Breeches/Physical Damage Taken-/Magic Defense Bonus/-
[21]={trade={28332,4035,{65535,1}},base=28332,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Greaves/Physical Damage Taken-/Attack/-
[22]={trade={28332,4035,{65535,2}},base=28332,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Cizin Greaves/Physical Damage Taken-/Accuracy/-
[23]={trade={28332,4035,{65535,3}},base=28332,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Greaves/Physical Damage Taken-/Double Attack/-
[24]={trade={28332,4035,{65535,4}},base=28332,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Cizin Greaves/Physical Damage Taken-/Critical Hit Rate/-
[25]={trade={28332,4035,{65535,5}},base=28332,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Cizin Greaves/Physical Damage Taken-/Magic Defense Bonus/-
[26]={trade={27728,3953,{65535,1}},base=27728,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Cizin Helm +1/Physical Damage Taken-/Attack/Accuracy
[27]={trade={27728,3953,{65535,2}},base=27728,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Helm +1/Physical Damage Taken-/Attack/Double Attack
[28]={trade={27728,3953,{65535,3}},base=27728,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Helm +1/Physical Damage Taken-/Attack/Critical Hit Rate
[29]={trade={27728,3953,{65535,4}},base=27728,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Helm +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[30]={trade={27728,3953,{65535,5}},base=27728,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Helm +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[31]={trade={27728,3953,{65535,6}},base=27728,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Helm +1/Physical Damage Taken-/Accuracy/Double Attack
[32]={trade={27728,3953,{65535,7}},base=27728,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Helm +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[33]={trade={27728,3953,{65535,8}},base=27728,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Helm +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[34]={trade={27728,3953,{65535,9}},base=27728,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Helm +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[35]={trade={27728,3953,{65535,10}},base=27728,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Cizin Helm +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[36]={trade={27728,3953,{65535,11}},base=27728,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Helm +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[37]={trade={27728,3953,{65535,12}},base=27728,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Helm +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[38]={trade={27728,3953,{65535,13}},base=27728,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Helm +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[39]={trade={27728,3953,{65535,14}},base=27728,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Helm +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[40]={trade={27728,3953,{65535,15}},base=27728,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,aug3=55,aug3MAX=4,cost=500},--Cizin Helm +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[41]={trade={27874,3953,{65535,1}},base=27874,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Cizin Mail +1/Physical Damage Taken-/Attack/Accuracy
[42]={trade={27874,3953,{65535,2}},base=27874,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Mail +1/Physical Damage Taken-/Attack/Double Attack
[43]={trade={27874,3953,{65535,3}},base=27874,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Mail +1/Physical Damage Taken-/Attack/Critical Hit Rate
[44]={trade={27874,3953,{65535,4}},base=27874,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Mail +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[45]={trade={27874,3953,{65535,5}},base=27874,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Mail +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[46]={trade={27874,3953,{65535,6}},base=27874,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Mail +1/Physical Damage Taken-/Accuracy/Double Attack
[47]={trade={27874,3953,{65535,7}},base=27874,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Mail +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[48]={trade={27874,3953,{65535,8}},base=27874,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Mail +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[49]={trade={27874,3953,{65535,9}},base=27874,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Mail +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[50]={trade={27874,3953,{65535,10}},base=27874,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Cizin Mail +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[51]={trade={27874,3953,{65535,11}},base=27874,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Mail +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[52]={trade={27874,3953,{65535,12}},base=27874,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Mail +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[53]={trade={27874,3953,{65535,13}},base=27874,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Mail +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[54]={trade={27874,3953,{65535,14}},base=27874,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Mail +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[55]={trade={27874,3953,{65535,15}},base=27874,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,aug3=55,aug3MAX=4,cost=500},--Cizin Mail +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[56]={trade={28018,3953,{65535,1}},base=28018,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Attack/Accuracy
[57]={trade={28018,3953,{65535,2}},base=28018,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Attack/Double Attack
[58]={trade={28018,3953,{65535,3}},base=28018,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Attack/Critical Hit Rate
[59]={trade={28018,3953,{65535,4}},base=28018,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[60]={trade={28018,3953,{65535,5}},base=28018,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[61]={trade={28018,3953,{65535,6}},base=28018,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Accuracy/Double Attack
[62]={trade={28018,3953,{65535,7}},base=28018,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[63]={trade={28018,3953,{65535,8}},base=28018,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[64]={trade={28018,3953,{65535,9}},base=28018,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[65]={trade={28018,3953,{65535,10}},base=28018,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[66]={trade={28018,3953,{65535,11}},base=28018,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[67]={trade={28018,3953,{65535,12}},base=28018,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[68]={trade={28018,3953,{65535,13}},base=28018,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[69]={trade={28018,3953,{65535,14}},base=28018,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[70]={trade={28018,3953,{65535,15}},base=28018,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,aug3=55,aug3MAX=4,cost=500},--Cizin Mufflers +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[71]={trade={28160,3953,{65535,1}},base=28160,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Attack/Accuracy
[72]={trade={28160,3953,{65535,2}},base=28160,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Attack/Double Attack
[73]={trade={28160,3953,{65535,3}},base=28160,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Attack/Critical Hit Rate
[74]={trade={28160,3953,{65535,4}},base=28160,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[75]={trade={28160,3953,{65535,5}},base=28160,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[76]={trade={28160,3953,{65535,6}},base=28160,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Accuracy/Double Attack
[77]={trade={28160,3953,{65535,7}},base=28160,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[78]={trade={28160,3953,{65535,8}},base=28160,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[79]={trade={28160,3953,{65535,9}},base=28160,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[80]={trade={28160,3953,{65535,10}},base=28160,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[81]={trade={28160,3953,{65535,11}},base=28160,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[82]={trade={28160,3953,{65535,12}},base=28160,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[83]={trade={28160,3953,{65535,13}},base=28160,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[84]={trade={28160,3953,{65535,14}},base=28160,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[85]={trade={28160,3953,{65535,15}},base=28160,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,aug3=55,aug3MAX=4,cost=500},--Cizin Breeches +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[86]={trade={28297,3953,{65535,1}},base=28297,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Attack/Accuracy
[87]={trade={28297,3953,{65535,2}},base=28297,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Attack/Double Attack
[88]={trade={28297,3953,{65535,3}},base=28297,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Attack/Critical Hit Rate
[89]={trade={28297,3953,{65535,4}},base=28297,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[90]={trade={28297,3953,{65535,5}},base=28297,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[91]={trade={28297,3953,{65535,6}},base=28297,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Accuracy/Double Attack
[92]={trade={28297,3953,{65535,7}},base=28297,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[93]={trade={28297,3953,{65535,8}},base=28297,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=2,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[94]={trade={28297,3953,{65535,9}},base=28297,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[95]={trade={28297,3953,{65535,10}},base=28297,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[96]={trade={28297,3953,{65535,11}},base=28297,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[97]={trade={28297,3953,{65535,12}},base=28297,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[98]={trade={28297,3953,{65535,13}},base=28297,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=2,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[99]={trade={28297,3953,{65535,14}},base=28297,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[100]={trade={28297,3953,{65535,15}},base=28297,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,aug3=55,aug3MAX=4,cost=500},--Cizin Greaves +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[101]={trade={27771,4035,{65535,1}},base=27771,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Caubeen/Physical Damage Taken-/Cure Spellcasting Time -/-
[102]={trade={27771,4035,{65535,2}},base=27771,aug1=54,aug1MAX=3,aug2=329,aug2MAX=8,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Caubeen/Physical Damage Taken-/Cure Potency/-
[103]={trade={27771,4035,{65535,3}},base=27771,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Caubeen/Physical Damage Taken-/Song Spellcasting Time -/-
[104]={trade={27771,4035,{65535,4}},base=27771,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Caubeen/Physical Damage Taken-/Song Recast Delay -/-
[105]={trade={27915,4035,{65535,1}},base=27915,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Bliaut/Physical Damage Taken-/Cure Spellcasting Time -/-
[106]={trade={27915,4035,{65535,2}},base=27915,aug1=54,aug1MAX=3,aug2=329,aug2MAX=8,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Bliaut/Physical Damage Taken-/Cure Potency/-
[107]={trade={27915,4035,{65535,3}},base=27915,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Bliaut/Physical Damage Taken-/Song Spellcasting Time -/-
[108]={trade={27915,4035,{65535,4}},base=27915,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Bliaut/Physical Damage Taken-/Song Recast Delay -/-
[109]={trade={28054,4035,{65535,1}},base=28054,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Gages/Physical Damage Taken-/Cure Spellcasting Time -/-
[110]={trade={28054,4035,{65535,2}},base=28054,aug1=54,aug1MAX=3,aug2=329,aug2MAX=8,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Gages/Physical Damage Taken-/Cure Potency/-
[111]={trade={28054,4035,{65535,3}},base=28054,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Gages/Physical Damage Taken-/Song Spellcasting Time -/-
[112]={trade={28054,4035,{65535,4}},base=28054,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Gages/Physical Damage Taken-/Song Recast Delay -/-
[113]={trade={28195,4035,{65535,1}},base=28195,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Spats/Physical Damage Taken-/Cure Spellcasting Time -/-
[114]={trade={28195,4035,{65535,2}},base=28195,aug1=54,aug1MAX=3,aug2=329,aug2MAX=8,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Spats/Physical Damage Taken-/Cure Potency/-
[115]={trade={28195,4035,{65535,3}},base=28195,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Spats/Physical Damage Taken-/Song Spellcasting Time -/-
[116]={trade={28195,4035,{65535,4}},base=28195,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Spats/Physical Damage Taken-/Song Recast Delay -/-
[117]={trade={28335,4035,{65535,1}},base=28335,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Galoshes/Physical Damage Taken-/Cure Spellcasting Time -/-
[118]={trade={28335,4035,{65535,2}},base=28335,aug1=54,aug1MAX=3,aug2=329,aug2MAX=8,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Galoshes/Physical Damage Taken-/Cure Potency/-
[119]={trade={28335,4035,{65535,3}},base=28335,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Galoshes/Physical Damage Taken-/Song Spellcasting Time -/-
[120]={trade={28335,4035,{65535,4}},base=28335,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,Aug3=0,Aug3MAX=0,cost=500},--Gendewitha Galoshes/Physical Damage Taken-/Song Recast Delay -/-
[121]={trade={27731,3953,{65535,1}},base=27731,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=329,aug3MAX=7,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Spellcasting Time -/Cure Potency
[122]={trade={27731,3953,{65535,2}},base=27731,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=322,aug3MAX=4,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Spellcasting Time -
[123]={trade={27731,3953,{65535,3}},base=27731,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Recast Delay -
[124]={trade={27731,3953,{65535,4}},base=27731,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Spellcasting Time -/Magic Damage Taken -
[125]={trade={27731,3953,{65535,5}},base=27731,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=322,aug3MAX=4,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Potency/Song Spellcasting Time -
[126]={trade={27731,3953,{65535,6}},base=27731,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=337,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Potency/Song Recast Delay -
[127]={trade={27731,3953,{65535,7}},base=27731,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=55,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Cure Potency/Magic Damage Taken -
[128]={trade={27731,3953,{65535,8}},base=27731,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Song Spellcasting Time -/Song Recast Delay -
[129]={trade={27731,3953,{65535,9}},base=27731,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Song Spellcasting Time -/Magic Damage Taken -
[130]={trade={27731,3953,{65535,10}},base=27731,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,aug3=55,aug3MAX=3,cost=500},--Gendewitha Caubeen +1/Physical Damage Taken-/Song Recast Delay -/Magic Damage Taken -
[131]={trade={27877,3953,{65535,1}},base=27877,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=329,aug3MAX=7,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Spellcasting Time -/Cure Potency
[132]={trade={27877,3953,{65535,2}},base=27877,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=322,aug3MAX=4,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Spellcasting Time -
[133]={trade={27877,3953,{65535,3}},base=27877,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Recast Delay -
[134]={trade={27877,3953,{65535,4}},base=27877,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Spellcasting Time -/Magic Damage Taken -
[135]={trade={27877,3953,{65535,5}},base=27877,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=322,aug3MAX=4,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Potency/Song Spellcasting Time -
[136]={trade={27877,3953,{65535,6}},base=27877,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=337,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Potency/Song Recast Delay -
[137]={trade={27877,3953,{65535,7}},base=27877,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=55,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Cure Potency/Magic Damage Taken -
[138]={trade={27877,3953,{65535,8}},base=27877,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Song Spellcasting Time -/Song Recast Delay -
[139]={trade={27877,3953,{65535,9}},base=27877,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Song Spellcasting Time -/Magic Damage Taken -
[140]={trade={27877,3953,{65535,10}},base=27877,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,aug3=55,aug3MAX=3,cost=500},--Gendewitha Bliaut +1/Physical Damage Taken-/Song Recast Delay -/Magic Damage Taken -
[141]={trade={28021,3953,{65535,1}},base=28021,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=329,aug3MAX=7,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Spellcasting Time -/Cure Potency
[142]={trade={28021,3953,{65535,2}},base=28021,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=322,aug3MAX=4,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Spellcasting Time -
[143]={trade={28021,3953,{65535,3}},base=28021,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Recast Delay -
[144]={trade={28021,3953,{65535,4}},base=28021,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Spellcasting Time -/Magic Damage Taken -
[145]={trade={28021,3953,{65535,5}},base=28021,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=322,aug3MAX=4,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Potency/Song Spellcasting Time -
[146]={trade={28021,3953,{65535,6}},base=28021,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=337,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Potency/Song Recast Delay -
[147]={trade={28021,3953,{65535,7}},base=28021,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=55,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Cure Potency/Magic Damage Taken -
[148]={trade={28021,3953,{65535,8}},base=28021,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Song Spellcasting Time -/Song Recast Delay -
[149]={trade={28021,3953,{65535,9}},base=28021,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Song Spellcasting Time -/Magic Damage Taken -
[150]={trade={28021,3953,{65535,10}},base=28021,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,aug3=55,aug3MAX=3,cost=500},--Gendewitha Gages +1/Physical Damage Taken-/Song Recast Delay -/Magic Damage Taken -
[151]={trade={28163,3953,{65535,1}},base=28163,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=329,aug3MAX=7,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Spellcasting Time -/Cure Potency
[152]={trade={28163,3953,{65535,2}},base=28163,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=322,aug3MAX=4,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Spellcasting Time -
[153]={trade={28163,3953,{65535,3}},base=28163,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Recast Delay -
[154]={trade={28163,3953,{65535,4}},base=28163,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Spellcasting Time -/Magic Damage Taken -
[155]={trade={28163,3953,{65535,5}},base=28163,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=322,aug3MAX=4,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Potency/Song Spellcasting Time -
[156]={trade={28163,3953,{65535,6}},base=28163,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=337,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Potency/Song Recast Delay -
[157]={trade={28163,3953,{65535,7}},base=28163,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=55,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Cure Potency/Magic Damage Taken -
[158]={trade={28163,3953,{65535,8}},base=28163,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Song Spellcasting Time -/Song Recast Delay -
[159]={trade={28163,3953,{65535,9}},base=28163,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Song Spellcasting Time -/Magic Damage Taken -
[160]={trade={28163,3953,{65535,10}},base=28163,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,aug3=55,aug3MAX=3,cost=500},--Gendewitha Spats +1/Physical Damage Taken-/Song Recast Delay -/Magic Damage Taken -
[161]={trade={28300,3953,{65535,1}},base=28300,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=329,aug3MAX=7,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Spellcasting Time -/Cure Potency
[162]={trade={28300,3953,{65535,2}},base=28300,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=322,aug3MAX=4,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Spellcasting Time -
[163]={trade={28300,3953,{65535,3}},base=28300,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Spellcasting Time -/Song Recast Delay -
[164]={trade={28300,3953,{65535,4}},base=28300,aug1=54,aug1MAX=3,aug2=323,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Spellcasting Time -/Magic Damage Taken -
[165]={trade={28300,3953,{65535,5}},base=28300,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=322,aug3MAX=4,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Potency/Song Spellcasting Time -
[166]={trade={28300,3953,{65535,6}},base=28300,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=337,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Potency/Song Recast Delay -
[167]={trade={28300,3953,{65535,7}},base=28300,aug1=54,aug1MAX=3,aug2=329,aug2MAX=7,aug3=55,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Cure Potency/Magic Damage Taken -
[168]={trade={28300,3953,{65535,8}},base=28300,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=337,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Song Spellcasting Time -/Song Recast Delay -
[169]={trade={28300,3953,{65535,9}},base=28300,aug1=54,aug1MAX=3,aug2=322,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Song Spellcasting Time -/Magic Damage Taken -
[170]={trade={28300,3953,{65535,10}},base=28300,aug1=54,aug1MAX=3,aug2=337,aug2MAX=3,aug3=55,aug3MAX=3,cost=500},--Gendewitha Galoshes +1/Physical Damage Taken-/Song Recast Delay -/Magic Damage Taken -
[171]={trade={27772,4035,{65535,1}},base=27772,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Magic Attack Bonus/-
[172]={trade={27772,4035,{65535,2}},base=27772,aug1=54,aug1MAX=3,aug2=35,aug2MAX=25,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Magic Accuracy/-
[173]={trade={27772,4035,{65535,3}},base=27772,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Pet: Magic Attack Bonus/-
[174]={trade={27772,4035,{65535,4}},base=27772,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Pet: Magic Accuracy/-
[175]={trade={27772,4035,{65535,5}},base=27772,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Pet: Attack/Ranged Attack/-
[176]={trade={27772,4035,{65535,6}},base=27772,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/-
[177]={trade={27772,4035,{65535,7}},base=27772,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Avatar Perpetuation Cost-/-
[178]={trade={27772,4035,{65535,8}},base=27772,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Enmity-/-
[179]={trade={27772,4035,{65535,9}},base=27772,aug1=54,aug1MAX=3,aug2=140,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Fast Cast/-
[180]={trade={27772,4035,{65535,10}},base=27772,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Hat/Physical Damage Taken-/Magic Burst Damage/-
[181]={trade={27916,4035,{65535,1}},base=27916,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Magic Attack Bonus/-
[182]={trade={27916,4035,{65535,2}},base=27916,aug1=54,aug1MAX=3,aug2=35,aug2MAX=25,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Magic Accuracy/-
[183]={trade={27916,4035,{65535,3}},base=27916,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Pet: Magic Attack Bonus/-
[184]={trade={27916,4035,{65535,4}},base=27916,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Pet: Magic Accuracy/-
[185]={trade={27916,4035,{65535,5}},base=27916,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Pet: Attack/Ranged Attack/-
[186]={trade={27916,4035,{65535,6}},base=27916,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/-
[187]={trade={27916,4035,{65535,7}},base=27916,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Avatar Perpetuation Cost-/-
[188]={trade={27916,4035,{65535,8}},base=27916,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Enmity-/-
[189]={trade={27916,4035,{65535,9}},base=27916,aug1=54,aug1MAX=3,aug2=140,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Fast Cast/-
[190]={trade={27916,4035,{65535,10}},base=27916,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Coat/Physical Damage Taken-/Magic Burst Damage/-
[191]={trade={28055,4035,{65535,1}},base=28055,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Magic Attack Bonus/-
[192]={trade={28055,4035,{65535,2}},base=28055,aug1=54,aug1MAX=3,aug2=35,aug2MAX=25,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Magic Accuracy/-
[193]={trade={28055,4035,{65535,3}},base=28055,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Pet: Magic Attack Bonus/-
[194]={trade={28055,4035,{65535,4}},base=28055,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Pet: Magic Accuracy/-
[195]={trade={28055,4035,{65535,5}},base=28055,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Pet: Attack/Ranged Attack/-
[196]={trade={28055,4035,{65535,6}},base=28055,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/-
[197]={trade={28055,4035,{65535,7}},base=28055,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Avatar Perpetuation Cost-/-
[198]={trade={28055,4035,{65535,8}},base=28055,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Enmity-/-
[199]={trade={28055,4035,{65535,9}},base=28055,aug1=54,aug1MAX=3,aug2=140,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Fast Cast/-
[200]={trade={28055,4035,{65535,10}},base=28055,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Cuffs/Physical Damage Taken-/Magic Burst Damage/-
[201]={trade={28196,4035,{65535,1}},base=28196,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Magic Attack Bonus/-
[202]={trade={28196,4035,{65535,2}},base=28196,aug1=54,aug1MAX=3,aug2=35,aug2MAX=25,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Magic Accuracy/-
[203]={trade={28196,4035,{65535,3}},base=28196,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Pet: Magic Attack Bonus/-
[204]={trade={28196,4035,{65535,4}},base=28196,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Pet: Magic Accuracy/-
[205]={trade={28196,4035,{65535,5}},base=28196,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Pet: Attack/Ranged Attack/-
[206]={trade={28196,4035,{65535,6}},base=28196,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/-
[207]={trade={28196,4035,{65535,7}},base=28196,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Avatar Perpetuation Cost-/-
[208]={trade={28196,4035,{65535,8}},base=28196,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Enmity-/-
[209]={trade={28196,4035,{65535,9}},base=28196,aug1=54,aug1MAX=3,aug2=140,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Fast Cast/-
[210]={trade={28196,4035,{65535,10}},base=28196,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Pants/Physical Damage Taken-/Magic Burst Damage/-
[211]={trade={28336,4035,{65535,1}},base=28336,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Magic Attack Bonus/-
[212]={trade={28336,4035,{65535,2}},base=28336,aug1=54,aug1MAX=3,aug2=35,aug2MAX=25,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Magic Accuracy/-
[213]={trade={28336,4035,{65535,3}},base=28336,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Pet: Magic Attack Bonus/-
[214]={trade={28336,4035,{65535,4}},base=28336,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Pet: Magic Accuracy/-
[215]={trade={28336,4035,{65535,5}},base=28336,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Pet: Attack/Ranged Attack/-
[216]={trade={28336,4035,{65535,6}},base=28336,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/-
[217]={trade={28336,4035,{65535,7}},base=28336,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Avatar Perpetuation Cost-/-
[218]={trade={28336,4035,{65535,8}},base=28336,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Enmity-/-
[219]={trade={28336,4035,{65535,9}},base=28336,aug1=54,aug1MAX=3,aug2=140,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Fast Cast/-
[220]={trade={28336,4035,{65535,10}},base=28336,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Hagondes Sabots/Physical Damage Taken-/Magic Burst Damage/-
[221]={trade={27732,3953,{65535,1}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=35,aug3MAX=29,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Accuracy
[222]={trade={27732,3953,{65535,2}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Attack Bonus
[223]={trade={27732,3953,{65535,3}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Accuracy
[224]={trade={27732,3953,{65535,4}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Attack/Ranged Attack
[225]={trade={27732,3953,{65535,5}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[226]={trade={27732,3953,{65535,6}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Avatar Perpetuation Cost-
[227]={trade={27732,3953,{65535,7}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Enmity-
[228]={trade={27732,3953,{65535,8}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Fast Cast
[229]={trade={27732,3953,{65535,9}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Burst Damage
[230]={trade={27732,3953,{65535,10}},base=27732,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Damage Taken -
[231]={trade={27732,3953,{65535,11}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Attack Bonus
[232]={trade={27732,3953,{65535,12}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Accuracy
[233]={trade={27732,3953,{65535,13}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Pet: Attack/Ranged Attack
[234]={trade={27732,3953,{65535,14}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[235]={trade={27732,3953,{65535,15}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Avatar Perpetuation Cost-
[236]={trade={27732,3953,{65535,16}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Enmity-
[237]={trade={27732,3953,{65535,17}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Fast Cast
[238]={trade={27732,3953,{65535,18}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Magic Burst Damage
[239]={trade={27732,3953,{65535,19}},base=27732,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Accuracy/Magic Damage Taken -
[240]={trade={27732,3953,{65535,20}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=100,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Magic Accuracy
[241]={trade={27732,3953,{65535,21}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Attack/Ranged Attack
[242]={trade={27732,3953,{65535,22}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[243]={trade={27732,3953,{65535,23}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Avatar Perpetuation Cost-
[244]={trade={27732,3953,{65535,24}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Enmity-
[245]={trade={27732,3953,{65535,25}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Fast Cast
[246]={trade={27732,3953,{65535,26}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Burst Damage
[247]={trade={27732,3953,{65535,27}},base=27732,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Damage Taken -
[248]={trade={27732,3953,{65535,28}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Attack/Ranged Attack
[249]={trade={27732,3953,{65535,29}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[250]={trade={27732,3953,{65535,30}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Avatar Perpetuation Cost-
[251]={trade={27732,3953,{65535,31}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Enmity-
[252]={trade={27732,3953,{65535,32}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Fast Cast
[253]={trade={27732,3953,{65535,33}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Burst Damage
[254]={trade={27732,3953,{65535,34}},base=27732,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Damage Taken -
[255]={trade={27732,3953,{65535,35}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Pet: Accuracy/Ranged Accuracy
[256]={trade={27732,3953,{65535,36}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Avatar Perpetuation Cost-
[257]={trade={27732,3953,{65535,37}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Enmity-
[258]={trade={27732,3953,{65535,38}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Fast Cast
[259]={trade={27732,3953,{65535,39}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Burst Damage
[260]={trade={27732,3953,{65535,40}},base=27732,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Damage Taken -
[261]={trade={27732,3953,{65535,41}},base=27732,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=321,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Avatar Perpetuation Cost-
[262]={trade={27732,3953,{65535,42}},base=27732,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Enmity-
[263]={trade={27732,3953,{65535,43}},base=27732,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Fast Cast
[264]={trade={27732,3953,{65535,44}},base=27732,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Burst Damage
[265]={trade={27732,3953,{65535,45}},base=27732,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Damage Taken -
[266]={trade={27732,3953,{65535,46}},base=27732,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=40,aug3MAX=5,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Enmity-
[267]={trade={27732,3953,{65535,47}},base=27732,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Fast Cast
[268]={trade={27732,3953,{65535,48}},base=27732,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Burst Damage
[269]={trade={27732,3953,{65535,49}},base=27732,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Damage Taken -
[270]={trade={27732,3953,{65535,50}},base=27732,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=140,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Enmity-/Fast Cast
[271]={trade={27732,3953,{65535,51}},base=27732,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Enmity-/Magic Burst Damage
[272]={trade={27732,3953,{65535,52}},base=27732,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Enmity-/Magic Damage Taken -
[273]={trade={27732,3953,{65535,53}},base=27732,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Fast Cast/Magic Burst Damage
[274]={trade={27732,3953,{65535,54}},base=27732,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Fast Cast/Magic Damage Taken -
[275]={trade={27732,3953,{65535,55}},base=27732,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Hagondes Hat +1/Physical Damage Taken-/Magic Burst Damage/Magic Damage Taken -
[276]={trade={27878,3953,{65535,1}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=35,aug3MAX=29,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Accuracy
[277]={trade={27878,3953,{65535,2}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Attack Bonus
[278]={trade={27878,3953,{65535,3}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Accuracy
[279]={trade={27878,3953,{65535,4}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Attack/Ranged Attack
[280]={trade={27878,3953,{65535,5}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[281]={trade={27878,3953,{65535,6}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Avatar Perpetuation Cost-
[282]={trade={27878,3953,{65535,7}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Enmity-
[283]={trade={27878,3953,{65535,8}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Fast Cast
[284]={trade={27878,3953,{65535,9}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Burst Damage
[285]={trade={27878,3953,{65535,10}},base=27878,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Attack Bonus/Magic Damage Taken -
[286]={trade={27878,3953,{65535,11}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Attack Bonus
[287]={trade={27878,3953,{65535,12}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Accuracy
[288]={trade={27878,3953,{65535,13}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Pet: Attack/Ranged Attack
[289]={trade={27878,3953,{65535,14}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[290]={trade={27878,3953,{65535,15}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Avatar Perpetuation Cost-
[291]={trade={27878,3953,{65535,16}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Enmity-
[292]={trade={27878,3953,{65535,17}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Fast Cast
[293]={trade={27878,3953,{65535,18}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Magic Burst Damage
[294]={trade={27878,3953,{65535,19}},base=27878,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Accuracy/Magic Damage Taken -
[295]={trade={27878,3953,{65535,20}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=100,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Magic Accuracy
[296]={trade={27878,3953,{65535,21}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Attack/Ranged Attack
[297]={trade={27878,3953,{65535,22}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[298]={trade={27878,3953,{65535,23}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Avatar Perpetuation Cost-
[299]={trade={27878,3953,{65535,24}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Enmity-
[300]={trade={27878,3953,{65535,25}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Fast Cast
[301]={trade={27878,3953,{65535,26}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Burst Damage
[302]={trade={27878,3953,{65535,27}},base=27878,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Damage Taken -
[303]={trade={27878,3953,{65535,28}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Attack/Ranged Attack
[304]={trade={27878,3953,{65535,29}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[305]={trade={27878,3953,{65535,30}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Avatar Perpetuation Cost-
[306]={trade={27878,3953,{65535,31}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Enmity-
[307]={trade={27878,3953,{65535,32}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Fast Cast
[308]={trade={27878,3953,{65535,33}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Burst Damage
[309]={trade={27878,3953,{65535,34}},base=27878,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Damage Taken -
[310]={trade={27878,3953,{65535,35}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Pet: Accuracy/Ranged Accuracy
[311]={trade={27878,3953,{65535,36}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Avatar Perpetuation Cost-
[312]={trade={27878,3953,{65535,37}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Enmity-
[313]={trade={27878,3953,{65535,38}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Fast Cast
[314]={trade={27878,3953,{65535,39}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Burst Damage
[315]={trade={27878,3953,{65535,40}},base=27878,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Damage Taken -
[316]={trade={27878,3953,{65535,41}},base=27878,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=321,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Avatar Perpetuation Cost-
[317]={trade={27878,3953,{65535,42}},base=27878,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Enmity-
[318]={trade={27878,3953,{65535,43}},base=27878,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Fast Cast
[319]={trade={27878,3953,{65535,44}},base=27878,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Burst Damage
[320]={trade={27878,3953,{65535,45}},base=27878,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Damage Taken -
[321]={trade={27878,3953,{65535,46}},base=27878,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=40,aug3MAX=5,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Enmity-
[322]={trade={27878,3953,{65535,47}},base=27878,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Fast Cast
[323]={trade={27878,3953,{65535,48}},base=27878,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Burst Damage
[324]={trade={27878,3953,{65535,49}},base=27878,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Damage Taken -
[325]={trade={27878,3953,{65535,50}},base=27878,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=140,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Enmity-/Fast Cast
[326]={trade={27878,3953,{65535,51}},base=27878,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Enmity-/Magic Burst Damage
[327]={trade={27878,3953,{65535,52}},base=27878,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Enmity-/Magic Damage Taken -
[328]={trade={27878,3953,{65535,53}},base=27878,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Fast Cast/Magic Burst Damage
[329]={trade={27878,3953,{65535,54}},base=27878,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Fast Cast/Magic Damage Taken -
[330]={trade={27878,3953,{65535,55}},base=27878,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Hagondes Coat +1/Physical Damage Taken-/Magic Burst Damage/Magic Damage Taken -
[331]={trade={28022,3953,{65535,1}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=35,aug3MAX=29,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Magic Accuracy
[332]={trade={28022,3953,{65535,2}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Attack Bonus
[333]={trade={28022,3953,{65535,3}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Accuracy
[334]={trade={28022,3953,{65535,4}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Attack/Ranged Attack
[335]={trade={28022,3953,{65535,5}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[336]={trade={28022,3953,{65535,6}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Avatar Perpetuation Cost-
[337]={trade={28022,3953,{65535,7}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Enmity-
[338]={trade={28022,3953,{65535,8}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Fast Cast
[339]={trade={28022,3953,{65535,9}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Magic Burst Damage
[340]={trade={28022,3953,{65535,10}},base=28022,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Attack Bonus/Magic Damage Taken -
[341]={trade={28022,3953,{65535,11}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Attack Bonus
[342]={trade={28022,3953,{65535,12}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Accuracy
[343]={trade={28022,3953,{65535,13}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Pet: Attack/Ranged Attack
[344]={trade={28022,3953,{65535,14}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[345]={trade={28022,3953,{65535,15}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Avatar Perpetuation Cost-
[346]={trade={28022,3953,{65535,16}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Enmity-
[347]={trade={28022,3953,{65535,17}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Fast Cast
[348]={trade={28022,3953,{65535,18}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Magic Burst Damage
[349]={trade={28022,3953,{65535,19}},base=28022,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Accuracy/Magic Damage Taken -
[350]={trade={28022,3953,{65535,20}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=100,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Magic Accuracy
[351]={trade={28022,3953,{65535,21}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Attack/Ranged Attack
[352]={trade={28022,3953,{65535,22}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[353]={trade={28022,3953,{65535,23}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Avatar Perpetuation Cost-
[354]={trade={28022,3953,{65535,24}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Enmity-
[355]={trade={28022,3953,{65535,25}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Fast Cast
[356]={trade={28022,3953,{65535,26}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Burst Damage
[357]={trade={28022,3953,{65535,27}},base=28022,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Damage Taken -
[358]={trade={28022,3953,{65535,28}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Attack/Ranged Attack
[359]={trade={28022,3953,{65535,29}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[360]={trade={28022,3953,{65535,30}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Avatar Perpetuation Cost-
[361]={trade={28022,3953,{65535,31}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Enmity-
[362]={trade={28022,3953,{65535,32}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Fast Cast
[363]={trade={28022,3953,{65535,33}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Burst Damage
[364]={trade={28022,3953,{65535,34}},base=28022,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Damage Taken -
[365]={trade={28022,3953,{65535,35}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Pet: Accuracy/Ranged Accuracy
[366]={trade={28022,3953,{65535,36}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Avatar Perpetuation Cost-
[367]={trade={28022,3953,{65535,37}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Enmity-
[368]={trade={28022,3953,{65535,38}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Fast Cast
[369]={trade={28022,3953,{65535,39}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Burst Damage
[370]={trade={28022,3953,{65535,40}},base=28022,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Damage Taken -
[371]={trade={28022,3953,{65535,41}},base=28022,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=321,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Avatar Perpetuation Cost-
[372]={trade={28022,3953,{65535,42}},base=28022,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Enmity-
[373]={trade={28022,3953,{65535,43}},base=28022,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Fast Cast
[374]={trade={28022,3953,{65535,44}},base=28022,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Burst Damage
[375]={trade={28022,3953,{65535,45}},base=28022,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Damage Taken -
[376]={trade={28022,3953,{65535,46}},base=28022,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=40,aug3MAX=5,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Enmity-
[377]={trade={28022,3953,{65535,47}},base=28022,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Fast Cast
[378]={trade={28022,3953,{65535,48}},base=28022,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Burst Damage
[379]={trade={28022,3953,{65535,49}},base=28022,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Damage Taken -
[380]={trade={28022,3953,{65535,50}},base=28022,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=140,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Enmity-/Fast Cast
[381]={trade={28022,3953,{65535,51}},base=28022,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Enmity-/Magic Burst Damage
[382]={trade={28022,3953,{65535,52}},base=28022,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Enmity-/Magic Damage Taken -
[383]={trade={28022,3953,{65535,53}},base=28022,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Fast Cast/Magic Burst Damage
[384]={trade={28022,3953,{65535,54}},base=28022,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Fast Cast/Magic Damage Taken -
[385]={trade={28022,3953,{65535,55}},base=28022,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Hagondes Cuffs +1/Physical Damage Taken-/Magic Burst Damage/Magic Damage Taken -
[386]={trade={28164,3953,{65535,1}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=35,aug3MAX=29,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Magic Accuracy
[387]={trade={28164,3953,{65535,2}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Attack Bonus
[388]={trade={28164,3953,{65535,3}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Accuracy
[389]={trade={28164,3953,{65535,4}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Attack/Ranged Attack
[390]={trade={28164,3953,{65535,5}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[391]={trade={28164,3953,{65535,6}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Avatar Perpetuation Cost-
[392]={trade={28164,3953,{65535,7}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Enmity-
[393]={trade={28164,3953,{65535,8}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Fast Cast
[394]={trade={28164,3953,{65535,9}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Magic Burst Damage
[395]={trade={28164,3953,{65535,10}},base=28164,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Attack Bonus/Magic Damage Taken -
[396]={trade={28164,3953,{65535,11}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Attack Bonus
[397]={trade={28164,3953,{65535,12}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Accuracy
[398]={trade={28164,3953,{65535,13}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Pet: Attack/Ranged Attack
[399]={trade={28164,3953,{65535,14}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[400]={trade={28164,3953,{65535,15}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Avatar Perpetuation Cost-
[401]={trade={28164,3953,{65535,16}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Enmity-
[402]={trade={28164,3953,{65535,17}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Fast Cast
[403]={trade={28164,3953,{65535,18}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Magic Burst Damage
[404]={trade={28164,3953,{65535,19}},base=28164,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Accuracy/Magic Damage Taken -
[405]={trade={28164,3953,{65535,20}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=100,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Magic Accuracy
[406]={trade={28164,3953,{65535,21}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Attack/Ranged Attack
[407]={trade={28164,3953,{65535,22}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[408]={trade={28164,3953,{65535,23}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Avatar Perpetuation Cost-
[409]={trade={28164,3953,{65535,24}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Enmity-
[410]={trade={28164,3953,{65535,25}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Fast Cast
[411]={trade={28164,3953,{65535,26}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Burst Damage
[412]={trade={28164,3953,{65535,27}},base=28164,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Damage Taken -
[413]={trade={28164,3953,{65535,28}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Attack/Ranged Attack
[414]={trade={28164,3953,{65535,29}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[415]={trade={28164,3953,{65535,30}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Avatar Perpetuation Cost-
[416]={trade={28164,3953,{65535,31}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Enmity-
[417]={trade={28164,3953,{65535,32}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Fast Cast
[418]={trade={28164,3953,{65535,33}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Burst Damage
[419]={trade={28164,3953,{65535,34}},base=28164,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Damage Taken -
[420]={trade={28164,3953,{65535,35}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Pet: Accuracy/Ranged Accuracy
[421]={trade={28164,3953,{65535,36}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Avatar Perpetuation Cost-
[422]={trade={28164,3953,{65535,37}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Enmity-
[423]={trade={28164,3953,{65535,38}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Fast Cast
[424]={trade={28164,3953,{65535,39}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Burst Damage
[425]={trade={28164,3953,{65535,40}},base=28164,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Damage Taken -
[426]={trade={28164,3953,{65535,41}},base=28164,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=321,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Avatar Perpetuation Cost-
[427]={trade={28164,3953,{65535,42}},base=28164,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Enmity-
[428]={trade={28164,3953,{65535,43}},base=28164,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Fast Cast
[429]={trade={28164,3953,{65535,44}},base=28164,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Burst Damage
[430]={trade={28164,3953,{65535,45}},base=28164,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Damage Taken -
[431]={trade={28164,3953,{65535,46}},base=28164,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=40,aug3MAX=5,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Enmity-
[432]={trade={28164,3953,{65535,47}},base=28164,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Fast Cast
[433]={trade={28164,3953,{65535,48}},base=28164,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Burst Damage
[434]={trade={28164,3953,{65535,49}},base=28164,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Damage Taken -
[435]={trade={28164,3953,{65535,50}},base=28164,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=140,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Enmity-/Fast Cast
[436]={trade={28164,3953,{65535,51}},base=28164,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Enmity-/Magic Burst Damage
[437]={trade={28164,3953,{65535,52}},base=28164,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Enmity-/Magic Damage Taken -
[438]={trade={28164,3953,{65535,53}},base=28164,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Fast Cast/Magic Burst Damage
[439]={trade={28164,3953,{65535,54}},base=28164,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Fast Cast/Magic Damage Taken -
[440]={trade={28164,3953,{65535,55}},base=28164,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Hagondes Pants +1/Physical Damage Taken-/Magic Burst Damage/Magic Damage Taken -
[441]={trade={28301,3953,{65535,1}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=35,aug3MAX=29,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Magic Accuracy
[442]={trade={28301,3953,{65535,2}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Attack Bonus
[443]={trade={28301,3953,{65535,3}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Magic Accuracy
[444]={trade={28301,3953,{65535,4}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Attack/Ranged Attack
[445]={trade={28301,3953,{65535,5}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[446]={trade={28301,3953,{65535,6}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Avatar Perpetuation Cost-
[447]={trade={28301,3953,{65535,7}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Enmity-
[448]={trade={28301,3953,{65535,8}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Fast Cast
[449]={trade={28301,3953,{65535,9}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Magic Burst Damage
[450]={trade={28301,3953,{65535,10}},base=28301,aug1=54,aug1MAX=3,aug2=133,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Attack Bonus/Magic Damage Taken -
[451]={trade={28301,3953,{65535,11}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=101,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Attack Bonus
[452]={trade={28301,3953,{65535,12}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=100,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Pet: Magic Accuracy
[453]={trade={28301,3953,{65535,13}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=97,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Pet: Attack/Ranged Attack
[454]={trade={28301,3953,{65535,14}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=96,aug3MAX=23,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[455]={trade={28301,3953,{65535,15}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Avatar Perpetuation Cost-
[456]={trade={28301,3953,{65535,16}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Enmity-
[457]={trade={28301,3953,{65535,17}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Fast Cast
[458]={trade={28301,3953,{65535,18}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Magic Burst Damage
[459]={trade={28301,3953,{65535,19}},base=28301,aug1=54,aug1MAX=3,aug2=35,aug2MAX=29,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Accuracy/Magic Damage Taken -
[460]={trade={28301,3953,{65535,20}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=100,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Magic Accuracy
[461]={trade={28301,3953,{65535,21}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Attack/Ranged Attack
[462]={trade={28301,3953,{65535,22}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Pet: Accuracy/Ranged Accuracy
[463]={trade={28301,3953,{65535,23}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Avatar Perpetuation Cost-
[464]={trade={28301,3953,{65535,24}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Enmity-
[465]={trade={28301,3953,{65535,25}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Fast Cast
[466]={trade={28301,3953,{65535,26}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Burst Damage
[467]={trade={28301,3953,{65535,27}},base=28301,aug1=54,aug1MAX=3,aug2=101,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Attack Bonus/Magic Damage Taken -
[468]={trade={28301,3953,{65535,28}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=97,aug3MAX=24,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Attack/Ranged Attack
[469]={trade={28301,3953,{65535,29}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Pet: Accuracy/Ranged Accuracy
[470]={trade={28301,3953,{65535,30}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Avatar Perpetuation Cost-
[471]={trade={28301,3953,{65535,31}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Enmity-
[472]={trade={28301,3953,{65535,32}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Fast Cast
[473]={trade={28301,3953,{65535,33}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Burst Damage
[474]={trade={28301,3953,{65535,34}},base=28301,aug1=54,aug1MAX=3,aug2=100,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Magic Accuracy/Magic Damage Taken -
[475]={trade={28301,3953,{65535,35}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=96,aug3MAX=23,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Pet: Accuracy/Ranged Accuracy
[476]={trade={28301,3953,{65535,36}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Avatar Perpetuation Cost-
[477]={trade={28301,3953,{65535,37}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Enmity-
[478]={trade={28301,3953,{65535,38}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Fast Cast
[479]={trade={28301,3953,{65535,39}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Burst Damage
[480]={trade={28301,3953,{65535,40}},base=28301,aug1=54,aug1MAX=3,aug2=97,aug2MAX=24,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Attack/Ranged Attack/Magic Damage Taken -
[481]={trade={28301,3953,{65535,41}},base=28301,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=321,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Avatar Perpetuation Cost-
[482]={trade={28301,3953,{65535,42}},base=28301,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Enmity-
[483]={trade={28301,3953,{65535,43}},base=28301,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Fast Cast
[484]={trade={28301,3953,{65535,44}},base=28301,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Burst Damage
[485]={trade={28301,3953,{65535,45}},base=28301,aug1=54,aug1MAX=3,aug2=96,aug2MAX=23,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Pet: Accuracy/Ranged Accuracy/Magic Damage Taken -
[486]={trade={28301,3953,{65535,46}},base=28301,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=40,aug3MAX=5,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Enmity-
[487]={trade={28301,3953,{65535,47}},base=28301,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Fast Cast
[488]={trade={28301,3953,{65535,48}},base=28301,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Burst Damage
[489]={trade={28301,3953,{65535,49}},base=28301,aug1=54,aug1MAX=3,aug2=321,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Avatar Perpetuation Cost-/Magic Damage Taken -
[490]={trade={28301,3953,{65535,50}},base=28301,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=140,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Enmity-/Fast Cast
[491]={trade={28301,3953,{65535,51}},base=28301,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Enmity-/Magic Burst Damage
[492]={trade={28301,3953,{65535,52}},base=28301,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Enmity-/Magic Damage Taken -
[493]={trade={28301,3953,{65535,53}},base=28301,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=334,aug3MAX=9,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Fast Cast/Magic Burst Damage
[494]={trade={28301,3953,{65535,54}},base=28301,aug1=54,aug1MAX=3,aug2=140,aug2MAX=4,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Fast Cast/Magic Damage Taken -
[495]={trade={28301,3953,{65535,55}},base=28301,aug1=54,aug1MAX=3,aug2=334,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Hagondes Sabots +1/Physical Damage Taken-/Magic Burst Damage/Magic Damage Taken -
[496]={trade={27770,4035,{65535,1}},base=27770,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Attack/-
[497]={trade={27770,4035,{65535,2}},base=27770,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Accuracy/-
[498]={trade={27770,4035,{65535,3}},base=27770,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Ranged Attack/-
[499]={trade={27770,4035,{65535,4}},base=27770,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Ranged Accuracy/-
[500]={trade={27770,4035,{65535,5}},base=27770,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Snapshot/-
[501]={trade={27770,4035,{65535,6}},base=27770,aug1=54,aug1MAX=3,aug2=212,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Recycle/-
[502]={trade={27770,4035,{65535,7}},base=27770,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Double Attack/-
[503]={trade={27770,4035,{65535,8}},base=27770,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Critical Hit Rate/-
[504]={trade={27770,4035,{65535,9}},base=27770,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Enmity-/-
[505]={trade={27770,4035,{65535,10}},base=27770,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Headgear/Physical Damage Taken-/Magic Defense Bonus/-
[506]={trade={27914,4035,{65535,1}},base=27914,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Attack/-
[507]={trade={27914,4035,{65535,2}},base=27914,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Accuracy/-
[508]={trade={27914,4035,{65535,3}},base=27914,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Ranged Attack/-
[509]={trade={27914,4035,{65535,4}},base=27914,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Ranged Accuracy/-
[510]={trade={27914,4035,{65535,5}},base=27914,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Snapshot/-
[511]={trade={27914,4035,{65535,6}},base=27914,aug1=54,aug1MAX=3,aug2=212,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Recycle/-
[512]={trade={27914,4035,{65535,7}},base=27914,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Double Attack/-
[513]={trade={27914,4035,{65535,8}},base=27914,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Critical Hit Rate/-
[514]={trade={27914,4035,{65535,9}},base=27914,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Enmity-/-
[515]={trade={27914,4035,{65535,10}},base=27914,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Vest/Physical Damage Taken-/Magic Defense Bonus/-
[516]={trade={28053,4035,{65535,1}},base=28053,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Attack/-
[517]={trade={28053,4035,{65535,2}},base=28053,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Accuracy/-
[518]={trade={28053,4035,{65535,3}},base=28053,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Ranged Attack/-
[519]={trade={28053,4035,{65535,4}},base=28053,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Ranged Accuracy/-
[520]={trade={28053,4035,{65535,5}},base=28053,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Snapshot/-
[521]={trade={28053,4035,{65535,6}},base=28053,aug1=54,aug1MAX=3,aug2=212,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Recycle/-
[522]={trade={28053,4035,{65535,7}},base=28053,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Double Attack/-
[523]={trade={28053,4035,{65535,8}},base=28053,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Critical Hit Rate/-
[524]={trade={28053,4035,{65535,9}},base=28053,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Enmity-/-
[525]={trade={28053,4035,{65535,10}},base=28053,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Wristbands/Physical Damage Taken-/Magic Defense Bonus/-
[526]={trade={28194,4035,{65535,1}},base=28194,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Attack/-
[527]={trade={28194,4035,{65535,2}},base=28194,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Accuracy/-
[528]={trade={28194,4035,{65535,3}},base=28194,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Ranged Attack/-
[529]={trade={28194,4035,{65535,4}},base=28194,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Ranged Accuracy/-
[530]={trade={28194,4035,{65535,5}},base=28194,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Snapshot/-
[531]={trade={28194,4035,{65535,6}},base=28194,aug1=54,aug1MAX=3,aug2=212,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Recycle/-
[532]={trade={28194,4035,{65535,7}},base=28194,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Double Attack/-
[533]={trade={28194,4035,{65535,8}},base=28194,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Critical Hit Rate/-
[534]={trade={28194,4035,{65535,9}},base=28194,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Enmity-/-
[535]={trade={28194,4035,{65535,10}},base=28194,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Tights/Physical Damage Taken-/Magic Defense Bonus/-
[536]={trade={28334,4035,{65535,1}},base=28334,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Attack/-
[537]={trade={28334,4035,{65535,2}},base=28334,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Accuracy/-
[538]={trade={28334,4035,{65535,3}},base=28334,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Ranged Attack/-
[539]={trade={28334,4035,{65535,4}},base=28334,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Ranged Accuracy/-
[540]={trade={28334,4035,{65535,5}},base=28334,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Snapshot/-
[541]={trade={28334,4035,{65535,6}},base=28334,aug1=54,aug1MAX=3,aug2=212,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Recycle/-
[542]={trade={28334,4035,{65535,7}},base=28334,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Double Attack/-
[543]={trade={28334,4035,{65535,8}},base=28334,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Critical Hit Rate/-
[544]={trade={28334,4035,{65535,9}},base=28334,aug1=54,aug1MAX=3,aug2=40,aug2MAX=5,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Enmity-/-
[545]={trade={28334,4035,{65535,10}},base=28334,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Iuitl Gaiters/Physical Damage Taken-/Magic Defense Bonus/-
[546]={trade={27730,3953,{65535,1}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Accuracy
[547]={trade={27730,3953,{65535,2}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Ranged Attack
[548]={trade={27730,3953,{65535,3}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Ranged Accuracy
[549]={trade={27730,3953,{65535,4}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Snapshot
[550]={trade={27730,3953,{65535,5}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Recycle
[551]={trade={27730,3953,{65535,6}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Double Attack
[552]={trade={27730,3953,{65535,7}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Critical Hit Rate
[553]={trade={27730,3953,{65535,8}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Enmity-
[554]={trade={27730,3953,{65535,9}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[555]={trade={27730,3953,{65535,10}},base=27730,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Attack/Magic Damage Taken-
[556]={trade={27730,3953,{65535,11}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Ranged Attack
[557]={trade={27730,3953,{65535,12}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Ranged Accuracy
[558]={trade={27730,3953,{65535,13}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Snapshot
[559]={trade={27730,3953,{65535,14}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Recycle
[560]={trade={27730,3953,{65535,15}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Double Attack
[561]={trade={27730,3953,{65535,16}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[562]={trade={27730,3953,{65535,17}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Enmity-
[563]={trade={27730,3953,{65535,18}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[564]={trade={27730,3953,{65535,19}},base=27730,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Accuracy/Magic Damage Taken-
[565]={trade={27730,3953,{65535,20}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Ranged Accuracy
[566]={trade={27730,3953,{65535,21}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Snapshot
[567]={trade={27730,3953,{65535,22}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Recycle
[568]={trade={27730,3953,{65535,23}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Double Attack
[569]={trade={27730,3953,{65535,24}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Critical Hit Rate
[570]={trade={27730,3953,{65535,25}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Enmity-
[571]={trade={27730,3953,{65535,26}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Magic Defense Bonus
[572]={trade={27730,3953,{65535,27}},base=27730,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Attack/Magic Damage Taken-
[573]={trade={27730,3953,{65535,28}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Snapshot
[574]={trade={27730,3953,{65535,29}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Recycle
[575]={trade={27730,3953,{65535,30}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Double Attack
[576]={trade={27730,3953,{65535,31}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Critical Hit Rate
[577]={trade={27730,3953,{65535,32}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Enmity-
[578]={trade={27730,3953,{65535,33}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Magic Defense Bonus
[579]={trade={27730,3953,{65535,34}},base=27730,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Ranged Accuracy/Magic Damage Taken-
[580]={trade={27730,3953,{65535,35}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=212,aug3MAX=2,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Recycle
[581]={trade={27730,3953,{65535,36}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Double Attack
[582]={trade={27730,3953,{65535,37}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Critical Hit Rate
[583]={trade={27730,3953,{65535,38}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Enmity-
[584]={trade={27730,3953,{65535,39}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Magic Defense Bonus
[585]={trade={27730,3953,{65535,40}},base=27730,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Snapshot/Magic Damage Taken-
[586]={trade={27730,3953,{65535,41}},base=27730,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Recycle/Double Attack
[587]={trade={27730,3953,{65535,42}},base=27730,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Recycle/Critical Hit Rate
[588]={trade={27730,3953,{65535,43}},base=27730,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Recycle/Enmity-
[589]={trade={27730,3953,{65535,44}},base=27730,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Recycle/Magic Defense Bonus
[590]={trade={27730,3953,{65535,45}},base=27730,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Recycle/Magic Damage Taken-
[591]={trade={27730,3953,{65535,46}},base=27730,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[592]={trade={27730,3953,{65535,47}},base=27730,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Double Attack/Enmity-
[593]={trade={27730,3953,{65535,48}},base=27730,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[594]={trade={27730,3953,{65535,49}},base=27730,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Double Attack/Magic Damage Taken-
[595]={trade={27730,3953,{65535,50}},base=27730,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Critical Hit Rate/Enmity-
[596]={trade={27730,3953,{65535,51}},base=27730,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[597]={trade={27730,3953,{65535,52}},base=27730,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken-
[598]={trade={27730,3953,{65535,53}},base=27730,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Enmity-/Magic Defense Bonus
[599]={trade={27730,3953,{65535,54}},base=27730,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Enmity-/Magic Damage Taken-
[600]={trade={27730,3953,{65535,55}},base=27730,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Headgear +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken-
[601]={trade={27876,3953,{65535,1}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Accuracy
[602]={trade={27876,3953,{65535,2}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Ranged Attack
[603]={trade={27876,3953,{65535,3}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Ranged Accuracy
[604]={trade={27876,3953,{65535,4}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Snapshot
[605]={trade={27876,3953,{65535,5}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Recycle
[606]={trade={27876,3953,{65535,6}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Double Attack
[607]={trade={27876,3953,{65535,7}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Critical Hit Rate
[608]={trade={27876,3953,{65535,8}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Enmity-
[609]={trade={27876,3953,{65535,9}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[610]={trade={27876,3953,{65535,10}},base=27876,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Attack/Magic Damage Taken-
[611]={trade={27876,3953,{65535,11}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Ranged Attack
[612]={trade={27876,3953,{65535,12}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Ranged Accuracy
[613]={trade={27876,3953,{65535,13}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Snapshot
[614]={trade={27876,3953,{65535,14}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Recycle
[615]={trade={27876,3953,{65535,15}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Double Attack
[616]={trade={27876,3953,{65535,16}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[617]={trade={27876,3953,{65535,17}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Enmity-
[618]={trade={27876,3953,{65535,18}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[619]={trade={27876,3953,{65535,19}},base=27876,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Accuracy/Magic Damage Taken-
[620]={trade={27876,3953,{65535,20}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Ranged Accuracy
[621]={trade={27876,3953,{65535,21}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Snapshot
[622]={trade={27876,3953,{65535,22}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Recycle
[623]={trade={27876,3953,{65535,23}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Double Attack
[624]={trade={27876,3953,{65535,24}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Critical Hit Rate
[625]={trade={27876,3953,{65535,25}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Enmity-
[626]={trade={27876,3953,{65535,26}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Magic Defense Bonus
[627]={trade={27876,3953,{65535,27}},base=27876,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Attack/Magic Damage Taken-
[628]={trade={27876,3953,{65535,28}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Snapshot
[629]={trade={27876,3953,{65535,29}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Recycle
[630]={trade={27876,3953,{65535,30}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Double Attack
[631]={trade={27876,3953,{65535,31}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Critical Hit Rate
[632]={trade={27876,3953,{65535,32}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Enmity-
[633]={trade={27876,3953,{65535,33}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Magic Defense Bonus
[634]={trade={27876,3953,{65535,34}},base=27876,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Ranged Accuracy/Magic Damage Taken-
[635]={trade={27876,3953,{65535,35}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=212,aug3MAX=2,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Recycle
[636]={trade={27876,3953,{65535,36}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Double Attack
[637]={trade={27876,3953,{65535,37}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Critical Hit Rate
[638]={trade={27876,3953,{65535,38}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Enmity-
[639]={trade={27876,3953,{65535,39}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Magic Defense Bonus
[640]={trade={27876,3953,{65535,40}},base=27876,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Snapshot/Magic Damage Taken-
[641]={trade={27876,3953,{65535,41}},base=27876,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Recycle/Double Attack
[642]={trade={27876,3953,{65535,42}},base=27876,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Recycle/Critical Hit Rate
[643]={trade={27876,3953,{65535,43}},base=27876,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Recycle/Enmity-
[644]={trade={27876,3953,{65535,44}},base=27876,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Recycle/Magic Defense Bonus
[645]={trade={27876,3953,{65535,45}},base=27876,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Recycle/Magic Damage Taken-
[646]={trade={27876,3953,{65535,46}},base=27876,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[647]={trade={27876,3953,{65535,47}},base=27876,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Double Attack/Enmity-
[648]={trade={27876,3953,{65535,48}},base=27876,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[649]={trade={27876,3953,{65535,49}},base=27876,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Double Attack/Magic Damage Taken-
[650]={trade={27876,3953,{65535,50}},base=27876,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Critical Hit Rate/Enmity-
[651]={trade={27876,3953,{65535,51}},base=27876,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[652]={trade={27876,3953,{65535,52}},base=27876,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken-
[653]={trade={27876,3953,{65535,53}},base=27876,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Enmity-/Magic Defense Bonus
[654]={trade={27876,3953,{65535,54}},base=27876,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Enmity-/Magic Damage Taken-
[655]={trade={27876,3953,{65535,55}},base=27876,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Vest +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken-
[656]={trade={28020,3953,{65535,1}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Accuracy
[657]={trade={28020,3953,{65535,2}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Ranged Attack
[658]={trade={28020,3953,{65535,3}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Ranged Accuracy
[659]={trade={28020,3953,{65535,4}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Snapshot
[660]={trade={28020,3953,{65535,5}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Recycle
[661]={trade={28020,3953,{65535,6}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Double Attack
[662]={trade={28020,3953,{65535,7}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Critical Hit Rate
[663]={trade={28020,3953,{65535,8}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Enmity-
[664]={trade={28020,3953,{65535,9}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[665]={trade={28020,3953,{65535,10}},base=28020,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Attack/Magic Damage Taken-
[666]={trade={28020,3953,{65535,11}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Ranged Attack
[667]={trade={28020,3953,{65535,12}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Ranged Accuracy
[668]={trade={28020,3953,{65535,13}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Snapshot
[669]={trade={28020,3953,{65535,14}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Recycle
[670]={trade={28020,3953,{65535,15}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Double Attack
[671]={trade={28020,3953,{65535,16}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[672]={trade={28020,3953,{65535,17}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Enmity-
[673]={trade={28020,3953,{65535,18}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[674]={trade={28020,3953,{65535,19}},base=28020,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Accuracy/Magic Damage Taken-
[675]={trade={28020,3953,{65535,20}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Ranged Accuracy
[676]={trade={28020,3953,{65535,21}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Snapshot
[677]={trade={28020,3953,{65535,22}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Recycle
[678]={trade={28020,3953,{65535,23}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Double Attack
[679]={trade={28020,3953,{65535,24}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Critical Hit Rate
[680]={trade={28020,3953,{65535,25}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Enmity-
[681]={trade={28020,3953,{65535,26}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Magic Defense Bonus
[682]={trade={28020,3953,{65535,27}},base=28020,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Attack/Magic Damage Taken-
[683]={trade={28020,3953,{65535,28}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Snapshot
[684]={trade={28020,3953,{65535,29}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Recycle
[685]={trade={28020,3953,{65535,30}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Double Attack
[686]={trade={28020,3953,{65535,31}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Critical Hit Rate
[687]={trade={28020,3953,{65535,32}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Enmity-
[688]={trade={28020,3953,{65535,33}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Magic Defense Bonus
[689]={trade={28020,3953,{65535,34}},base=28020,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Ranged Accuracy/Magic Damage Taken-
[690]={trade={28020,3953,{65535,35}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=212,aug3MAX=2,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Recycle
[691]={trade={28020,3953,{65535,36}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Double Attack
[692]={trade={28020,3953,{65535,37}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Critical Hit Rate
[693]={trade={28020,3953,{65535,38}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Enmity-
[694]={trade={28020,3953,{65535,39}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Magic Defense Bonus
[695]={trade={28020,3953,{65535,40}},base=28020,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Snapshot/Magic Damage Taken-
[696]={trade={28020,3953,{65535,41}},base=28020,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Recycle/Double Attack
[697]={trade={28020,3953,{65535,42}},base=28020,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Recycle/Critical Hit Rate
[698]={trade={28020,3953,{65535,43}},base=28020,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Recycle/Enmity-
[699]={trade={28020,3953,{65535,44}},base=28020,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Recycle/Magic Defense Bonus
[700]={trade={28020,3953,{65535,45}},base=28020,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Recycle/Magic Damage Taken-
[701]={trade={28020,3953,{65535,46}},base=28020,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[702]={trade={28020,3953,{65535,47}},base=28020,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Double Attack/Enmity-
[703]={trade={28020,3953,{65535,48}},base=28020,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[704]={trade={28020,3953,{65535,49}},base=28020,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Double Attack/Magic Damage Taken-
[705]={trade={28020,3953,{65535,50}},base=28020,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Critical Hit Rate/Enmity-
[706]={trade={28020,3953,{65535,51}},base=28020,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[707]={trade={28020,3953,{65535,52}},base=28020,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken-
[708]={trade={28020,3953,{65535,53}},base=28020,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Enmity-/Magic Defense Bonus
[709]={trade={28020,3953,{65535,54}},base=28020,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Enmity-/Magic Damage Taken-
[710]={trade={28020,3953,{65535,55}},base=28020,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Wristbands +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken-
[711]={trade={28162,3953,{65535,1}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Accuracy
[712]={trade={28162,3953,{65535,2}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Ranged Attack
[713]={trade={28162,3953,{65535,3}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Ranged Accuracy
[714]={trade={28162,3953,{65535,4}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Snapshot
[715]={trade={28162,3953,{65535,5}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Recycle
[716]={trade={28162,3953,{65535,6}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Double Attack
[717]={trade={28162,3953,{65535,7}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Critical Hit Rate
[718]={trade={28162,3953,{65535,8}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Enmity-
[719]={trade={28162,3953,{65535,9}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[720]={trade={28162,3953,{65535,10}},base=28162,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Attack/Magic Damage Taken-
[721]={trade={28162,3953,{65535,11}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Ranged Attack
[722]={trade={28162,3953,{65535,12}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Ranged Accuracy
[723]={trade={28162,3953,{65535,13}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Snapshot
[724]={trade={28162,3953,{65535,14}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Recycle
[725]={trade={28162,3953,{65535,15}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Double Attack
[726]={trade={28162,3953,{65535,16}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[727]={trade={28162,3953,{65535,17}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Enmity-
[728]={trade={28162,3953,{65535,18}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[729]={trade={28162,3953,{65535,19}},base=28162,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Accuracy/Magic Damage Taken-
[730]={trade={28162,3953,{65535,20}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Ranged Accuracy
[731]={trade={28162,3953,{65535,21}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Snapshot
[732]={trade={28162,3953,{65535,22}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Recycle
[733]={trade={28162,3953,{65535,23}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Double Attack
[734]={trade={28162,3953,{65535,24}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Critical Hit Rate
[735]={trade={28162,3953,{65535,25}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Enmity-
[736]={trade={28162,3953,{65535,26}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Magic Defense Bonus
[737]={trade={28162,3953,{65535,27}},base=28162,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Attack/Magic Damage Taken-
[738]={trade={28162,3953,{65535,28}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Snapshot
[739]={trade={28162,3953,{65535,29}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Recycle
[740]={trade={28162,3953,{65535,30}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Double Attack
[741]={trade={28162,3953,{65535,31}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Critical Hit Rate
[742]={trade={28162,3953,{65535,32}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Enmity-
[743]={trade={28162,3953,{65535,33}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Magic Defense Bonus
[744]={trade={28162,3953,{65535,34}},base=28162,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Ranged Accuracy/Magic Damage Taken-
[745]={trade={28162,3953,{65535,35}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=212,aug3MAX=2,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Recycle
[746]={trade={28162,3953,{65535,36}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Double Attack
[747]={trade={28162,3953,{65535,37}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Critical Hit Rate
[748]={trade={28162,3953,{65535,38}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Enmity-
[749]={trade={28162,3953,{65535,39}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Magic Defense Bonus
[750]={trade={28162,3953,{65535,40}},base=28162,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Snapshot/Magic Damage Taken-
[751]={trade={28162,3953,{65535,41}},base=28162,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Recycle/Double Attack
[752]={trade={28162,3953,{65535,42}},base=28162,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Recycle/Critical Hit Rate
[753]={trade={28162,3953,{65535,43}},base=28162,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Recycle/Enmity-
[754]={trade={28162,3953,{65535,44}},base=28162,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Recycle/Magic Defense Bonus
[755]={trade={28162,3953,{65535,45}},base=28162,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Recycle/Magic Damage Taken-
[756]={trade={28162,3953,{65535,46}},base=28162,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[757]={trade={28162,3953,{65535,47}},base=28162,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Double Attack/Enmity-
[758]={trade={28162,3953,{65535,48}},base=28162,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[759]={trade={28162,3953,{65535,49}},base=28162,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Double Attack/Magic Damage Taken-
[760]={trade={28162,3953,{65535,50}},base=28162,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Critical Hit Rate/Enmity-
[761]={trade={28162,3953,{65535,51}},base=28162,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[762]={trade={28162,3953,{65535,52}},base=28162,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken-
[763]={trade={28162,3953,{65535,53}},base=28162,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Enmity-/Magic Defense Bonus
[764]={trade={28162,3953,{65535,54}},base=28162,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Enmity-/Magic Damage Taken-
[765]={trade={28162,3953,{65535,55}},base=28162,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Tights +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken-
[766]={trade={28299,3953,{65535,1}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Accuracy
[767]={trade={28299,3953,{65535,2}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Ranged Attack
[768]={trade={28299,3953,{65535,3}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Ranged Accuracy
[769]={trade={28299,3953,{65535,4}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Snapshot
[770]={trade={28299,3953,{65535,5}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Recycle
[771]={trade={28299,3953,{65535,6}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Double Attack
[772]={trade={28299,3953,{65535,7}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Critical Hit Rate
[773]={trade={28299,3953,{65535,8}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Enmity-
[774]={trade={28299,3953,{65535,9}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[775]={trade={28299,3953,{65535,10}},base=28299,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Attack/Magic Damage Taken-
[776]={trade={28299,3953,{65535,11}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=29,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Ranged Attack
[777]={trade={28299,3953,{65535,12}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Ranged Accuracy
[778]={trade={28299,3953,{65535,13}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Snapshot
[779]={trade={28299,3953,{65535,14}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Recycle
[780]={trade={28299,3953,{65535,15}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Double Attack
[781]={trade={28299,3953,{65535,16}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[782]={trade={28299,3953,{65535,17}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Enmity-
[783]={trade={28299,3953,{65535,18}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[784]={trade={28299,3953,{65535,19}},base=28299,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Accuracy/Magic Damage Taken-
[785]={trade={28299,3953,{65535,20}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=27,aug3MAX=9,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Ranged Accuracy
[786]={trade={28299,3953,{65535,21}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Snapshot
[787]={trade={28299,3953,{65535,22}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Recycle
[788]={trade={28299,3953,{65535,23}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Double Attack
[789]={trade={28299,3953,{65535,24}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Critical Hit Rate
[790]={trade={28299,3953,{65535,25}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Enmity-
[791]={trade={28299,3953,{65535,26}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Magic Defense Bonus
[792]={trade={28299,3953,{65535,27}},base=28299,aug1=54,aug1MAX=3,aug2=29,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Attack/Magic Damage Taken-
[793]={trade={28299,3953,{65535,28}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=211,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Snapshot
[794]={trade={28299,3953,{65535,29}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=212,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Recycle
[795]={trade={28299,3953,{65535,30}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Double Attack
[796]={trade={28299,3953,{65535,31}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Critical Hit Rate
[797]={trade={28299,3953,{65535,32}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Enmity-
[798]={trade={28299,3953,{65535,33}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Magic Defense Bonus
[799]={trade={28299,3953,{65535,34}},base=28299,aug1=54,aug1MAX=3,aug2=27,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Ranged Accuracy/Magic Damage Taken-
[800]={trade={28299,3953,{65535,35}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=212,aug3MAX=2,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Recycle
[801]={trade={28299,3953,{65535,36}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Double Attack
[802]={trade={28299,3953,{65535,37}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Critical Hit Rate
[803]={trade={28299,3953,{65535,38}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Enmity-
[804]={trade={28299,3953,{65535,39}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Magic Defense Bonus
[805]={trade={28299,3953,{65535,40}},base=28299,aug1=54,aug1MAX=3,aug2=211,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Snapshot/Magic Damage Taken-
[806]={trade={28299,3953,{65535,41}},base=28299,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=143,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Recycle/Double Attack
[807]={trade={28299,3953,{65535,42}},base=28299,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Recycle/Critical Hit Rate
[808]={trade={28299,3953,{65535,43}},base=28299,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Recycle/Enmity-
[809]={trade={28299,3953,{65535,44}},base=28299,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Recycle/Magic Defense Bonus
[810]={trade={28299,3953,{65535,45}},base=28299,aug1=54,aug1MAX=3,aug2=212,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Recycle/Magic Damage Taken-
[811]={trade={28299,3953,{65535,46}},base=28299,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[812]={trade={28299,3953,{65535,47}},base=28299,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Double Attack/Enmity-
[813]={trade={28299,3953,{65535,48}},base=28299,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[814]={trade={28299,3953,{65535,49}},base=28299,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Double Attack/Magic Damage Taken-
[815]={trade={28299,3953,{65535,50}},base=28299,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=40,aug3MAX=6,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Critical Hit Rate/Enmity-
[816]={trade={28299,3953,{65535,51}},base=28299,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[817]={trade={28299,3953,{65535,52}},base=28299,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken-
[818]={trade={28299,3953,{65535,53}},base=28299,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Enmity-/Magic Defense Bonus
[819]={trade={28299,3953,{65535,54}},base=28299,aug1=54,aug1MAX=3,aug2=40,aug2MAX=6,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Enmity-/Magic Damage Taken-
[820]={trade={28299,3953,{65535,55}},base=28299,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=3,cost=500},--Iuitl Gaiters +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken-
[821]={trade={27769,4035,{65535,1}},base=27769,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Mask/Physical Damage Taken-/Attack/-
[822]={trade={27769,4035,{65535,2}},base=27769,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Mask/Physical Damage Taken-/Accuracy/-
[823]={trade={27769,4035,{65535,3}},base=27769,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Mask/Physical Damage Taken-/Double Attack/-
[824]={trade={27769,4035,{65535,4}},base=27769,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Mask/Physical Damage Taken-/Critical Hit Rate/-
[825]={trade={27769,4035,{65535,5}},base=27769,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Otronif Mask/Physical Damage Taken-/Magic Defense Bonus/-
[826]={trade={27913,4035,{65535,1}},base=27913,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Harness/Physical Damage Taken-/Attack/-
[827]={trade={27913,4035,{65535,2}},base=27913,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Harness/Physical Damage Taken-/Accuracy/-
[828]={trade={27913,4035,{65535,3}},base=27913,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Harness/Physical Damage Taken-/Double Attack/-
[829]={trade={27913,4035,{65535,4}},base=27913,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Harness/Physical Damage Taken-/Critical Hit Rate/-
[830]={trade={27913,4035,{65535,5}},base=27913,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Otronif Harness/Physical Damage Taken-/Magic Defense Bonus/-
[831]={trade={28052,4035,{65535,1}},base=28052,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Gloves/Physical Damage Taken-/Attack/-
[832]={trade={28052,4035,{65535,2}},base=28052,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Gloves/Physical Damage Taken-/Accuracy/-
[833]={trade={28052,4035,{65535,3}},base=28052,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Gloves/Physical Damage Taken-/Double Attack/-
[834]={trade={28052,4035,{65535,4}},base=28052,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Gloves/Physical Damage Taken-/Critical Hit Rate/-
[835]={trade={28052,4035,{65535,5}},base=28052,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Otronif Gloves/Physical Damage Taken-/Magic Defense Bonus/-
[836]={trade={28193,4035,{65535,1}},base=28193,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Brais/Physical Damage Taken-/Attack/-
[837]={trade={28193,4035,{65535,2}},base=28193,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Brais/Physical Damage Taken-/Accuracy/-
[838]={trade={28193,4035,{65535,3}},base=28193,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Brais/Physical Damage Taken-/Double Attack/-
[839]={trade={28193,4035,{65535,4}},base=28193,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Brais/Physical Damage Taken-/Critical Hit Rate/-
[840]={trade={28193,4035,{65535,5}},base=28193,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Otronif Brais/Physical Damage Taken-/Magic Defense Bonus/-
[841]={trade={28333,4035,{65535,1}},base=28333,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Boots/Physical Damage Taken-/Attack/-
[842]={trade={28333,4035,{65535,2}},base=28333,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Otronif Boots/Physical Damage Taken-/Accuracy/-
[843]={trade={28333,4035,{65535,3}},base=28333,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Boots/Physical Damage Taken-/Double Attack/-
[844]={trade={28333,4035,{65535,4}},base=28333,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,Aug3=0,Aug3MAX=0,cost=500},--Otronif Boots/Physical Damage Taken-/Critical Hit Rate/-
[845]={trade={28333,4035,{65535,5}},base=28333,aug1=54,aug1MAX=3,aug2=134,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Otronif Boots/Physical Damage Taken-/Magic Defense Bonus/-
[846]={trade={27729,3953,{65535,1}},base=27729,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Otronif Mask +1/Physical Damage Taken-/Attack/Accuracy
[847]={trade={27729,3953,{65535,2}},base=27729,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Attack/Double Attack
[848]={trade={27729,3953,{65535,3}},base=27729,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Attack/Critical Hit Rate
[849]={trade={27729,3953,{65535,4}},base=27729,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[850]={trade={27729,3953,{65535,5}},base=27729,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Mask +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[851]={trade={27729,3953,{65535,6}},base=27729,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Accuracy/Double Attack
[852]={trade={27729,3953,{65535,7}},base=27729,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[853]={trade={27729,3953,{65535,8}},base=27729,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[854]={trade={27729,3953,{65535,9}},base=27729,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Mask +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[855]={trade={27729,3953,{65535,10}},base=27729,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[856]={trade={27729,3953,{65535,11}},base=27729,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[857]={trade={27729,3953,{65535,12}},base=27729,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Mask +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[858]={trade={27729,3953,{65535,13}},base=27729,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Mask +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[859]={trade={27729,3953,{65535,14}},base=27729,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Mask +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[860]={trade={27729,3953,{65535,15}},base=27729,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Mask +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[861]={trade={27875,3953,{65535,1}},base=27875,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Otronif Harness +1/Physical Damage Taken-/Attack/Accuracy
[862]={trade={27875,3953,{65535,2}},base=27875,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Attack/Double Attack
[863]={trade={27875,3953,{65535,3}},base=27875,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Attack/Critical Hit Rate
[864]={trade={27875,3953,{65535,4}},base=27875,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[865]={trade={27875,3953,{65535,5}},base=27875,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Harness +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[866]={trade={27875,3953,{65535,6}},base=27875,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Accuracy/Double Attack
[867]={trade={27875,3953,{65535,7}},base=27875,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[868]={trade={27875,3953,{65535,8}},base=27875,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[869]={trade={27875,3953,{65535,9}},base=27875,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Harness +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[870]={trade={27875,3953,{65535,10}},base=27875,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[871]={trade={27875,3953,{65535,11}},base=27875,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[872]={trade={27875,3953,{65535,12}},base=27875,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Harness +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[873]={trade={27875,3953,{65535,13}},base=27875,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Harness +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[874]={trade={27875,3953,{65535,14}},base=27875,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Harness +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[875]={trade={27875,3953,{65535,15}},base=27875,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Harness +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[876]={trade={28019,3953,{65535,1}},base=28019,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Attack/Accuracy
[877]={trade={28019,3953,{65535,2}},base=28019,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Attack/Double Attack
[878]={trade={28019,3953,{65535,3}},base=28019,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Attack/Critical Hit Rate
[879]={trade={28019,3953,{65535,4}},base=28019,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[880]={trade={28019,3953,{65535,5}},base=28019,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[881]={trade={28019,3953,{65535,6}},base=28019,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Accuracy/Double Attack
[882]={trade={28019,3953,{65535,7}},base=28019,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[883]={trade={28019,3953,{65535,8}},base=28019,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[884]={trade={28019,3953,{65535,9}},base=28019,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[885]={trade={28019,3953,{65535,10}},base=28019,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[886]={trade={28019,3953,{65535,11}},base=28019,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[887]={trade={28019,3953,{65535,12}},base=28019,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[888]={trade={28019,3953,{65535,13}},base=28019,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[889]={trade={28019,3953,{65535,14}},base=28019,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[890]={trade={28019,3953,{65535,15}},base=28019,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Gloves +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[891]={trade={28161,3953,{65535,1}},base=28161,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Otronif Brais +1/Physical Damage Taken-/Attack/Accuracy
[892]={trade={28161,3953,{65535,2}},base=28161,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Attack/Double Attack
[893]={trade={28161,3953,{65535,3}},base=28161,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Attack/Critical Hit Rate
[894]={trade={28161,3953,{65535,4}},base=28161,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[895]={trade={28161,3953,{65535,5}},base=28161,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Brais +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[896]={trade={28161,3953,{65535,6}},base=28161,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Accuracy/Double Attack
[897]={trade={28161,3953,{65535,7}},base=28161,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[898]={trade={28161,3953,{65535,8}},base=28161,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[899]={trade={28161,3953,{65535,9}},base=28161,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Brais +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[900]={trade={28161,3953,{65535,10}},base=28161,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[901]={trade={28161,3953,{65535,11}},base=28161,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[902]={trade={28161,3953,{65535,12}},base=28161,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Brais +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[903]={trade={28161,3953,{65535,13}},base=28161,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Brais +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[904]={trade={28161,3953,{65535,14}},base=28161,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Brais +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[905]={trade={28161,3953,{65535,15}},base=28161,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Brais +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[906]={trade={28298,3953,{65535,1}},base=28298,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=23,aug3MAX=9,cost=500},--Otronif Boots +1/Physical Damage Taken-/Attack/Accuracy
[907]={trade={28298,3953,{65535,2}},base=28298,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Attack/Double Attack
[908]={trade={28298,3953,{65535,3}},base=28298,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Attack/Critical Hit Rate
[909]={trade={28298,3953,{65535,4}},base=28298,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Attack/Magic Defense Bonus
[910]={trade={28298,3953,{65535,5}},base=28298,aug1=54,aug1MAX=3,aug2=25,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Boots +1/Physical Damage Taken-/Attack/Magic Damage Taken -
[911]={trade={28298,3953,{65535,6}},base=28298,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Accuracy/Double Attack
[912]={trade={28298,3953,{65535,7}},base=28298,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Accuracy/Critical Hit Rate
[913]={trade={28298,3953,{65535,8}},base=28298,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Accuracy/Magic Defense Bonus
[914]={trade={28298,3953,{65535,9}},base=28298,aug1=54,aug1MAX=3,aug2=23,aug2MAX=9,aug3=55,aug3MAX=4,cost=500},--Otronif Boots +1/Physical Damage Taken-/Accuracy/Magic Damage Taken -
[915]={trade={28298,3953,{65535,10}},base=28298,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=41,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Double Attack/Critical Hit Rate
[916]={trade={28298,3953,{65535,11}},base=28298,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Double Attack/Magic Defense Bonus
[917]={trade={28298,3953,{65535,12}},base=28298,aug1=54,aug1MAX=3,aug2=143,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Boots +1/Physical Damage Taken-/Double Attack/Magic Damage Taken -
[918]={trade={28298,3953,{65535,13}},base=28298,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=134,aug3MAX=1,cost=500},--Otronif Boots +1/Physical Damage Taken-/Critical Hit Rate/Magic Defense Bonus
[919]={trade={28298,3953,{65535,14}},base=28298,aug1=54,aug1MAX=3,aug2=41,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Boots +1/Physical Damage Taken-/Critical Hit Rate/Magic Damage Taken -
[920]={trade={28298,3953,{65535,15}},base=28298,aug1=54,aug1MAX=3,aug2=134,aug2MAX=1,aug3=55,aug3MAX=4,cost=500},--Otronif Boots +1/Physical Damage Taken-/Magic Defense Bonus/Magic Damage Taken -
[921]={trade={28662,4035,{65535,1}},base=28662,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Beatific Shield/Physical Damage Taken-/HP/-
[922]={trade={28662,4035,{65535,2}},base=28662,aug1=54,aug1MAX=3,aug2=9,aug2MAX=29,Aug3=0,Aug3MAX=0,cost=500},--Beatific Shield/Physical Damage Taken-/MP/-
[923]={trade={28662,4035,{65535,3}},base=28662,aug1=54,aug1MAX=3,aug2=53,aug2MAX=9,Aug3=0,Aug3MAX=0,cost=500},--Beatific Shield/Physical Damage Taken-/Spell Interruption Rate-/-
[924]={trade={28662,4035,{65535,4}},base=28662,aug1=54,aug1MAX=3,aug2=153,aug2MAX=2,Aug3=0,Aug3MAX=0,cost=500},--Beatific Shield/Physical Damage Taken-/Shield Mastery/-
[925]={trade={28654,3953,{65535,1}},base=28654,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,aug3=9,aug3MAX=29,cost=500},--Beatific Shield +1/Physical Damage Taken-/HP/MP
[926]={trade={28654,3953,{65535,2}},base=28654,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,aug3=53,aug3MAX=9,cost=500},--Beatific Shield +1/Physical Damage Taken-/HP/Spell Interruption Rate-
[927]={trade={28654,3953,{65535,3}},base=28654,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,aug3=153,aug3MAX=2,cost=500},--Beatific Shield +1/Physical Damage Taken-/HP/Shield Mastery
[928]={trade={28654,3953,{65535,4}},base=28654,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,aug3=54,aug3MAX=4,cost=500},--Beatific Shield +1/Physical Damage Taken-/HP/Physical Damage Taken-
[929]={trade={28654,3953,{65535,5}},base=28654,aug1=54,aug1MAX=3,aug2=1,aug2MAX=29,aug3=55,aug3MAX=3,cost=500},--Beatific Shield +1/Physical Damage Taken-/HP/Magic Damage Taken-
[930]={trade={28654,3953,{65535,6}},base=28654,aug1=54,aug1MAX=3,aug2=9,aug2MAX=29,aug3=53,aug3MAX=9,cost=500},--Beatific Shield +1/Physical Damage Taken-/MP/Spell Interruption Rate-
[931]={trade={28654,3953,{65535,7}},base=28654,aug1=54,aug1MAX=3,aug2=9,aug2MAX=29,aug3=153,aug3MAX=2,cost=500},--Beatific Shield +1/Physical Damage Taken-/MP/Shield Mastery
[932]={trade={28654,3953,{65535,8}},base=28654,aug1=54,aug1MAX=3,aug2=9,aug2MAX=29,aug3=54,aug3MAX=4,cost=500},--Beatific Shield +1/Physical Damage Taken-/MP/Physical Damage Taken-
[933]={trade={28654,3953,{65535,9}},base=28654,aug1=54,aug1MAX=3,aug2=9,aug2MAX=29,aug3=55,aug3MAX=3,cost=500},--Beatific Shield +1/Physical Damage Taken-/MP/Magic Damage Taken-
[934]={trade={28654,3953,{65535,10}},base=28654,aug1=54,aug1MAX=3,aug2=53,aug2MAX=9,aug3=153,aug3MAX=2,cost=500},--Beatific Shield +1/Physical Damage Taken-/Spell Interruption Rate-/Shield Mastery
[935]={trade={28654,3953,{65535,11}},base=28654,aug1=54,aug1MAX=3,aug2=53,aug2MAX=9,aug3=54,aug3MAX=4,cost=500},--Beatific Shield +1/Physical Damage Taken-/Spell Interruption Rate-/Physical Damage Taken-
[936]={trade={28654,3953,{65535,12}},base=28654,aug1=54,aug1MAX=3,aug2=53,aug2MAX=9,aug3=55,aug3MAX=3,cost=500},--Beatific Shield +1/Physical Damage Taken-/Spell Interruption Rate-/Magic Damage Taken-
[937]={trade={28654,3953,{65535,13}},base=28654,aug1=54,aug1MAX=3,aug2=153,aug2MAX=2,aug3=54,aug3MAX=4,cost=500},--Beatific Shield +1/Physical Damage Taken-/Shield Mastery/Physical Damage Taken-
[938]={trade={28654,3953,{65535,14}},base=28654,aug1=54,aug1MAX=3,aug2=153,aug2MAX=2,aug3=55,aug3MAX=3,cost=500},--Beatific Shield +1/Physical Damage Taken-/Shield Mastery/Magic Damage Taken-
[939]={trade={28654,3953,{65535,15}},base=28654,aug1=54,aug1MAX=3,aug2=54,aug2MAX=4,aug3=55,aug3MAX=3,cost=500},--Beatific Shield +1/Physical Damage Taken-/Physical Damage Taken-/Magic Damage Taken-
[940]={trade={20553,3956,{65535,1}},base=20553,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Ninzas/DMG/STR/Attack
[941]={trade={20553,3956,{65535,2}},base=20553,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=23,aug3MAX=9,cost=500},--Ninzas/DMG/STR/Accuracy
[942]={trade={20553,3956,{65535,3}},base=20553,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Ninzas/DMG/STR/Double Attack
[943]={trade={20553,3956,{65535,4}},base=20553,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Ninzas/DMG/STR/Critical Hit Rate
[944]={trade={20553,3956,{65535,5}},base=20553,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=134,aug3MAX=2,cost=500},--Ninzas/DMG/STR/Magic Defense Bonus
[945]={trade={20553,3956,{65535,6}},base=20553,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=25,aug3MAX=5,cost=500},--Ninzas/DMG/DEX/Attack
[946]={trade={20553,3956,{65535,7}},base=20553,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=23,aug3MAX=9,cost=500},--Ninzas/DMG/DEX/Accuracy
[947]={trade={20553,3956,{65535,8}},base=20553,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Ninzas/DMG/DEX/Double Attack
[948]={trade={20553,3956,{65535,9}},base=20553,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Ninzas/DMG/DEX/Critical Hit Rate
[949]={trade={20553,3956,{65535,10}},base=20553,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=134,aug3MAX=2,cost=500},--Ninzas/DMG/DEX/Magic Defense Bonus
[950]={trade={20553,3956,{65535,11}},base=20553,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas/DMG/VIT/Attack
[951]={trade={20553,3956,{65535,12}},base=20553,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas/DMG/VIT/Accuracy
[952]={trade={20553,3956,{65535,13}},base=20553,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas/DMG/VIT/Double Attack
[953]={trade={20553,3956,{65535,14}},base=20553,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas/DMG/VIT/Critical Hit Rate
[954]={trade={20553,3956,{65535,15}},base=20553,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas/DMG/VIT/Magic Defense Bonus
[955]={trade={20553,3956,{65535,16}},base=20553,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas/DMG/AGI/Attack
[956]={trade={20553,3956,{65535,17}},base=20553,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas/DMG/AGI/Accuracy
[957]={trade={20553,3956,{65535,18}},base=20553,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas/DMG/AGI/Double Attack
[958]={trade={20553,3956,{65535,19}},base=20553,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas/DMG/AGI/Critical Hit Rate
[959]={trade={20553,3956,{65535,20}},base=20553,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas/DMG/AGI/Magic Defense Bonus
[960]={trade={20546,4035,{65535,1}},base=20546,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Ninzas +1/DMG/STR/Attack
[961]={trade={20546,4035,{65535,2}},base=20546,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=23,aug3MAX=9,cost=500},--Ninzas +1/DMG/STR/Accuracy
[962]={trade={20546,4035,{65535,3}},base=20546,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Ninzas +1/DMG/STR/Double Attack
[963]={trade={20546,4035,{65535,4}},base=20546,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Ninzas +1/DMG/STR/Critical Hit Rate
[964]={trade={20546,4035,{65535,5}},base=20546,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=134,aug3MAX=2,cost=500},--Ninzas +1/DMG/STR/Magic Defense Bonus
[965]={trade={20546,4035,{65535,6}},base=20546,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=25,aug3MAX=5,cost=500},--Ninzas +1/DMG/DEX/Attack
[966]={trade={20546,4035,{65535,7}},base=20546,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=23,aug3MAX=9,cost=500},--Ninzas +1/DMG/DEX/Accuracy
[967]={trade={20546,4035,{65535,8}},base=20546,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Ninzas +1/DMG/DEX/Double Attack
[968]={trade={20546,4035,{65535,9}},base=20546,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Ninzas +1/DMG/DEX/Critical Hit Rate
[969]={trade={20546,4035,{65535,10}},base=20546,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=134,aug3MAX=2,cost=500},--Ninzas +1/DMG/DEX/Magic Defense Bonus
[970]={trade={20546,4035,{65535,11}},base=20546,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas +1/DMG/VIT/Attack
[971]={trade={20546,4035,{65535,12}},base=20546,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas +1/DMG/VIT/Accuracy
[972]={trade={20546,4035,{65535,13}},base=20546,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas +1/DMG/VIT/Double Attack
[973]={trade={20546,4035,{65535,14}},base=20546,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas +1/DMG/VIT/Critical Hit Rate
[974]={trade={20546,4035,{65535,15}},base=20546,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas +1/DMG/VIT/Magic Defense Bonus
[975]={trade={20546,4035,{65535,16}},base=20546,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas +1/DMG/AGI/Attack
[976]={trade={20546,4035,{65535,17}},base=20546,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas +1/DMG/AGI/Accuracy
[977]={trade={20546,4035,{65535,18}},base=20546,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas +1/DMG/AGI/Double Attack
[978]={trade={20546,4035,{65535,19}},base=20546,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas +1/DMG/AGI/Critical Hit Rate
[979]={trade={20546,4035,{65535,20}},base=20546,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas +1/DMG/AGI/Magic Defense Bonus
[980]={trade={20539,3953,{65535,1}},base=20539,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Ninzas +2/DMG/STR/Attack
[981]={trade={20539,3953,{65535,2}},base=20539,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=23,aug3MAX=9,cost=500},--Ninzas +2/DMG/STR/Accuracy
[982]={trade={20539,3953,{65535,3}},base=20539,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Ninzas +2/DMG/STR/Double Attack
[983]={trade={20539,3953,{65535,4}},base=20539,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Ninzas +2/DMG/STR/Critical Hit Rate
[984]={trade={20539,3953,{65535,5}},base=20539,aug1=287,aug1MAX=9,aug2=512,aug2MAX=6,aug3=134,aug3MAX=2,cost=500},--Ninzas +2/DMG/STR/Magic Defense Bonus
[985]={trade={20539,3953,{65535,6}},base=20539,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=25,aug3MAX=5,cost=500},--Ninzas +2/DMG/DEX/Attack
[986]={trade={20539,3953,{65535,7}},base=20539,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=23,aug3MAX=9,cost=500},--Ninzas +2/DMG/DEX/Accuracy
[987]={trade={20539,3953,{65535,8}},base=20539,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Ninzas +2/DMG/DEX/Double Attack
[988]={trade={20539,3953,{65535,9}},base=20539,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Ninzas +2/DMG/DEX/Critical Hit Rate
[989]={trade={20539,3953,{65535,10}},base=20539,aug1=287,aug1MAX=9,aug2=513,aug2MAX=4,aug3=134,aug3MAX=2,cost=500},--Ninzas +2/DMG/DEX/Magic Defense Bonus
[990]={trade={20539,3953,{65535,11}},base=20539,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas +2/DMG/VIT/Attack
[991]={trade={20539,3953,{65535,12}},base=20539,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas +2/DMG/VIT/Accuracy
[992]={trade={20539,3953,{65535,13}},base=20539,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas +2/DMG/VIT/Double Attack
[993]={trade={20539,3953,{65535,14}},base=20539,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas +2/DMG/VIT/Critical Hit Rate
[994]={trade={20539,3953,{65535,15}},base=20539,aug1=287,aug1MAX=9,aug2=514,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas +2/DMG/VIT/Magic Defense Bonus
[995]={trade={20539,3953,{65535,16}},base=20539,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=25,aug3MAX=5,cost=500},--Ninzas +2/DMG/AGI/Attack
[996]={trade={20539,3953,{65535,17}},base=20539,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=23,aug3MAX=9,cost=500},--Ninzas +2/DMG/AGI/Accuracy
[997]={trade={20539,3953,{65535,18}},base=20539,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Ninzas +2/DMG/AGI/Double Attack
[998]={trade={20539,3953,{65535,19}},base=20539,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Ninzas +2/DMG/AGI/Critical Hit Rate
[999]={trade={20539,3953,{65535,20}},base=20539,aug1=287,aug1MAX=9,aug2=515,aug2MAX=8,aug3=134,aug3MAX=2,cost=500},--Ninzas +2/DMG/AGI/Magic Defense Bonus
[1000]={trade={20641,3956,{65535,1}},base=20641,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu/DMG/STR/Attack
[1001]={trade={20641,3956,{65535,2}},base=20641,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu/DMG/STR/Accuracy
[1002]={trade={20641,3956,{65535,3}},base=20641,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu/DMG/STR/Double Attack
[1003]={trade={20641,3956,{65535,4}},base=20641,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu/DMG/STR/Critical Hit Rate
[1004]={trade={20641,3956,{65535,5}},base=20641,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu/DMG/STR/Magic Defense Bonus
[1005]={trade={20641,3956,{65535,6}},base=20641,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu/DMG/DEX/Attack
[1006]={trade={20641,3956,{65535,7}},base=20641,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu/DMG/DEX/Accuracy
[1007]={trade={20641,3956,{65535,8}},base=20641,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu/DMG/DEX/Double Attack
[1008]={trade={20641,3956,{65535,9}},base=20641,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu/DMG/DEX/Critical Hit Rate
[1009]={trade={20641,3956,{65535,10}},base=20641,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu/DMG/DEX/Magic Defense Bonus
[1010]={trade={20641,3956,{65535,11}},base=20641,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu/DMG/VIT/Attack
[1011]={trade={20641,3956,{65535,12}},base=20641,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu/DMG/VIT/Accuracy
[1012]={trade={20641,3956,{65535,13}},base=20641,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu/DMG/VIT/Double Attack
[1013]={trade={20641,3956,{65535,14}},base=20641,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu/DMG/VIT/Critical Hit Rate
[1014]={trade={20641,3956,{65535,15}},base=20641,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu/DMG/VIT/Magic Defense Bonus
[1015]={trade={20641,3956,{65535,16}},base=20641,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Leisilonu/DMG/AGI/Attack
[1016]={trade={20641,3956,{65535,17}},base=20641,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Leisilonu/DMG/AGI/Accuracy
[1017]={trade={20641,3956,{65535,18}},base=20641,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Leisilonu/DMG/AGI/Double Attack
[1018]={trade={20641,3956,{65535,19}},base=20641,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Leisilonu/DMG/AGI/Critical Hit Rate
[1019]={trade={20641,3956,{65535,20}},base=20641,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Leisilonu/DMG/AGI/Magic Defense Bonus
[1020]={trade={20634,4035,{65535,1}},base=20634,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +1/DMG/STR/Attack
[1021]={trade={20634,4035,{65535,2}},base=20634,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +1/DMG/STR/Accuracy
[1022]={trade={20634,4035,{65535,3}},base=20634,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +1/DMG/STR/Double Attack
[1023]={trade={20634,4035,{65535,4}},base=20634,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +1/DMG/STR/Critical Hit Rate
[1024]={trade={20634,4035,{65535,5}},base=20634,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +1/DMG/STR/Magic Defense Bonus
[1025]={trade={20634,4035,{65535,6}},base=20634,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +1/DMG/DEX/Attack
[1026]={trade={20634,4035,{65535,7}},base=20634,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +1/DMG/DEX/Accuracy
[1027]={trade={20634,4035,{65535,8}},base=20634,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +1/DMG/DEX/Double Attack
[1028]={trade={20634,4035,{65535,9}},base=20634,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +1/DMG/DEX/Critical Hit Rate
[1029]={trade={20634,4035,{65535,10}},base=20634,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +1/DMG/DEX/Magic Defense Bonus
[1030]={trade={20634,4035,{65535,11}},base=20634,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +1/DMG/VIT/Attack
[1031]={trade={20634,4035,{65535,12}},base=20634,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +1/DMG/VIT/Accuracy
[1032]={trade={20634,4035,{65535,13}},base=20634,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +1/DMG/VIT/Double Attack
[1033]={trade={20634,4035,{65535,14}},base=20634,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +1/DMG/VIT/Critical Hit Rate
[1034]={trade={20634,4035,{65535,15}},base=20634,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +1/DMG/VIT/Magic Defense Bonus
[1035]={trade={20634,4035,{65535,16}},base=20634,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Leisilonu +1/DMG/AGI/Attack
[1036]={trade={20634,4035,{65535,17}},base=20634,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Leisilonu +1/DMG/AGI/Accuracy
[1037]={trade={20634,4035,{65535,18}},base=20634,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Leisilonu +1/DMG/AGI/Double Attack
[1038]={trade={20634,4035,{65535,19}},base=20634,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Leisilonu +1/DMG/AGI/Critical Hit Rate
[1039]={trade={20634,4035,{65535,20}},base=20634,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Leisilonu +1/DMG/AGI/Magic Defense Bonus
[1040]={trade={20623,3953,{65535,1}},base=20623,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +2/DMG/STR/Attack
[1041]={trade={20623,3953,{65535,2}},base=20623,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +2/DMG/STR/Accuracy
[1042]={trade={20623,3953,{65535,3}},base=20623,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +2/DMG/STR/Double Attack
[1043]={trade={20623,3953,{65535,4}},base=20623,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +2/DMG/STR/Critical Hit Rate
[1044]={trade={20623,3953,{65535,5}},base=20623,aug1=287,aug1MAX=9,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +2/DMG/STR/Magic Defense Bonus
[1045]={trade={20623,3953,{65535,6}},base=20623,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +2/DMG/DEX/Attack
[1046]={trade={20623,3953,{65535,7}},base=20623,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +2/DMG/DEX/Accuracy
[1047]={trade={20623,3953,{65535,8}},base=20623,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +2/DMG/DEX/Double Attack
[1048]={trade={20623,3953,{65535,9}},base=20623,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +2/DMG/DEX/Critical Hit Rate
[1049]={trade={20623,3953,{65535,10}},base=20623,aug1=287,aug1MAX=9,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +2/DMG/DEX/Magic Defense Bonus
[1050]={trade={20623,3953,{65535,11}},base=20623,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Leisilonu +2/DMG/VIT/Attack
[1051]={trade={20623,3953,{65535,12}},base=20623,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Leisilonu +2/DMG/VIT/Accuracy
[1052]={trade={20623,3953,{65535,13}},base=20623,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Leisilonu +2/DMG/VIT/Double Attack
[1053]={trade={20623,3953,{65535,14}},base=20623,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Leisilonu +2/DMG/VIT/Critical Hit Rate
[1054]={trade={20623,3953,{65535,15}},base=20623,aug1=287,aug1MAX=9,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Leisilonu +2/DMG/VIT/Magic Defense Bonus
[1055]={trade={20623,3953,{65535,16}},base=20623,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Leisilonu +2/DMG/AGI/Attack
[1056]={trade={20623,3953,{65535,17}},base=20623,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Leisilonu +2/DMG/AGI/Accuracy
[1057]={trade={20623,3953,{65535,18}},base=20623,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Leisilonu +2/DMG/AGI/Double Attack
[1058]={trade={20623,3953,{65535,19}},base=20623,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Leisilonu +2/DMG/AGI/Critical Hit Rate
[1059]={trade={20623,3953,{65535,20}},base=20623,aug1=287,aug1MAX=9,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Leisilonu +2/DMG/AGI/Magic Defense Bonus
[1060]={trade={20742,3956,{65535,1}},base=20742,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Iztaasu/DMG/STR/Attack
[1061]={trade={20742,3956,{65535,2}},base=20742,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Iztaasu/DMG/STR/Accuracy
[1062]={trade={20742,3956,{65535,3}},base=20742,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Iztaasu/DMG/STR/Double Attack
[1063]={trade={20742,3956,{65535,4}},base=20742,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Iztaasu/DMG/STR/Critical Hit Rate
[1064]={trade={20742,3956,{65535,5}},base=20742,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iztaasu/DMG/STR/Magic Defense Bonus
[1065]={trade={20742,3956,{65535,6}},base=20742,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu/DMG/DEX/Attack
[1066]={trade={20742,3956,{65535,7}},base=20742,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu/DMG/DEX/Accuracy
[1067]={trade={20742,3956,{65535,8}},base=20742,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu/DMG/DEX/Double Attack
[1068]={trade={20742,3956,{65535,9}},base=20742,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu/DMG/DEX/Critical Hit Rate
[1069]={trade={20742,3956,{65535,10}},base=20742,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu/DMG/DEX/Magic Defense Bonus
[1070]={trade={20742,3956,{65535,11}},base=20742,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu/DMG/VIT/Attack
[1071]={trade={20742,3956,{65535,12}},base=20742,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu/DMG/VIT/Accuracy
[1072]={trade={20742,3956,{65535,13}},base=20742,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu/DMG/VIT/Double Attack
[1073]={trade={20742,3956,{65535,14}},base=20742,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu/DMG/VIT/Critical Hit Rate
[1074]={trade={20742,3956,{65535,15}},base=20742,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu/DMG/VIT/Magic Defense Bonus
[1075]={trade={20742,3956,{65535,16}},base=20742,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Iztaasu/DMG/AGI/Attack
[1076]={trade={20742,3956,{65535,17}},base=20742,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Iztaasu/DMG/AGI/Accuracy
[1077]={trade={20742,3956,{65535,18}},base=20742,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iztaasu/DMG/AGI/Double Attack
[1078]={trade={20742,3956,{65535,19}},base=20742,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iztaasu/DMG/AGI/Critical Hit Rate
[1079]={trade={20742,3956,{65535,20}},base=20742,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iztaasu/DMG/AGI/Magic Defense Bonus
[1080]={trade={20736,4035,{65535,1}},base=20736,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Iztaasu +1/DMG/STR/Attack
[1081]={trade={20736,4035,{65535,2}},base=20736,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Iztaasu +1/DMG/STR/Accuracy
[1082]={trade={20736,4035,{65535,3}},base=20736,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Iztaasu +1/DMG/STR/Double Attack
[1083]={trade={20736,4035,{65535,4}},base=20736,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Iztaasu +1/DMG/STR/Critical Hit Rate
[1084]={trade={20736,4035,{65535,5}},base=20736,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iztaasu +1/DMG/STR/Magic Defense Bonus
[1085]={trade={20736,4035,{65535,6}},base=20736,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu +1/DMG/DEX/Attack
[1086]={trade={20736,4035,{65535,7}},base=20736,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu +1/DMG/DEX/Accuracy
[1087]={trade={20736,4035,{65535,8}},base=20736,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu +1/DMG/DEX/Double Attack
[1088]={trade={20736,4035,{65535,9}},base=20736,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu +1/DMG/DEX/Critical Hit Rate
[1089]={trade={20736,4035,{65535,10}},base=20736,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu +1/DMG/DEX/Magic Defense Bonus
[1090]={trade={20736,4035,{65535,11}},base=20736,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu +1/DMG/VIT/Attack
[1091]={trade={20736,4035,{65535,12}},base=20736,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu +1/DMG/VIT/Accuracy
[1092]={trade={20736,4035,{65535,13}},base=20736,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu +1/DMG/VIT/Double Attack
[1093]={trade={20736,4035,{65535,14}},base=20736,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu +1/DMG/VIT/Critical Hit Rate
[1094]={trade={20736,4035,{65535,15}},base=20736,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu +1/DMG/VIT/Magic Defense Bonus
[1095]={trade={20736,4035,{65535,16}},base=20736,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Iztaasu +1/DMG/AGI/Attack
[1096]={trade={20736,4035,{65535,17}},base=20736,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Iztaasu +1/DMG/AGI/Accuracy
[1097]={trade={20736,4035,{65535,18}},base=20736,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iztaasu +1/DMG/AGI/Double Attack
[1098]={trade={20736,4035,{65535,19}},base=20736,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iztaasu +1/DMG/AGI/Critical Hit Rate
[1099]={trade={20736,4035,{65535,20}},base=20736,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iztaasu +1/DMG/AGI/Magic Defense Bonus
[1100]={trade={20725,3953,{65535,1}},base=20725,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=25,aug3MAX=9,cost=500},--Iztaasu +2/DMG/STR/Attack
[1101]={trade={20725,3953,{65535,2}},base=20725,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=23,aug3MAX=8,cost=500},--Iztaasu +2/DMG/STR/Accuracy
[1102]={trade={20725,3953,{65535,3}},base=20725,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Iztaasu +2/DMG/STR/Double Attack
[1103]={trade={20725,3953,{65535,4}},base=20725,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Iztaasu +2/DMG/STR/Critical Hit Rate
[1104]={trade={20725,3953,{65535,5}},base=20725,aug1=287,aug1MAX=11,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Iztaasu +2/DMG/STR/Magic Defense Bonus
[1105]={trade={20725,3953,{65535,6}},base=20725,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu +2/DMG/DEX/Attack
[1106]={trade={20725,3953,{65535,7}},base=20725,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu +2/DMG/DEX/Accuracy
[1107]={trade={20725,3953,{65535,8}},base=20725,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu +2/DMG/DEX/Double Attack
[1108]={trade={20725,3953,{65535,9}},base=20725,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu +2/DMG/DEX/Critical Hit Rate
[1109]={trade={20725,3953,{65535,10}},base=20725,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu +2/DMG/DEX/Magic Defense Bonus
[1110]={trade={20725,3953,{65535,11}},base=20725,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iztaasu +2/DMG/VIT/Attack
[1111]={trade={20725,3953,{65535,12}},base=20725,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Iztaasu +2/DMG/VIT/Accuracy
[1112]={trade={20725,3953,{65535,13}},base=20725,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iztaasu +2/DMG/VIT/Double Attack
[1113]={trade={20725,3953,{65535,14}},base=20725,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iztaasu +2/DMG/VIT/Critical Hit Rate
[1114]={trade={20725,3953,{65535,15}},base=20725,aug1=287,aug1MAX=11,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iztaasu +2/DMG/VIT/Magic Defense Bonus
[1115]={trade={20725,3953,{65535,16}},base=20725,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Iztaasu +2/DMG/AGI/Attack
[1116]={trade={20725,3953,{65535,17}},base=20725,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Iztaasu +2/DMG/AGI/Accuracy
[1117]={trade={20725,3953,{65535,18}},base=20725,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iztaasu +2/DMG/AGI/Double Attack
[1118]={trade={20725,3953,{65535,19}},base=20725,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iztaasu +2/DMG/AGI/Critical Hit Rate
[1119]={trade={20725,3953,{65535,20}},base=20725,aug1=287,aug1MAX=11,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iztaasu +2/DMG/AGI/Magic Defense Bonus
[1120]={trade={20787,3956,{65535,1}},base=20787,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci/DMG/STR/Attack
[1121]={trade={20787,3956,{65535,2}},base=20787,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci/DMG/STR/Accuracy
[1122]={trade={20787,3956,{65535,3}},base=20787,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci/DMG/STR/Double Attack
[1123]={trade={20787,3956,{65535,4}},base=20787,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci/DMG/STR/Critical Hit Rate
[1124]={trade={20787,3956,{65535,5}},base=20787,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci/DMG/STR/Magic Defense Bonus
[1125]={trade={20787,3956,{65535,6}},base=20787,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci/DMG/DEX/Attack
[1126]={trade={20787,3956,{65535,7}},base=20787,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci/DMG/DEX/Accuracy
[1127]={trade={20787,3956,{65535,8}},base=20787,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci/DMG/DEX/Double Attack
[1128]={trade={20787,3956,{65535,9}},base=20787,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci/DMG/DEX/Critical Hit Rate
[1129]={trade={20787,3956,{65535,10}},base=20787,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci/DMG/DEX/Magic Defense Bonus
[1130]={trade={20787,3956,{65535,11}},base=20787,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci/DMG/VIT/Attack
[1131]={trade={20787,3956,{65535,12}},base=20787,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci/DMG/VIT/Accuracy
[1132]={trade={20787,3956,{65535,13}},base=20787,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci/DMG/VIT/Double Attack
[1133]={trade={20787,3956,{65535,14}},base=20787,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci/DMG/VIT/Critical Hit Rate
[1134]={trade={20787,3956,{65535,15}},base=20787,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci/DMG/VIT/Magic Defense Bonus
[1135]={trade={20787,3956,{65535,16}},base=20787,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Crobaci/DMG/AGI/Attack
[1136]={trade={20787,3956,{65535,17}},base=20787,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Crobaci/DMG/AGI/Accuracy
[1137]={trade={20787,3956,{65535,18}},base=20787,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Crobaci/DMG/AGI/Double Attack
[1138]={trade={20787,3956,{65535,19}},base=20787,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Crobaci/DMG/AGI/Critical Hit Rate
[1139]={trade={20787,3956,{65535,20}},base=20787,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Crobaci/DMG/AGI/Magic Defense Bonus
[1140]={trade={20775,4035,{65535,1}},base=20775,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +1/DMG/STR/Attack
[1141]={trade={20775,4035,{65535,2}},base=20775,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +1/DMG/STR/Accuracy
[1142]={trade={20775,4035,{65535,3}},base=20775,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +1/DMG/STR/Double Attack
[1143]={trade={20775,4035,{65535,4}},base=20775,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +1/DMG/STR/Critical Hit Rate
[1144]={trade={20775,4035,{65535,5}},base=20775,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +1/DMG/STR/Magic Defense Bonus
[1145]={trade={20775,4035,{65535,6}},base=20775,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +1/DMG/DEX/Attack
[1146]={trade={20775,4035,{65535,7}},base=20775,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +1/DMG/DEX/Accuracy
[1147]={trade={20775,4035,{65535,8}},base=20775,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +1/DMG/DEX/Double Attack
[1148]={trade={20775,4035,{65535,9}},base=20775,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +1/DMG/DEX/Critical Hit Rate
[1149]={trade={20775,4035,{65535,10}},base=20775,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +1/DMG/DEX/Magic Defense Bonus
[1150]={trade={20775,4035,{65535,11}},base=20775,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +1/DMG/VIT/Attack
[1151]={trade={20775,4035,{65535,12}},base=20775,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +1/DMG/VIT/Accuracy
[1152]={trade={20775,4035,{65535,13}},base=20775,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +1/DMG/VIT/Double Attack
[1153]={trade={20775,4035,{65535,14}},base=20775,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +1/DMG/VIT/Critical Hit Rate
[1154]={trade={20775,4035,{65535,15}},base=20775,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +1/DMG/VIT/Magic Defense Bonus
[1155]={trade={20775,4035,{65535,16}},base=20775,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Crobaci +1/DMG/AGI/Attack
[1156]={trade={20775,4035,{65535,17}},base=20775,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Crobaci +1/DMG/AGI/Accuracy
[1157]={trade={20775,4035,{65535,18}},base=20775,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Crobaci +1/DMG/AGI/Double Attack
[1158]={trade={20775,4035,{65535,19}},base=20775,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Crobaci +1/DMG/AGI/Critical Hit Rate
[1159]={trade={20775,4035,{65535,20}},base=20775,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Crobaci +1/DMG/AGI/Magic Defense Bonus
[1160]={trade={20764,3953,{65535,1}},base=20764,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +2/DMG/STR/Attack
[1161]={trade={20764,3953,{65535,2}},base=20764,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +2/DMG/STR/Accuracy
[1162]={trade={20764,3953,{65535,3}},base=20764,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +2/DMG/STR/Double Attack
[1163]={trade={20764,3953,{65535,4}},base=20764,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +2/DMG/STR/Critical Hit Rate
[1164]={trade={20764,3953,{65535,5}},base=20764,aug1=287,aug1MAX=26,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +2/DMG/STR/Magic Defense Bonus
[1165]={trade={20764,3953,{65535,6}},base=20764,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +2/DMG/DEX/Attack
[1166]={trade={20764,3953,{65535,7}},base=20764,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +2/DMG/DEX/Accuracy
[1167]={trade={20764,3953,{65535,8}},base=20764,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +2/DMG/DEX/Double Attack
[1168]={trade={20764,3953,{65535,9}},base=20764,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +2/DMG/DEX/Critical Hit Rate
[1169]={trade={20764,3953,{65535,10}},base=20764,aug1=287,aug1MAX=26,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +2/DMG/DEX/Magic Defense Bonus
[1170]={trade={20764,3953,{65535,11}},base=20764,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Crobaci +2/DMG/VIT/Attack
[1171]={trade={20764,3953,{65535,12}},base=20764,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Crobaci +2/DMG/VIT/Accuracy
[1172]={trade={20764,3953,{65535,13}},base=20764,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Crobaci +2/DMG/VIT/Double Attack
[1173]={trade={20764,3953,{65535,14}},base=20764,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Crobaci +2/DMG/VIT/Critical Hit Rate
[1174]={trade={20764,3953,{65535,15}},base=20764,aug1=287,aug1MAX=26,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Crobaci +2/DMG/VIT/Magic Defense Bonus
[1175]={trade={20764,3953,{65535,16}},base=20764,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=25,aug3MAX=9,cost=500},--Crobaci +2/DMG/AGI/Attack
[1176]={trade={20764,3953,{65535,17}},base=20764,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Crobaci +2/DMG/AGI/Accuracy
[1177]={trade={20764,3953,{65535,18}},base=20764,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Crobaci +2/DMG/AGI/Double Attack
[1178]={trade={20764,3953,{65535,19}},base=20764,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Crobaci +2/DMG/AGI/Critical Hit Rate
[1179]={trade={20764,3953,{65535,20}},base=20764,aug1=287,aug1MAX=26,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Crobaci +2/DMG/AGI/Magic Defense Bonus
[1180]={trade={20833,3956,{65535,1}},base=20833,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=25,aug3MAX=6,cost=500},--Faizzeer/DMG/STR/Attack
[1181]={trade={20833,3956,{65535,2}},base=20833,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=23,aug3MAX=8,cost=500},--Faizzeer/DMG/STR/Accuracy
[1182]={trade={20833,3956,{65535,3}},base=20833,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Faizzeer/DMG/STR/Double Attack
[1183]={trade={20833,3956,{65535,4}},base=20833,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Faizzeer/DMG/STR/Critical Hit Rate
[1184]={trade={20833,3956,{65535,5}},base=20833,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Faizzeer/DMG/STR/Magic Defense Bonus
[1185]={trade={20833,3956,{65535,6}},base=20833,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Faizzeer/DMG/DEX/Attack
[1186]={trade={20833,3956,{65535,7}},base=20833,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Faizzeer/DMG/DEX/Accuracy
[1187]={trade={20833,3956,{65535,8}},base=20833,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Faizzeer/DMG/DEX/Double Attack
[1188]={trade={20833,3956,{65535,9}},base=20833,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Faizzeer/DMG/DEX/Critical Hit Rate
[1189]={trade={20833,3956,{65535,10}},base=20833,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Faizzeer/DMG/DEX/Magic Defense Bonus
[1190]={trade={20833,3956,{65535,11}},base=20833,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer/DMG/VIT/Attack
[1191]={trade={20833,3956,{65535,12}},base=20833,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer/DMG/VIT/Accuracy
[1192]={trade={20833,3956,{65535,13}},base=20833,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer/DMG/VIT/Double Attack
[1193]={trade={20833,3956,{65535,14}},base=20833,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer/DMG/VIT/Critical Hit Rate
[1194]={trade={20833,3956,{65535,15}},base=20833,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer/DMG/VIT/Magic Defense Bonus
[1195]={trade={20833,3956,{65535,16}},base=20833,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer/DMG/AGI/Attack
[1196]={trade={20833,3956,{65535,17}},base=20833,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer/DMG/AGI/Accuracy
[1197]={trade={20833,3956,{65535,18}},base=20833,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer/DMG/AGI/Double Attack
[1198]={trade={20833,3956,{65535,19}},base=20833,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer/DMG/AGI/Critical Hit Rate
[1199]={trade={20833,3956,{65535,20}},base=20833,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer/DMG/AGI/Magic Defense Bonus
[1200]={trade={20824,4035,{65535,1}},base=20824,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=25,aug3MAX=6,cost=500},--Faizzeer +1/DMG/STR/Attack
[1201]={trade={20824,4035,{65535,2}},base=20824,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=23,aug3MAX=8,cost=500},--Faizzeer +1/DMG/STR/Accuracy
[1202]={trade={20824,4035,{65535,3}},base=20824,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Faizzeer +1/DMG/STR/Double Attack
[1203]={trade={20824,4035,{65535,4}},base=20824,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Faizzeer +1/DMG/STR/Critical Hit Rate
[1204]={trade={20824,4035,{65535,5}},base=20824,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Faizzeer +1/DMG/STR/Magic Defense Bonus
[1205]={trade={20824,4035,{65535,6}},base=20824,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Faizzeer +1/DMG/DEX/Attack
[1206]={trade={20824,4035,{65535,7}},base=20824,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Faizzeer +1/DMG/DEX/Accuracy
[1207]={trade={20824,4035,{65535,8}},base=20824,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Faizzeer +1/DMG/DEX/Double Attack
[1208]={trade={20824,4035,{65535,9}},base=20824,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Faizzeer +1/DMG/DEX/Critical Hit Rate
[1209]={trade={20824,4035,{65535,10}},base=20824,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Faizzeer +1/DMG/DEX/Magic Defense Bonus
[1210]={trade={20824,4035,{65535,11}},base=20824,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer +1/DMG/VIT/Attack
[1211]={trade={20824,4035,{65535,12}},base=20824,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer +1/DMG/VIT/Accuracy
[1212]={trade={20824,4035,{65535,13}},base=20824,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer +1/DMG/VIT/Double Attack
[1213]={trade={20824,4035,{65535,14}},base=20824,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer +1/DMG/VIT/Critical Hit Rate
[1214]={trade={20824,4035,{65535,15}},base=20824,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer +1/DMG/VIT/Magic Defense Bonus
[1215]={trade={20824,4035,{65535,16}},base=20824,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer +1/DMG/AGI/Attack
[1216]={trade={20824,4035,{65535,17}},base=20824,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer +1/DMG/AGI/Accuracy
[1217]={trade={20824,4035,{65535,18}},base=20824,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer +1/DMG/AGI/Double Attack
[1218]={trade={20824,4035,{65535,19}},base=20824,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer +1/DMG/AGI/Critical Hit Rate
[1219]={trade={20824,4035,{65535,20}},base=20824,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer +1/DMG/AGI/Magic Defense Bonus
[1220]={trade={20816,3953,{65535,1}},base=20816,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=25,aug3MAX=6,cost=500},--Faizzeer +2/DMG/STR/Attack
[1221]={trade={20816,3953,{65535,2}},base=20816,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=23,aug3MAX=8,cost=500},--Faizzeer +2/DMG/STR/Accuracy
[1222]={trade={20816,3953,{65535,3}},base=20816,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Faizzeer +2/DMG/STR/Double Attack
[1223]={trade={20816,3953,{65535,4}},base=20816,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Faizzeer +2/DMG/STR/Critical Hit Rate
[1224]={trade={20816,3953,{65535,5}},base=20816,aug1=287,aug1MAX=15,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Faizzeer +2/DMG/STR/Magic Defense Bonus
[1225]={trade={20816,3953,{65535,6}},base=20816,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Faizzeer +2/DMG/DEX/Attack
[1226]={trade={20816,3953,{65535,7}},base=20816,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=23,aug3MAX=8,cost=500},--Faizzeer +2/DMG/DEX/Accuracy
[1227]={trade={20816,3953,{65535,8}},base=20816,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Faizzeer +2/DMG/DEX/Double Attack
[1228]={trade={20816,3953,{65535,9}},base=20816,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Faizzeer +2/DMG/DEX/Critical Hit Rate
[1229]={trade={20816,3953,{65535,10}},base=20816,aug1=287,aug1MAX=15,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Faizzeer +2/DMG/DEX/Magic Defense Bonus
[1230]={trade={20816,3953,{65535,11}},base=20816,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer +2/DMG/VIT/Attack
[1231]={trade={20816,3953,{65535,12}},base=20816,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer +2/DMG/VIT/Accuracy
[1232]={trade={20816,3953,{65535,13}},base=20816,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer +2/DMG/VIT/Double Attack
[1233]={trade={20816,3953,{65535,14}},base=20816,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer +2/DMG/VIT/Critical Hit Rate
[1234]={trade={20816,3953,{65535,15}},base=20816,aug1=287,aug1MAX=15,aug2=514,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer +2/DMG/VIT/Magic Defense Bonus
[1235]={trade={20816,3953,{65535,16}},base=20816,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=25,aug3MAX=6,cost=500},--Faizzeer +2/DMG/AGI/Attack
[1236]={trade={20816,3953,{65535,17}},base=20816,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=23,aug3MAX=8,cost=500},--Faizzeer +2/DMG/AGI/Accuracy
[1237]={trade={20816,3953,{65535,18}},base=20816,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Faizzeer +2/DMG/AGI/Double Attack
[1238]={trade={20816,3953,{65535,19}},base=20816,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Faizzeer +2/DMG/AGI/Critical Hit Rate
[1239]={trade={20816,3953,{65535,20}},base=20816,aug1=287,aug1MAX=15,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Faizzeer +2/DMG/AGI/Magic Defense Bonus
[1240]={trade={20877,3956,{65535,1}},base=20877,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar/DMG/STR/Attack
[1241]={trade={20877,3956,{65535,2}},base=20877,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar/DMG/STR/Accuracy
[1242]={trade={20877,3956,{65535,3}},base=20877,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar/DMG/STR/Double Attack
[1243]={trade={20877,3956,{65535,4}},base=20877,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar/DMG/STR/Critical Hit Rate
[1244]={trade={20877,3956,{65535,5}},base=20877,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar/DMG/STR/Magic Defense Bonus
[1245]={trade={20877,3956,{65535,6}},base=20877,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=25,aug3MAX=9,cost=500},--Iclamar/DMG/DEX/Attack
[1246]={trade={20877,3956,{65535,7}},base=20877,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=23,aug3MAX=7,cost=500},--Iclamar/DMG/DEX/Accuracy
[1247]={trade={20877,3956,{65535,8}},base=20877,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=143,aug3MAX=1,cost=500},--Iclamar/DMG/DEX/Double Attack
[1248]={trade={20877,3956,{65535,9}},base=20877,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=41,aug3MAX=1,cost=500},--Iclamar/DMG/DEX/Critical Hit Rate
[1249]={trade={20877,3956,{65535,10}},base=20877,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=134,aug3MAX=1,cost=500},--Iclamar/DMG/DEX/Magic Defense Bonus
[1250]={trade={20877,3956,{65535,11}},base=20877,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar/DMG/VIT/Attack
[1251]={trade={20877,3956,{65535,12}},base=20877,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar/DMG/VIT/Accuracy
[1252]={trade={20877,3956,{65535,13}},base=20877,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar/DMG/VIT/Double Attack
[1253]={trade={20877,3956,{65535,14}},base=20877,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar/DMG/VIT/Critical Hit Rate
[1254]={trade={20877,3956,{65535,15}},base=20877,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar/DMG/VIT/Magic Defense Bonus
[1255]={trade={20877,3956,{65535,16}},base=20877,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iclamar/DMG/AGI/Attack
[1256]={trade={20877,3956,{65535,17}},base=20877,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Iclamar/DMG/AGI/Accuracy
[1257]={trade={20877,3956,{65535,18}},base=20877,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iclamar/DMG/AGI/Double Attack
[1258]={trade={20877,3956,{65535,19}},base=20877,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iclamar/DMG/AGI/Critical Hit Rate
[1259]={trade={20877,3956,{65535,20}},base=20877,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iclamar/DMG/AGI/Magic Defense Bonus
[1260]={trade={20870,4035,{65535,1}},base=20870,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar +1/DMG/STR/Attack
[1261]={trade={20870,4035,{65535,2}},base=20870,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar +1/DMG/STR/Accuracy
[1262]={trade={20870,4035,{65535,3}},base=20870,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar +1/DMG/STR/Double Attack
[1263]={trade={20870,4035,{65535,4}},base=20870,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar +1/DMG/STR/Critical Hit Rate
[1264]={trade={20870,4035,{65535,5}},base=20870,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar +1/DMG/STR/Magic Defense Bonus
[1265]={trade={20870,4035,{65535,6}},base=20870,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=25,aug3MAX=9,cost=500},--Iclamar +1/DMG/DEX/Attack
[1266]={trade={20870,4035,{65535,7}},base=20870,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=23,aug3MAX=7,cost=500},--Iclamar +1/DMG/DEX/Accuracy
[1267]={trade={20870,4035,{65535,8}},base=20870,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=143,aug3MAX=1,cost=500},--Iclamar +1/DMG/DEX/Double Attack
[1268]={trade={20870,4035,{65535,9}},base=20870,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=41,aug3MAX=1,cost=500},--Iclamar +1/DMG/DEX/Critical Hit Rate
[1269]={trade={20870,4035,{65535,10}},base=20870,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=134,aug3MAX=1,cost=500},--Iclamar +1/DMG/DEX/Magic Defense Bonus
[1270]={trade={20870,4035,{65535,11}},base=20870,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar +1/DMG/VIT/Attack
[1271]={trade={20870,4035,{65535,12}},base=20870,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar +1/DMG/VIT/Accuracy
[1272]={trade={20870,4035,{65535,13}},base=20870,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar +1/DMG/VIT/Double Attack
[1273]={trade={20870,4035,{65535,14}},base=20870,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar +1/DMG/VIT/Critical Hit Rate
[1274]={trade={20870,4035,{65535,15}},base=20870,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar +1/DMG/VIT/Magic Defense Bonus
[1275]={trade={20870,4035,{65535,16}},base=20870,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iclamar +1/DMG/AGI/Attack
[1276]={trade={20870,4035,{65535,17}},base=20870,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Iclamar +1/DMG/AGI/Accuracy
[1277]={trade={20870,4035,{65535,18}},base=20870,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iclamar +1/DMG/AGI/Double Attack
[1278]={trade={20870,4035,{65535,19}},base=20870,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iclamar +1/DMG/AGI/Critical Hit Rate
[1279]={trade={20870,4035,{65535,20}},base=20870,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iclamar +1/DMG/AGI/Magic Defense Bonus
[1280]={trade={20863,3953,{65535,1}},base=20863,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar +2/DMG/STR/Attack
[1281]={trade={20863,3953,{65535,2}},base=20863,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar +2/DMG/STR/Accuracy
[1282]={trade={20863,3953,{65535,3}},base=20863,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar +2/DMG/STR/Double Attack
[1283]={trade={20863,3953,{65535,4}},base=20863,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar +2/DMG/STR/Critical Hit Rate
[1284]={trade={20863,3953,{65535,5}},base=20863,aug1=287,aug1MAX=23,aug2=512,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar +2/DMG/STR/Magic Defense Bonus
[1285]={trade={20863,3953,{65535,6}},base=20863,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=25,aug3MAX=9,cost=500},--Iclamar +2/DMG/DEX/Attack
[1286]={trade={20863,3953,{65535,7}},base=20863,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=23,aug3MAX=7,cost=500},--Iclamar +2/DMG/DEX/Accuracy
[1287]={trade={20863,3953,{65535,8}},base=20863,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=143,aug3MAX=1,cost=500},--Iclamar +2/DMG/DEX/Double Attack
[1288]={trade={20863,3953,{65535,9}},base=20863,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=41,aug3MAX=1,cost=500},--Iclamar +2/DMG/DEX/Critical Hit Rate
[1289]={trade={20863,3953,{65535,10}},base=20863,aug1=287,aug1MAX=23,aug2=513,aug2MAX=23,aug3=134,aug3MAX=1,cost=500},--Iclamar +2/DMG/DEX/Magic Defense Bonus
[1290]={trade={20863,3953,{65535,11}},base=20863,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Iclamar +2/DMG/VIT/Attack
[1291]={trade={20863,3953,{65535,12}},base=20863,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Iclamar +2/DMG/VIT/Accuracy
[1292]={trade={20863,3953,{65535,13}},base=20863,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Iclamar +2/DMG/VIT/Double Attack
[1293]={trade={20863,3953,{65535,14}},base=20863,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Iclamar +2/DMG/VIT/Critical Hit Rate
[1294]={trade={20863,3953,{65535,15}},base=20863,aug1=287,aug1MAX=23,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Iclamar +2/DMG/VIT/Magic Defense Bonus
[1295]={trade={20863,3953,{65535,16}},base=20863,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Iclamar +2/DMG/AGI/Attack
[1296]={trade={20863,3953,{65535,17}},base=20863,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Iclamar +2/DMG/AGI/Accuracy
[1297]={trade={20863,3953,{65535,18}},base=20863,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Iclamar +2/DMG/AGI/Double Attack
[1298]={trade={20863,3953,{65535,19}},base=20863,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Iclamar +2/DMG/AGI/Critical Hit Rate
[1299]={trade={20863,3953,{65535,20}},base=20863,aug1=287,aug1MAX=23,aug2=515,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Iclamar +2/DMG/AGI/Magic Defense Bonus
[1300]={trade={20924,3956,{65535,1}},base=20924,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal/DMG/STR/Attack
[1301]={trade={20924,3956,{65535,2}},base=20924,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal/DMG/STR/Accuracy
[1302]={trade={20924,3956,{65535,3}},base=20924,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal/DMG/STR/Double Attack
[1303]={trade={20924,3956,{65535,4}},base=20924,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal/DMG/STR/Critical Hit Rate
[1304]={trade={20924,3956,{65535,5}},base=20924,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal/DMG/STR/Magic Defense Bonus
[1305]={trade={20924,3956,{65535,6}},base=20924,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal/DMG/DEX/Attack
[1306]={trade={20924,3956,{65535,7}},base=20924,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal/DMG/DEX/Accuracy
[1307]={trade={20924,3956,{65535,8}},base=20924,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal/DMG/DEX/Double Attack
[1308]={trade={20924,3956,{65535,9}},base=20924,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal/DMG/DEX/Critical Hit Rate
[1309]={trade={20924,3956,{65535,10}},base=20924,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal/DMG/DEX/Magic Defense Bonus
[1310]={trade={20924,3956,{65535,11}},base=20924,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal/DMG/VIT/Attack
[1311]={trade={20924,3956,{65535,12}},base=20924,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal/DMG/VIT/Accuracy
[1312]={trade={20924,3956,{65535,13}},base=20924,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal/DMG/VIT/Double Attack
[1313]={trade={20924,3956,{65535,14}},base=20924,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal/DMG/VIT/Critical Hit Rate
[1314]={trade={20924,3956,{65535,15}},base=20924,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal/DMG/VIT/Magic Defense Bonus
[1315]={trade={20924,3956,{65535,16}},base=20924,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal/DMG/AGI/Attack
[1316]={trade={20924,3956,{65535,17}},base=20924,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal/DMG/AGI/Accuracy
[1317]={trade={20924,3956,{65535,18}},base=20924,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal/DMG/AGI/Double Attack
[1318]={trade={20924,3956,{65535,19}},base=20924,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal/DMG/AGI/Critical Hit Rate
[1319]={trade={20924,3956,{65535,20}},base=20924,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal/DMG/AGI/Magic Defense Bonus
[1320]={trade={20915,4035,{65535,1}},base=20915,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal +1/DMG/STR/Attack
[1321]={trade={20915,4035,{65535,2}},base=20915,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal +1/DMG/STR/Accuracy
[1322]={trade={20915,4035,{65535,3}},base=20915,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal +1/DMG/STR/Double Attack
[1323]={trade={20915,4035,{65535,4}},base=20915,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal +1/DMG/STR/Critical Hit Rate
[1324]={trade={20915,4035,{65535,5}},base=20915,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal +1/DMG/STR/Magic Defense Bonus
[1325]={trade={20915,4035,{65535,6}},base=20915,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal +1/DMG/DEX/Attack
[1326]={trade={20915,4035,{65535,7}},base=20915,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal +1/DMG/DEX/Accuracy
[1327]={trade={20915,4035,{65535,8}},base=20915,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal +1/DMG/DEX/Double Attack
[1328]={trade={20915,4035,{65535,9}},base=20915,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal +1/DMG/DEX/Critical Hit Rate
[1329]={trade={20915,4035,{65535,10}},base=20915,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal +1/DMG/DEX/Magic Defense Bonus
[1330]={trade={20915,4035,{65535,11}},base=20915,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal +1/DMG/VIT/Attack
[1331]={trade={20915,4035,{65535,12}},base=20915,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal +1/DMG/VIT/Accuracy
[1332]={trade={20915,4035,{65535,13}},base=20915,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal +1/DMG/VIT/Double Attack
[1333]={trade={20915,4035,{65535,14}},base=20915,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal +1/DMG/VIT/Critical Hit Rate
[1334]={trade={20915,4035,{65535,15}},base=20915,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal +1/DMG/VIT/Magic Defense Bonus
[1335]={trade={20915,4035,{65535,16}},base=20915,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal +1/DMG/AGI/Attack
[1336]={trade={20915,4035,{65535,17}},base=20915,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal +1/DMG/AGI/Accuracy
[1337]={trade={20915,4035,{65535,18}},base=20915,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal +1/DMG/AGI/Double Attack
[1338]={trade={20915,4035,{65535,19}},base=20915,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal +1/DMG/AGI/Critical Hit Rate
[1339]={trade={20915,4035,{65535,20}},base=20915,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal +1/DMG/AGI/Magic Defense Bonus
[1340]={trade={20907,3953,{65535,1}},base=20907,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal +2/DMG/STR/Attack
[1341]={trade={20907,3953,{65535,2}},base=20907,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal +2/DMG/STR/Accuracy
[1342]={trade={20907,3953,{65535,3}},base=20907,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal +2/DMG/STR/Double Attack
[1343]={trade={20907,3953,{65535,4}},base=20907,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal +2/DMG/STR/Critical Hit Rate
[1344]={trade={20907,3953,{65535,5}},base=20907,aug1=287,aug1MAX=23,aug2=512,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal +2/DMG/STR/Magic Defense Bonus
[1345]={trade={20907,3953,{65535,6}},base=20907,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal +2/DMG/DEX/Attack
[1346]={trade={20907,3953,{65535,7}},base=20907,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal +2/DMG/DEX/Accuracy
[1347]={trade={20907,3953,{65535,8}},base=20907,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal +2/DMG/DEX/Double Attack
[1348]={trade={20907,3953,{65535,9}},base=20907,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal +2/DMG/DEX/Critical Hit Rate
[1349]={trade={20907,3953,{65535,10}},base=20907,aug1=287,aug1MAX=23,aug2=513,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal +2/DMG/DEX/Magic Defense Bonus
[1350]={trade={20907,3953,{65535,11}},base=20907,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=25,aug3MAX=23,cost=500},--Iizamal +2/DMG/VIT/Attack
[1351]={trade={20907,3953,{65535,12}},base=20907,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=23,aug3MAX=24,cost=500},--Iizamal +2/DMG/VIT/Accuracy
[1352]={trade={20907,3953,{65535,13}},base=20907,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=143,aug3MAX=1,cost=500},--Iizamal +2/DMG/VIT/Double Attack
[1353]={trade={20907,3953,{65535,14}},base=20907,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=41,aug3MAX=1,cost=500},--Iizamal +2/DMG/VIT/Critical Hit Rate
[1354]={trade={20907,3953,{65535,15}},base=20907,aug1=287,aug1MAX=23,aug2=514,aug2MAX=14,aug3=134,aug3MAX=1,cost=500},--Iizamal +2/DMG/VIT/Magic Defense Bonus
[1355]={trade={20907,3953,{65535,16}},base=20907,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=25,aug3MAX=23,cost=500},--Iizamal +2/DMG/AGI/Attack
[1356]={trade={20907,3953,{65535,17}},base=20907,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=23,aug3MAX=24,cost=500},--Iizamal +2/DMG/AGI/Accuracy
[1357]={trade={20907,3953,{65535,18}},base=20907,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Iizamal +2/DMG/AGI/Double Attack
[1358]={trade={20907,3953,{65535,19}},base=20907,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Iizamal +2/DMG/AGI/Critical Hit Rate
[1359]={trade={20907,3953,{65535,20}},base=20907,aug1=287,aug1MAX=23,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Iizamal +2/DMG/AGI/Magic Defense Bonus
[1360]={trade={20967,3956,{65535,1}},base=20967,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci/DMG/STR/Attack
[1361]={trade={20967,3956,{65535,2}},base=20967,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci/DMG/STR/Accuracy
[1362]={trade={20967,3956,{65535,3}},base=20967,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci/DMG/STR/Double Attack
[1363]={trade={20967,3956,{65535,4}},base=20967,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci/DMG/STR/Critical Hit Rate
[1364]={trade={20967,3956,{65535,5}},base=20967,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci/DMG/STR/Magic Defense Bonus
[1365]={trade={20967,3956,{65535,6}},base=20967,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=25,aug3MAX=6,cost=500},--Qatsunoci/DMG/DEX/Attack
[1366]={trade={20967,3956,{65535,7}},base=20967,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=23,aug3MAX=11,cost=500},--Qatsunoci/DMG/DEX/Accuracy
[1367]={trade={20967,3956,{65535,8}},base=20967,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=143,aug3MAX=1,cost=500},--Qatsunoci/DMG/DEX/Double Attack
[1368]={trade={20967,3956,{65535,9}},base=20967,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=41,aug3MAX=1,cost=500},--Qatsunoci/DMG/DEX/Critical Hit Rate
[1369]={trade={20967,3956,{65535,10}},base=20967,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=134,aug3MAX=1,cost=500},--Qatsunoci/DMG/DEX/Magic Defense Bonus
[1370]={trade={20967,3956,{65535,11}},base=20967,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci/DMG/VIT/Attack
[1371]={trade={20967,3956,{65535,12}},base=20967,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci/DMG/VIT/Accuracy
[1372]={trade={20967,3956,{65535,13}},base=20967,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci/DMG/VIT/Double Attack
[1373]={trade={20967,3956,{65535,14}},base=20967,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci/DMG/VIT/Critical Hit Rate
[1374]={trade={20967,3956,{65535,15}},base=20967,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci/DMG/VIT/Magic Defense Bonus
[1375]={trade={20967,3956,{65535,16}},base=20967,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci/DMG/AGI/Attack
[1376]={trade={20967,3956,{65535,17}},base=20967,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci/DMG/AGI/Accuracy
[1377]={trade={20967,3956,{65535,18}},base=20967,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci/DMG/AGI/Double Attack
[1378]={trade={20967,3956,{65535,19}},base=20967,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci/DMG/AGI/Critical Hit Rate
[1379]={trade={20967,3956,{65535,20}},base=20967,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci/DMG/AGI/Magic Defense Bonus
[1380]={trade={20961,4035,{65535,1}},base=20961,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +1/DMG/STR/Attack
[1381]={trade={20961,4035,{65535,2}},base=20961,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +1/DMG/STR/Accuracy
[1382]={trade={20961,4035,{65535,3}},base=20961,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/STR/Double Attack
[1383]={trade={20961,4035,{65535,4}},base=20961,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/STR/Critical Hit Rate
[1384]={trade={20961,4035,{65535,5}},base=20961,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/STR/Magic Defense Bonus
[1385]={trade={20961,4035,{65535,6}},base=20961,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +1/DMG/DEX/Attack
[1386]={trade={20961,4035,{65535,7}},base=20961,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +1/DMG/DEX/Accuracy
[1387]={trade={20961,4035,{65535,8}},base=20961,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/DEX/Double Attack
[1388]={trade={20961,4035,{65535,9}},base=20961,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/DEX/Critical Hit Rate
[1389]={trade={20961,4035,{65535,10}},base=20961,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/DEX/Magic Defense Bonus
[1390]={trade={20961,4035,{65535,11}},base=20961,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +1/DMG/VIT/Attack
[1391]={trade={20961,4035,{65535,12}},base=20961,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +1/DMG/VIT/Accuracy
[1392]={trade={20961,4035,{65535,13}},base=20961,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/VIT/Double Attack
[1393]={trade={20961,4035,{65535,14}},base=20961,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/VIT/Critical Hit Rate
[1394]={trade={20961,4035,{65535,15}},base=20961,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/VIT/Magic Defense Bonus
[1395]={trade={20961,4035,{65535,16}},base=20961,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +1/DMG/AGI/Attack
[1396]={trade={20961,4035,{65535,17}},base=20961,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +1/DMG/AGI/Accuracy
[1397]={trade={20961,4035,{65535,18}},base=20961,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/AGI/Double Attack
[1398]={trade={20961,4035,{65535,19}},base=20961,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/AGI/Critical Hit Rate
[1399]={trade={20961,4035,{65535,20}},base=20961,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +1/DMG/AGI/Magic Defense Bonus
[1400]={trade={20952,3953,{65535,1}},base=20952,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +2/DMG/STR/Attack
[1401]={trade={20952,3953,{65535,2}},base=20952,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +2/DMG/STR/Accuracy
[1402]={trade={20952,3953,{65535,3}},base=20952,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/STR/Double Attack
[1403]={trade={20952,3953,{65535,4}},base=20952,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/STR/Critical Hit Rate
[1404]={trade={20952,3953,{65535,5}},base=20952,aug1=287,aug1MAX=25,aug2=512,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/STR/Magic Defense Bonus
[1405]={trade={20952,3953,{65535,6}},base=20952,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +2/DMG/DEX/Attack
[1406]={trade={20952,3953,{65535,7}},base=20952,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +2/DMG/DEX/Accuracy
[1407]={trade={20952,3953,{65535,8}},base=20952,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/DEX/Double Attack
[1408]={trade={20952,3953,{65535,9}},base=20952,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/DEX/Critical Hit Rate
[1409]={trade={20952,3953,{65535,10}},base=20952,aug1=287,aug1MAX=25,aug2=513,aug2MAX=3,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/DEX/Magic Defense Bonus
[1410]={trade={20952,3953,{65535,11}},base=20952,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +2/DMG/VIT/Attack
[1411]={trade={20952,3953,{65535,12}},base=20952,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +2/DMG/VIT/Accuracy
[1412]={trade={20952,3953,{65535,13}},base=20952,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/VIT/Double Attack
[1413]={trade={20952,3953,{65535,14}},base=20952,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/VIT/Critical Hit Rate
[1414]={trade={20952,3953,{65535,15}},base=20952,aug1=287,aug1MAX=25,aug2=514,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/VIT/Magic Defense Bonus
[1415]={trade={20952,3953,{65535,16}},base=20952,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=25,aug3MAX=6,cost=500},--Qatsunoci +2/DMG/AGI/Attack
[1416]={trade={20952,3953,{65535,17}},base=20952,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=23,aug3MAX=11,cost=500},--Qatsunoci +2/DMG/AGI/Accuracy
[1417]={trade={20952,3953,{65535,18}},base=20952,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=143,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/AGI/Double Attack
[1418]={trade={20952,3953,{65535,19}},base=20952,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=41,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/AGI/Critical Hit Rate
[1419]={trade={20952,3953,{65535,20}},base=20952,aug1=287,aug1MAX=25,aug2=515,aug2MAX=8,aug3=134,aug3MAX=1,cost=500},--Qatsunoci +2/DMG/AGI/Magic Defense Bonus
[1420]={trade={21013,3956,{65535,1}},base=21013,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=25,aug3MAX=9,cost=500},--Kannakiri/DMG/STR/Attack
[1421]={trade={21013,3956,{65535,2}},base=21013,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Kannakiri/DMG/STR/Accuracy
[1422]={trade={21013,3956,{65535,3}},base=21013,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Kannakiri/DMG/STR/Double Attack
[1423]={trade={21013,3956,{65535,4}},base=21013,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Kannakiri/DMG/STR/Critical Hit Rate
[1424]={trade={21013,3956,{65535,5}},base=21013,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Kannakiri/DMG/STR/Magic Defense Bonus
[1425]={trade={21013,3956,{65535,6}},base=21013,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Kannakiri/DMG/DEX/Attack
[1426]={trade={21013,3956,{65535,7}},base=21013,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Kannakiri/DMG/DEX/Accuracy
[1427]={trade={21013,3956,{65535,8}},base=21013,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Kannakiri/DMG/DEX/Double Attack
[1428]={trade={21013,3956,{65535,9}},base=21013,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Kannakiri/DMG/DEX/Critical Hit Rate
[1429]={trade={21013,3956,{65535,10}},base=21013,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Kannakiri/DMG/DEX/Magic Defense Bonus
[1430]={trade={21013,3956,{65535,11}},base=21013,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri/DMG/VIT/Attack
[1431]={trade={21013,3956,{65535,12}},base=21013,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri/DMG/VIT/Accuracy
[1432]={trade={21013,3956,{65535,13}},base=21013,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri/DMG/VIT/Double Attack
[1433]={trade={21013,3956,{65535,14}},base=21013,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri/DMG/VIT/Critical Hit Rate
[1434]={trade={21013,3956,{65535,15}},base=21013,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri/DMG/VIT/Magic Defense Bonus
[1435]={trade={21013,3956,{65535,16}},base=21013,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri/DMG/AGI/Attack
[1436]={trade={21013,3956,{65535,17}},base=21013,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri/DMG/AGI/Accuracy
[1437]={trade={21013,3956,{65535,18}},base=21013,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri/DMG/AGI/Double Attack
[1438]={trade={21013,3956,{65535,19}},base=21013,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri/DMG/AGI/Critical Hit Rate
[1439]={trade={21013,3956,{65535,20}},base=21013,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri/DMG/AGI/Magic Defense Bonus
[1440]={trade={21004,4035,{65535,1}},base=21004,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=25,aug3MAX=9,cost=500},--Kannakiri +1/DMG/STR/Attack
[1441]={trade={21004,4035,{65535,2}},base=21004,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Kannakiri +1/DMG/STR/Accuracy
[1442]={trade={21004,4035,{65535,3}},base=21004,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Kannakiri +1/DMG/STR/Double Attack
[1443]={trade={21004,4035,{65535,4}},base=21004,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Kannakiri +1/DMG/STR/Critical Hit Rate
[1444]={trade={21004,4035,{65535,5}},base=21004,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Kannakiri +1/DMG/STR/Magic Defense Bonus
[1445]={trade={21004,4035,{65535,6}},base=21004,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Kannakiri +1/DMG/DEX/Attack
[1446]={trade={21004,4035,{65535,7}},base=21004,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Kannakiri +1/DMG/DEX/Accuracy
[1447]={trade={21004,4035,{65535,8}},base=21004,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Kannakiri +1/DMG/DEX/Double Attack
[1448]={trade={21004,4035,{65535,9}},base=21004,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Kannakiri +1/DMG/DEX/Critical Hit Rate
[1449]={trade={21004,4035,{65535,10}},base=21004,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Kannakiri +1/DMG/DEX/Magic Defense Bonus
[1450]={trade={21004,4035,{65535,11}},base=21004,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri +1/DMG/VIT/Attack
[1451]={trade={21004,4035,{65535,12}},base=21004,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri +1/DMG/VIT/Accuracy
[1452]={trade={21004,4035,{65535,13}},base=21004,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri +1/DMG/VIT/Double Attack
[1453]={trade={21004,4035,{65535,14}},base=21004,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri +1/DMG/VIT/Critical Hit Rate
[1454]={trade={21004,4035,{65535,15}},base=21004,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri +1/DMG/VIT/Magic Defense Bonus
[1455]={trade={21004,4035,{65535,16}},base=21004,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri +1/DMG/AGI/Attack
[1456]={trade={21004,4035,{65535,17}},base=21004,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri +1/DMG/AGI/Accuracy
[1457]={trade={21004,4035,{65535,18}},base=21004,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri +1/DMG/AGI/Double Attack
[1458]={trade={21004,4035,{65535,19}},base=21004,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri +1/DMG/AGI/Critical Hit Rate
[1459]={trade={21004,4035,{65535,20}},base=21004,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri +1/DMG/AGI/Magic Defense Bonus
[1460]={trade={20996,3953,{65535,1}},base=20996,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=25,aug3MAX=9,cost=500},--Kannakiri +2/DMG/STR/Attack
[1461]={trade={20996,3953,{65535,2}},base=20996,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Kannakiri +2/DMG/STR/Accuracy
[1462]={trade={20996,3953,{65535,3}},base=20996,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Kannakiri +2/DMG/STR/Double Attack
[1463]={trade={20996,3953,{65535,4}},base=20996,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Kannakiri +2/DMG/STR/Critical Hit Rate
[1464]={trade={20996,3953,{65535,5}},base=20996,aug1=287,aug1MAX=11,aug2=512,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Kannakiri +2/DMG/STR/Magic Defense Bonus
[1465]={trade={20996,3953,{65535,6}},base=20996,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=25,aug3MAX=9,cost=500},--Kannakiri +2/DMG/DEX/Attack
[1466]={trade={20996,3953,{65535,7}},base=20996,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Kannakiri +2/DMG/DEX/Accuracy
[1467]={trade={20996,3953,{65535,8}},base=20996,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Kannakiri +2/DMG/DEX/Double Attack
[1468]={trade={20996,3953,{65535,9}},base=20996,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Kannakiri +2/DMG/DEX/Critical Hit Rate
[1469]={trade={20996,3953,{65535,10}},base=20996,aug1=287,aug1MAX=11,aug2=513,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Kannakiri +2/DMG/DEX/Magic Defense Bonus
[1470]={trade={20996,3953,{65535,11}},base=20996,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri +2/DMG/VIT/Attack
[1471]={trade={20996,3953,{65535,12}},base=20996,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri +2/DMG/VIT/Accuracy
[1472]={trade={20996,3953,{65535,13}},base=20996,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri +2/DMG/VIT/Double Attack
[1473]={trade={20996,3953,{65535,14}},base=20996,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri +2/DMG/VIT/Critical Hit Rate
[1474]={trade={20996,3953,{65535,15}},base=20996,aug1=287,aug1MAX=11,aug2=514,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri +2/DMG/VIT/Magic Defense Bonus
[1475]={trade={20996,3953,{65535,16}},base=20996,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=25,aug3MAX=9,cost=500},--Kannakiri +2/DMG/AGI/Attack
[1476]={trade={20996,3953,{65535,17}},base=20996,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=23,aug3MAX=7,cost=500},--Kannakiri +2/DMG/AGI/Accuracy
[1477]={trade={20996,3953,{65535,18}},base=20996,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Kannakiri +2/DMG/AGI/Double Attack
[1478]={trade={20996,3953,{65535,19}},base=20996,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Kannakiri +2/DMG/AGI/Critical Hit Rate
[1479]={trade={20996,3953,{65535,20}},base=20996,aug1=287,aug1MAX=11,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Kannakiri +2/DMG/AGI/Magic Defense Bonus
[1480]={trade={21058,3956,{65535,1}},base=21058,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=25,aug3MAX=5,cost=500},--Shichishito/DMG/STR/Attack
[1481]={trade={21058,3956,{65535,2}},base=21058,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Shichishito/DMG/STR/Accuracy
[1482]={trade={21058,3956,{65535,3}},base=21058,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Shichishito/DMG/STR/Double Attack
[1483]={trade={21058,3956,{65535,4}},base=21058,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Shichishito/DMG/STR/Critical Hit Rate
[1484]={trade={21058,3956,{65535,5}},base=21058,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Shichishito/DMG/STR/Magic Defense Bonus
[1485]={trade={21058,3956,{65535,6}},base=21058,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito/DMG/DEX/Attack
[1486]={trade={21058,3956,{65535,7}},base=21058,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito/DMG/DEX/Accuracy
[1487]={trade={21058,3956,{65535,8}},base=21058,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito/DMG/DEX/Double Attack
[1488]={trade={21058,3956,{65535,9}},base=21058,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito/DMG/DEX/Critical Hit Rate
[1489]={trade={21058,3956,{65535,10}},base=21058,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito/DMG/DEX/Magic Defense Bonus
[1490]={trade={21058,3956,{65535,11}},base=21058,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=25,aug3MAX=5,cost=500},--Shichishito/DMG/VIT/Attack
[1491]={trade={21058,3956,{65535,12}},base=21058,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Shichishito/DMG/VIT/Accuracy
[1492]={trade={21058,3956,{65535,13}},base=21058,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Shichishito/DMG/VIT/Double Attack
[1493]={trade={21058,3956,{65535,14}},base=21058,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Shichishito/DMG/VIT/Critical Hit Rate
[1494]={trade={21058,3956,{65535,15}},base=21058,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Shichishito/DMG/VIT/Magic Defense Bonus
[1495]={trade={21058,3956,{65535,16}},base=21058,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito/DMG/AGI/Attack
[1496]={trade={21058,3956,{65535,17}},base=21058,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito/DMG/AGI/Accuracy
[1497]={trade={21058,3956,{65535,18}},base=21058,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito/DMG/AGI/Double Attack
[1498]={trade={21058,3956,{65535,19}},base=21058,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito/DMG/AGI/Critical Hit Rate
[1499]={trade={21058,3956,{65535,20}},base=21058,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito/DMG/AGI/Magic Defense Bonus
[1500]={trade={21051,4035,{65535,1}},base=21051,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=25,aug3MAX=5,cost=500},--Shichishito +1/DMG/STR/Attack
[1501]={trade={21051,4035,{65535,2}},base=21051,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Shichishito +1/DMG/STR/Accuracy
[1502]={trade={21051,4035,{65535,3}},base=21051,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Shichishito +1/DMG/STR/Double Attack
[1503]={trade={21051,4035,{65535,4}},base=21051,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Shichishito +1/DMG/STR/Critical Hit Rate
[1504]={trade={21051,4035,{65535,5}},base=21051,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Shichishito +1/DMG/STR/Magic Defense Bonus
[1505]={trade={21051,4035,{65535,6}},base=21051,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito +1/DMG/DEX/Attack
[1506]={trade={21051,4035,{65535,7}},base=21051,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito +1/DMG/DEX/Accuracy
[1507]={trade={21051,4035,{65535,8}},base=21051,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito +1/DMG/DEX/Double Attack
[1508]={trade={21051,4035,{65535,9}},base=21051,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito +1/DMG/DEX/Critical Hit Rate
[1509]={trade={21051,4035,{65535,10}},base=21051,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito +1/DMG/DEX/Magic Defense Bonus
[1510]={trade={21051,4035,{65535,11}},base=21051,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=25,aug3MAX=5,cost=500},--Shichishito +1/DMG/VIT/Attack
[1511]={trade={21051,4035,{65535,12}},base=21051,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Shichishito +1/DMG/VIT/Accuracy
[1512]={trade={21051,4035,{65535,13}},base=21051,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Shichishito +1/DMG/VIT/Double Attack
[1513]={trade={21051,4035,{65535,14}},base=21051,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Shichishito +1/DMG/VIT/Critical Hit Rate
[1514]={trade={21051,4035,{65535,15}},base=21051,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Shichishito +1/DMG/VIT/Magic Defense Bonus
[1515]={trade={21051,4035,{65535,16}},base=21051,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito +1/DMG/AGI/Attack
[1516]={trade={21051,4035,{65535,17}},base=21051,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito +1/DMG/AGI/Accuracy
[1517]={trade={21051,4035,{65535,18}},base=21051,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito +1/DMG/AGI/Double Attack
[1518]={trade={21051,4035,{65535,19}},base=21051,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito +1/DMG/AGI/Critical Hit Rate
[1519]={trade={21051,4035,{65535,20}},base=21051,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito +1/DMG/AGI/Magic Defense Bonus
[1520]={trade={21043,3953,{65535,1}},base=21043,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=25,aug3MAX=5,cost=500},--Shichishito +2/DMG/STR/Attack
[1521]={trade={21043,3953,{65535,2}},base=21043,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=23,aug3MAX=7,cost=500},--Shichishito +2/DMG/STR/Accuracy
[1522]={trade={21043,3953,{65535,3}},base=21043,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=143,aug3MAX=1,cost=500},--Shichishito +2/DMG/STR/Double Attack
[1523]={trade={21043,3953,{65535,4}},base=21043,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=41,aug3MAX=1,cost=500},--Shichishito +2/DMG/STR/Critical Hit Rate
[1524]={trade={21043,3953,{65535,5}},base=21043,aug1=287,aug1MAX=23,aug2=512,aug2MAX=9,aug3=134,aug3MAX=1,cost=500},--Shichishito +2/DMG/STR/Magic Defense Bonus
[1525]={trade={21043,3953,{65535,6}},base=21043,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito +2/DMG/DEX/Attack
[1526]={trade={21043,3953,{65535,7}},base=21043,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito +2/DMG/DEX/Accuracy
[1527]={trade={21043,3953,{65535,8}},base=21043,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito +2/DMG/DEX/Double Attack
[1528]={trade={21043,3953,{65535,9}},base=21043,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito +2/DMG/DEX/Critical Hit Rate
[1529]={trade={21043,3953,{65535,10}},base=21043,aug1=287,aug1MAX=23,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito +2/DMG/DEX/Magic Defense Bonus
[1530]={trade={21043,3953,{65535,11}},base=21043,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=25,aug3MAX=5,cost=500},--Shichishito +2/DMG/VIT/Attack
[1531]={trade={21043,3953,{65535,12}},base=21043,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=23,aug3MAX=7,cost=500},--Shichishito +2/DMG/VIT/Accuracy
[1532]={trade={21043,3953,{65535,13}},base=21043,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=143,aug3MAX=1,cost=500},--Shichishito +2/DMG/VIT/Double Attack
[1533]={trade={21043,3953,{65535,14}},base=21043,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=41,aug3MAX=1,cost=500},--Shichishito +2/DMG/VIT/Critical Hit Rate
[1534]={trade={21043,3953,{65535,15}},base=21043,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=134,aug3MAX=1,cost=500},--Shichishito +2/DMG/VIT/Magic Defense Bonus
[1535]={trade={21043,3953,{65535,16}},base=21043,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=25,aug3MAX=5,cost=500},--Shichishito +2/DMG/AGI/Attack
[1536]={trade={21043,3953,{65535,17}},base=21043,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=23,aug3MAX=7,cost=500},--Shichishito +2/DMG/AGI/Accuracy
[1537]={trade={21043,3953,{65535,18}},base=21043,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Shichishito +2/DMG/AGI/Double Attack
[1538]={trade={21043,3953,{65535,19}},base=21043,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Shichishito +2/DMG/AGI/Critical Hit Rate
[1539]={trade={21043,3953,{65535,20}},base=21043,aug1=287,aug1MAX=23,aug2=515,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Shichishito +2/DMG/AGI/Magic Defense Bonus
[1540]={trade={21132,3956,{65535,1}},base=21132,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold/DMG/STR/Attack
[1541]={trade={21132,3956,{65535,2}},base=21132,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold/DMG/STR/Accuracy
[1542]={trade={21132,3956,{65535,3}},base=21132,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold/DMG/STR/Double Attack
[1543]={trade={21132,3956,{65535,4}},base=21132,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold/DMG/STR/Critical Hit Rate
[1544]={trade={21132,3956,{65535,5}},base=21132,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold/DMG/STR/Magic Defense Bonus
[1545]={trade={21132,3956,{65535,6}},base=21132,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold/DMG/DEX/Attack
[1546]={trade={21132,3956,{65535,7}},base=21132,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold/DMG/DEX/Accuracy
[1547]={trade={21132,3956,{65535,8}},base=21132,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold/DMG/DEX/Double Attack
[1548]={trade={21132,3956,{65535,9}},base=21132,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold/DMG/DEX/Critical Hit Rate
[1549]={trade={21132,3956,{65535,10}},base=21132,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold/DMG/DEX/Magic Defense Bonus
[1550]={trade={21132,3956,{65535,11}},base=21132,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=25,aug3MAX=14,cost=500},--Aedold/DMG/VIT/Attack
[1551]={trade={21132,3956,{65535,12}},base=21132,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=23,aug3MAX=6,cost=500},--Aedold/DMG/VIT/Accuracy
[1552]={trade={21132,3956,{65535,13}},base=21132,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Aedold/DMG/VIT/Double Attack
[1553]={trade={21132,3956,{65535,14}},base=21132,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Aedold/DMG/VIT/Critical Hit Rate
[1554]={trade={21132,3956,{65535,15}},base=21132,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=134,aug3MAX=1,cost=500},--Aedold/DMG/VIT/Magic Defense Bonus
[1555]={trade={21132,3956,{65535,16}},base=21132,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=25,aug3MAX=14,cost=500},--Aedold/DMG/AGI/Attack
[1556]={trade={21132,3956,{65535,17}},base=21132,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=23,aug3MAX=6,cost=500},--Aedold/DMG/AGI/Accuracy
[1557]={trade={21132,3956,{65535,18}},base=21132,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Aedold/DMG/AGI/Double Attack
[1558]={trade={21132,3956,{65535,19}},base=21132,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Aedold/DMG/AGI/Critical Hit Rate
[1559]={trade={21132,3956,{65535,20}},base=21132,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Aedold/DMG/AGI/Magic Defense Bonus
[1560]={trade={21126,4035,{65535,1}},base=21126,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold +1/DMG/STR/Attack
[1561]={trade={21126,4035,{65535,2}},base=21126,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold +1/DMG/STR/Accuracy
[1562]={trade={21126,4035,{65535,3}},base=21126,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold +1/DMG/STR/Double Attack
[1563]={trade={21126,4035,{65535,4}},base=21126,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold +1/DMG/STR/Critical Hit Rate
[1564]={trade={21126,4035,{65535,5}},base=21126,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold +1/DMG/STR/Magic Defense Bonus
[1565]={trade={21126,4035,{65535,6}},base=21126,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold +1/DMG/DEX/Attack
[1566]={trade={21126,4035,{65535,7}},base=21126,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold +1/DMG/DEX/Accuracy
[1567]={trade={21126,4035,{65535,8}},base=21126,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold +1/DMG/DEX/Double Attack
[1568]={trade={21126,4035,{65535,9}},base=21126,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold +1/DMG/DEX/Critical Hit Rate
[1569]={trade={21126,4035,{65535,10}},base=21126,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold +1/DMG/DEX/Magic Defense Bonus
[1570]={trade={21126,4035,{65535,11}},base=21126,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=25,aug3MAX=14,cost=500},--Aedold +1/DMG/VIT/Attack
[1571]={trade={21126,4035,{65535,12}},base=21126,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=23,aug3MAX=6,cost=500},--Aedold +1/DMG/VIT/Accuracy
[1572]={trade={21126,4035,{65535,13}},base=21126,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Aedold +1/DMG/VIT/Double Attack
[1573]={trade={21126,4035,{65535,14}},base=21126,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Aedold +1/DMG/VIT/Critical Hit Rate
[1574]={trade={21126,4035,{65535,15}},base=21126,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=134,aug3MAX=1,cost=500},--Aedold +1/DMG/VIT/Magic Defense Bonus
[1575]={trade={21126,4035,{65535,16}},base=21126,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=25,aug3MAX=14,cost=500},--Aedold +1/DMG/AGI/Attack
[1576]={trade={21126,4035,{65535,17}},base=21126,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=23,aug3MAX=6,cost=500},--Aedold +1/DMG/AGI/Accuracy
[1577]={trade={21126,4035,{65535,18}},base=21126,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Aedold +1/DMG/AGI/Double Attack
[1578]={trade={21126,4035,{65535,19}},base=21126,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Aedold +1/DMG/AGI/Critical Hit Rate
[1579]={trade={21126,4035,{65535,20}},base=21126,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Aedold +1/DMG/AGI/Magic Defense Bonus
[1580]={trade={21115,3953,{65535,1}},base=21115,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold +2/DMG/STR/Attack
[1581]={trade={21115,3953,{65535,2}},base=21115,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold +2/DMG/STR/Accuracy
[1582]={trade={21115,3953,{65535,3}},base=21115,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold +2/DMG/STR/Double Attack
[1583]={trade={21115,3953,{65535,4}},base=21115,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold +2/DMG/STR/Critical Hit Rate
[1584]={trade={21115,3953,{65535,5}},base=21115,aug1=287,aug1MAX=14,aug2=512,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold +2/DMG/STR/Magic Defense Bonus
[1585]={trade={21115,3953,{65535,6}},base=21115,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=25,aug3MAX=14,cost=500},--Aedold +2/DMG/DEX/Attack
[1586]={trade={21115,3953,{65535,7}},base=21115,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=23,aug3MAX=6,cost=500},--Aedold +2/DMG/DEX/Accuracy
[1587]={trade={21115,3953,{65535,8}},base=21115,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=143,aug3MAX=1,cost=500},--Aedold +2/DMG/DEX/Double Attack
[1588]={trade={21115,3953,{65535,9}},base=21115,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=41,aug3MAX=1,cost=500},--Aedold +2/DMG/DEX/Critical Hit Rate
[1589]={trade={21115,3953,{65535,10}},base=21115,aug1=287,aug1MAX=14,aug2=513,aug2MAX=6,aug3=134,aug3MAX=1,cost=500},--Aedold +2/DMG/DEX/Magic Defense Bonus
[1590]={trade={21115,3953,{65535,11}},base=21115,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=25,aug3MAX=14,cost=500},--Aedold +2/DMG/VIT/Attack
[1591]={trade={21115,3953,{65535,12}},base=21115,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=23,aug3MAX=6,cost=500},--Aedold +2/DMG/VIT/Accuracy
[1592]={trade={21115,3953,{65535,13}},base=21115,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=143,aug3MAX=1,cost=500},--Aedold +2/DMG/VIT/Double Attack
[1593]={trade={21115,3953,{65535,14}},base=21115,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=41,aug3MAX=1,cost=500},--Aedold +2/DMG/VIT/Critical Hit Rate
[1594]={trade={21115,3953,{65535,15}},base=21115,aug1=287,aug1MAX=14,aug2=514,aug2MAX=4,aug3=134,aug3MAX=1,cost=500},--Aedold +2/DMG/VIT/Magic Defense Bonus
[1595]={trade={21115,3953,{65535,16}},base=21115,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=25,aug3MAX=14,cost=500},--Aedold +2/DMG/AGI/Attack
[1596]={trade={21115,3953,{65535,17}},base=21115,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=23,aug3MAX=6,cost=500},--Aedold +2/DMG/AGI/Accuracy
[1597]={trade={21115,3953,{65535,18}},base=21115,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=143,aug3MAX=1,cost=500},--Aedold +2/DMG/AGI/Double Attack
[1598]={trade={21115,3953,{65535,19}},base=21115,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=41,aug3MAX=1,cost=500},--Aedold +2/DMG/AGI/Critical Hit Rate
[1599]={trade={21115,3953,{65535,20}},base=21115,aug1=287,aug1MAX=14,aug2=515,aug2MAX=5,aug3=134,aug3MAX=1,cost=500},--Aedold +2/DMG/AGI/Magic Defense Bonus
[1600]={trade={21242,3956,{65535,1}},base=21242,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni/DMG/STR/Ranged Attack
[1601]={trade={21242,3956,{65535,2}},base=21242,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni/DMG/STR/Ranged Accuracy
[1602]={trade={21242,3956,{65535,3}},base=21242,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni/DMG/STR/Recycle
[1603]={trade={21242,3956,{65535,4}},base=21242,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni/DMG/STR/Snapshot
[1604]={trade={21242,3956,{65535,5}},base=21242,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni/DMG/STR/Enmity-
[1605]={trade={21242,3956,{65535,6}},base=21242,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni/DMG/DEX/Ranged Attack
[1606]={trade={21242,3956,{65535,7}},base=21242,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni/DMG/DEX/Ranged Accuracy
[1607]={trade={21242,3956,{65535,8}},base=21242,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni/DMG/DEX/Recycle
[1608]={trade={21242,3956,{65535,9}},base=21242,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni/DMG/DEX/Snapshot
[1609]={trade={21242,3956,{65535,10}},base=21242,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni/DMG/DEX/Enmity-
[1610]={trade={21242,3956,{65535,11}},base=21242,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni/DMG/VIT/Ranged Attack
[1611]={trade={21242,3956,{65535,12}},base=21242,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni/DMG/VIT/Ranged Accuracy
[1612]={trade={21242,3956,{65535,13}},base=21242,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni/DMG/VIT/Recycle
[1613]={trade={21242,3956,{65535,14}},base=21242,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni/DMG/VIT/Snapshot
[1614]={trade={21242,3956,{65535,15}},base=21242,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni/DMG/VIT/Enmity-
[1615]={trade={21242,3956,{65535,16}},base=21242,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni/DMG/AGI/Ranged Attack
[1616]={trade={21242,3956,{65535,17}},base=21242,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni/DMG/AGI/Ranged Accuracy
[1617]={trade={21242,3956,{65535,18}},base=21242,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni/DMG/AGI/Recycle
[1618]={trade={21242,3956,{65535,19}},base=21242,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni/DMG/AGI/Snapshot
[1619]={trade={21242,3956,{65535,20}},base=21242,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni/DMG/AGI/Enmity-
[1620]={trade={21236,4035,{65535,1}},base=21236,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni +1/DMG/STR/Ranged Attack
[1621]={trade={21236,4035,{65535,2}},base=21236,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni +1/DMG/STR/Ranged Accuracy
[1622]={trade={21236,4035,{65535,3}},base=21236,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni +1/DMG/STR/Recycle
[1623]={trade={21236,4035,{65535,4}},base=21236,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni +1/DMG/STR/Snapshot
[1624]={trade={21236,4035,{65535,5}},base=21236,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni +1/DMG/STR/Enmity-
[1625]={trade={21236,4035,{65535,6}},base=21236,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni +1/DMG/DEX/Ranged Attack
[1626]={trade={21236,4035,{65535,7}},base=21236,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni +1/DMG/DEX/Ranged Accuracy
[1627]={trade={21236,4035,{65535,8}},base=21236,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni +1/DMG/DEX/Recycle
[1628]={trade={21236,4035,{65535,9}},base=21236,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni +1/DMG/DEX/Snapshot
[1629]={trade={21236,4035,{65535,10}},base=21236,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni +1/DMG/DEX/Enmity-
[1630]={trade={21236,4035,{65535,11}},base=21236,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni +1/DMG/VIT/Ranged Attack
[1631]={trade={21236,4035,{65535,12}},base=21236,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni +1/DMG/VIT/Ranged Accuracy
[1632]={trade={21236,4035,{65535,13}},base=21236,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni +1/DMG/VIT/Recycle
[1633]={trade={21236,4035,{65535,14}},base=21236,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni +1/DMG/VIT/Snapshot
[1634]={trade={21236,4035,{65535,15}},base=21236,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni +1/DMG/VIT/Enmity-
[1635]={trade={21236,4035,{65535,16}},base=21236,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni +1/DMG/AGI/Ranged Attack
[1636]={trade={21236,4035,{65535,17}},base=21236,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni +1/DMG/AGI/Ranged Accuracy
[1637]={trade={21236,4035,{65535,18}},base=21236,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni +1/DMG/AGI/Recycle
[1638]={trade={21236,4035,{65535,19}},base=21236,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni +1/DMG/AGI/Snapshot
[1639]={trade={21236,4035,{65535,20}},base=21236,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni +1/DMG/AGI/Enmity-
[1640]={trade={21230,3953,{65535,1}},base=21230,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni +2/DMG/STR/Ranged Attack
[1641]={trade={21230,3953,{65535,2}},base=21230,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni +2/DMG/STR/Ranged Accuracy
[1642]={trade={21230,3953,{65535,3}},base=21230,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni +2/DMG/STR/Recycle
[1643]={trade={21230,3953,{65535,4}},base=21230,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni +2/DMG/STR/Snapshot
[1644]={trade={21230,3953,{65535,5}},base=21230,aug1=287,aug1MAX=23,aug2=512,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni +2/DMG/STR/Enmity-
[1645]={trade={21230,3953,{65535,6}},base=21230,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni +2/DMG/DEX/Ranged Attack
[1646]={trade={21230,3953,{65535,7}},base=21230,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni +2/DMG/DEX/Ranged Accuracy
[1647]={trade={21230,3953,{65535,8}},base=21230,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni +2/DMG/DEX/Recycle
[1648]={trade={21230,3953,{65535,9}},base=21230,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni +2/DMG/DEX/Snapshot
[1649]={trade={21230,3953,{65535,10}},base=21230,aug1=287,aug1MAX=23,aug2=513,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni +2/DMG/DEX/Enmity-
[1650]={trade={21230,3953,{65535,11}},base=21230,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=29,aug3MAX=14,cost=500},--Bocluamni +2/DMG/VIT/Ranged Attack
[1651]={trade={21230,3953,{65535,12}},base=21230,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=27,aug3MAX=14,cost=500},--Bocluamni +2/DMG/VIT/Ranged Accuracy
[1652]={trade={21230,3953,{65535,13}},base=21230,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=212,aug3MAX=2,cost=500},--Bocluamni +2/DMG/VIT/Recycle
[1653]={trade={21230,3953,{65535,14}},base=21230,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=211,aug3MAX=2,cost=500},--Bocluamni +2/DMG/VIT/Snapshot
[1654]={trade={21230,3953,{65535,15}},base=21230,aug1=287,aug1MAX=23,aug2=514,aug2MAX=7,aug3=40,aug3MAX=2,cost=500},--Bocluamni +2/DMG/VIT/Enmity-
[1655]={trade={21230,3953,{65535,16}},base=21230,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=29,aug3MAX=14,cost=500},--Bocluamni +2/DMG/AGI/Ranged Attack
[1656]={trade={21230,3953,{65535,17}},base=21230,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=27,aug3MAX=14,cost=500},--Bocluamni +2/DMG/AGI/Ranged Accuracy
[1657]={trade={21230,3953,{65535,18}},base=21230,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=212,aug3MAX=2,cost=500},--Bocluamni +2/DMG/AGI/Recycle
[1658]={trade={21230,3953,{65535,19}},base=21230,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=211,aug3MAX=2,cost=500},--Bocluamni +2/DMG/AGI/Snapshot
[1659]={trade={21230,3953,{65535,20}},base=21230,aug1=287,aug1MAX=23,aug2=515,aug2MAX=17,aug3=40,aug3MAX=2,cost=500},--Bocluamni +2/DMG/AGI/Enmity-
[1660]={trade={21294,3956,{65535,1}},base=21294,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=29,aug3MAX=7,cost=500},--Hgafircian/DMG/STR/Ranged Attack
[1661]={trade={21294,3956,{65535,2}},base=21294,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=27,aug3MAX=12,cost=500},--Hgafircian/DMG/STR/Ranged Accuracy
[1662]={trade={21294,3956,{65535,3}},base=21294,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=212,aug3MAX=0,cost=500},--Hgafircian/DMG/STR/Recycle
[1663]={trade={21294,3956,{65535,4}},base=21294,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=211,aug3MAX=0,cost=500},--Hgafircian/DMG/STR/Snapshot
[1664]={trade={21294,3956,{65535,5}},base=21294,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=40,aug3MAX=4,cost=500},--Hgafircian/DMG/STR/Enmity-
[1665]={trade={21294,3956,{65535,6}},base=21294,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=29,aug3MAX=7,cost=500},--Hgafircian/DMG/DEX/Ranged Attack
[1666]={trade={21294,3956,{65535,7}},base=21294,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=27,aug3MAX=12,cost=500},--Hgafircian/DMG/DEX/Ranged Accuracy
[1667]={trade={21294,3956,{65535,8}},base=21294,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=212,aug3MAX=0,cost=500},--Hgafircian/DMG/DEX/Recycle
[1668]={trade={21294,3956,{65535,9}},base=21294,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=211,aug3MAX=0,cost=500},--Hgafircian/DMG/DEX/Snapshot
[1669]={trade={21294,3956,{65535,10}},base=21294,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=40,aug3MAX=4,cost=500},--Hgafircian/DMG/DEX/Enmity-
[1670]={trade={21294,3956,{65535,11}},base=21294,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=29,aug3MAX=7,cost=500},--Hgafircian/DMG/VIT/Ranged Attack
[1671]={trade={21294,3956,{65535,12}},base=21294,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=27,aug3MAX=12,cost=500},--Hgafircian/DMG/VIT/Ranged Accuracy
[1672]={trade={21294,3956,{65535,13}},base=21294,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=212,aug3MAX=0,cost=500},--Hgafircian/DMG/VIT/Recycle
[1673]={trade={21294,3956,{65535,14}},base=21294,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=211,aug3MAX=0,cost=500},--Hgafircian/DMG/VIT/Snapshot
[1674]={trade={21294,3956,{65535,15}},base=21294,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=40,aug3MAX=4,cost=500},--Hgafircian/DMG/VIT/Enmity-
[1675]={trade={21294,3956,{65535,16}},base=21294,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=29,aug3MAX=7,cost=500},--Hgafircian/DMG/AGI/Ranged Attack
[1676]={trade={21294,3956,{65535,17}},base=21294,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=27,aug3MAX=12,cost=500},--Hgafircian/DMG/AGI/Ranged Accuracy
[1677]={trade={21294,3956,{65535,18}},base=21294,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=212,aug3MAX=0,cost=500},--Hgafircian/DMG/AGI/Recycle
[1678]={trade={21294,3956,{65535,19}},base=21294,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=211,aug3MAX=0,cost=500},--Hgafircian/DMG/AGI/Snapshot
[1679]={trade={21294,3956,{65535,20}},base=21294,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=40,aug3MAX=4,cost=500},--Hgafircian/DMG/AGI/Enmity-
[1680]={trade={21286,4035,{65535,1}},base=21286,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=29,aug3MAX=7,cost=500},--Hgafircian +1/DMG/STR/Ranged Attack
[1681]={trade={21286,4035,{65535,2}},base=21286,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=27,aug3MAX=12,cost=500},--Hgafircian +1/DMG/STR/Ranged Accuracy
[1682]={trade={21286,4035,{65535,3}},base=21286,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=212,aug3MAX=0,cost=500},--Hgafircian +1/DMG/STR/Recycle
[1683]={trade={21286,4035,{65535,4}},base=21286,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=211,aug3MAX=0,cost=500},--Hgafircian +1/DMG/STR/Snapshot
[1684]={trade={21286,4035,{65535,5}},base=21286,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=40,aug3MAX=4,cost=500},--Hgafircian +1/DMG/STR/Enmity-
[1685]={trade={21286,4035,{65535,6}},base=21286,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=29,aug3MAX=7,cost=500},--Hgafircian +1/DMG/DEX/Ranged Attack
[1686]={trade={21286,4035,{65535,7}},base=21286,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=27,aug3MAX=12,cost=500},--Hgafircian +1/DMG/DEX/Ranged Accuracy
[1687]={trade={21286,4035,{65535,8}},base=21286,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=212,aug3MAX=0,cost=500},--Hgafircian +1/DMG/DEX/Recycle
[1688]={trade={21286,4035,{65535,9}},base=21286,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=211,aug3MAX=0,cost=500},--Hgafircian +1/DMG/DEX/Snapshot
[1689]={trade={21286,4035,{65535,10}},base=21286,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=40,aug3MAX=4,cost=500},--Hgafircian +1/DMG/DEX/Enmity-
[1690]={trade={21286,4035,{65535,11}},base=21286,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=29,aug3MAX=7,cost=500},--Hgafircian +1/DMG/VIT/Ranged Attack
[1691]={trade={21286,4035,{65535,12}},base=21286,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=27,aug3MAX=12,cost=500},--Hgafircian +1/DMG/VIT/Ranged Accuracy
[1692]={trade={21286,4035,{65535,13}},base=21286,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=212,aug3MAX=0,cost=500},--Hgafircian +1/DMG/VIT/Recycle
[1693]={trade={21286,4035,{65535,14}},base=21286,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=211,aug3MAX=0,cost=500},--Hgafircian +1/DMG/VIT/Snapshot
[1694]={trade={21286,4035,{65535,15}},base=21286,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=40,aug3MAX=4,cost=500},--Hgafircian +1/DMG/VIT/Enmity-
[1695]={trade={21286,4035,{65535,16}},base=21286,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=29,aug3MAX=7,cost=500},--Hgafircian +1/DMG/AGI/Ranged Attack
[1696]={trade={21286,4035,{65535,17}},base=21286,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=27,aug3MAX=12,cost=500},--Hgafircian +1/DMG/AGI/Ranged Accuracy
[1697]={trade={21286,4035,{65535,18}},base=21286,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=212,aug3MAX=0,cost=500},--Hgafircian +1/DMG/AGI/Recycle
[1698]={trade={21286,4035,{65535,19}},base=21286,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=211,aug3MAX=0,cost=500},--Hgafircian +1/DMG/AGI/Snapshot
[1699]={trade={21286,4035,{65535,20}},base=21286,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=40,aug3MAX=4,cost=500},--Hgafircian +1/DMG/AGI/Enmity-
[1700]={trade={21279,3953,{65535,1}},base=21279,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=29,aug3MAX=7,cost=500},--Hgafircian +2/DMG/STR/Ranged Attack
[1701]={trade={21279,3953,{65535,2}},base=21279,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=27,aug3MAX=12,cost=500},--Hgafircian +2/DMG/STR/Ranged Accuracy
[1702]={trade={21279,3953,{65535,3}},base=21279,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=212,aug3MAX=0,cost=500},--Hgafircian +2/DMG/STR/Recycle
[1703]={trade={21279,3953,{65535,4}},base=21279,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=211,aug3MAX=0,cost=500},--Hgafircian +2/DMG/STR/Snapshot
[1704]={trade={21279,3953,{65535,5}},base=21279,aug1=287,aug1MAX=12,aug2=512,aug2MAX=3,aug3=40,aug3MAX=4,cost=500},--Hgafircian +2/DMG/STR/Enmity-
[1705]={trade={21279,3953,{65535,6}},base=21279,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=29,aug3MAX=7,cost=500},--Hgafircian +2/DMG/DEX/Ranged Attack
[1706]={trade={21279,3953,{65535,7}},base=21279,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=27,aug3MAX=12,cost=500},--Hgafircian +2/DMG/DEX/Ranged Accuracy
[1707]={trade={21279,3953,{65535,8}},base=21279,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=212,aug3MAX=0,cost=500},--Hgafircian +2/DMG/DEX/Recycle
[1708]={trade={21279,3953,{65535,9}},base=21279,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=211,aug3MAX=0,cost=500},--Hgafircian +2/DMG/DEX/Snapshot
[1709]={trade={21279,3953,{65535,10}},base=21279,aug1=287,aug1MAX=12,aug2=513,aug2MAX=7,aug3=40,aug3MAX=4,cost=500},--Hgafircian +2/DMG/DEX/Enmity-
[1710]={trade={21279,3953,{65535,11}},base=21279,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=29,aug3MAX=7,cost=500},--Hgafircian +2/DMG/VIT/Ranged Attack
[1711]={trade={21279,3953,{65535,12}},base=21279,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=27,aug3MAX=12,cost=500},--Hgafircian +2/DMG/VIT/Ranged Accuracy
[1712]={trade={21279,3953,{65535,13}},base=21279,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=212,aug3MAX=0,cost=500},--Hgafircian +2/DMG/VIT/Recycle
[1713]={trade={21279,3953,{65535,14}},base=21279,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=211,aug3MAX=0,cost=500},--Hgafircian +2/DMG/VIT/Snapshot
[1714]={trade={21279,3953,{65535,15}},base=21279,aug1=287,aug1MAX=12,aug2=514,aug2MAX=9,aug3=40,aug3MAX=4,cost=500},--Hgafircian +2/DMG/VIT/Enmity-
[1715]={trade={21279,3953,{65535,16}},base=21279,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=29,aug3MAX=7,cost=500},--Hgafircian +2/DMG/AGI/Ranged Attack
[1716]={trade={21279,3953,{65535,17}},base=21279,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=27,aug3MAX=12,cost=500},--Hgafircian +2/DMG/AGI/Ranged Accuracy
[1717]={trade={21279,3953,{65535,18}},base=21279,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=212,aug3MAX=0,cost=500},--Hgafircian +2/DMG/AGI/Recycle
[1718]={trade={21279,3953,{65535,19}},base=21279,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=211,aug3MAX=0,cost=500},--Hgafircian +2/DMG/AGI/Snapshot
[1719]={trade={21279,3953,{65535,20}},base=21279,aug1=287,aug1MAX=12,aug2=515,aug2MAX=5,aug3=40,aug3MAX=4,cost=500},--Hgafircian +2/DMG/AGI/Enmity-
[1720]={trade={21209,3956,{65535,1}},base=21209,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat/DMG/INT/Pet: Attack/Ranged Attack
[1721]={trade={21209,3956,{65535,2}},base=21209,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat/DMG/INT/Pet: Accuracy/Ranged Accuracy
[1722]={trade={21209,3956,{65535,3}},base=21209,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat/DMG/INT/Pet: Magic Attack Bonus
[1723]={trade={21209,3956,{65535,4}},base=21209,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat/DMG/INT/Pet: Magic Accuracy
[1724]={trade={21209,3956,{65535,5}},base=21209,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat/DMG/INT/Avatar Perpetuation Cost-
[1725]={trade={21209,3956,{65535,6}},base=21209,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat/DMG/MND/Pet: Attack/Ranged Attack
[1726]={trade={21209,3956,{65535,7}},base=21209,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat/DMG/MND/Pet: Accuracy/Ranged Accuracy
[1727]={trade={21209,3956,{65535,8}},base=21209,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat/DMG/MND/Pet: Magic Attack Bonus
[1728]={trade={21209,3956,{65535,9}},base=21209,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat/DMG/MND/Pet: Magic Accuracy
[1729]={trade={21209,3956,{65535,10}},base=21209,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat/DMG/MND/Avatar Perpetuation Cost-
[1730]={trade={21209,3956,{65535,11}},base=21209,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=97,aug3MAX=23,cost=500},--Uffrat/DMG/CHR/Pet: Attack/Ranged Attack
[1731]={trade={21209,3956,{65535,12}},base=21209,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=96,aug3MAX=23,cost=500},--Uffrat/DMG/CHR/Pet: Accuracy/Ranged Accuracy
[1732]={trade={21209,3956,{65535,13}},base=21209,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=101,aug3MAX=22,cost=500},--Uffrat/DMG/CHR/Pet: Magic Attack Bonus
[1733]={trade={21209,3956,{65535,14}},base=21209,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=100,aug3MAX=22,cost=500},--Uffrat/DMG/CHR/Pet: Magic Accuracy
[1734]={trade={21209,3956,{65535,15}},base=21209,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=321,aug3MAX=6,cost=500},--Uffrat/DMG/CHR/Avatar Perpetuation Cost-
[1735]={trade={21195,4035,{65535,1}},base=21195,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat +1/DMG/INT/Pet: Attack/Ranged Attack
[1736]={trade={21195,4035,{65535,2}},base=21195,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat +1/DMG/INT/Pet: Accuracy/Ranged Accuracy
[1737]={trade={21195,4035,{65535,3}},base=21195,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat +1/DMG/INT/Pet: Magic Attack Bonus
[1738]={trade={21195,4035,{65535,4}},base=21195,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat +1/DMG/INT/Pet: Magic Accuracy
[1739]={trade={21195,4035,{65535,5}},base=21195,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat +1/DMG/INT/Avatar Perpetuation Cost-
[1740]={trade={21195,4035,{65535,6}},base=21195,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat +1/DMG/MND/Pet: Attack/Ranged Attack
[1741]={trade={21195,4035,{65535,7}},base=21195,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat +1/DMG/MND/Pet: Accuracy/Ranged Accuracy
[1742]={trade={21195,4035,{65535,8}},base=21195,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat +1/DMG/MND/Pet: Magic Attack Bonus
[1743]={trade={21195,4035,{65535,9}},base=21195,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat +1/DMG/MND/Pet: Magic Accuracy
[1744]={trade={21195,4035,{65535,10}},base=21195,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat +1/DMG/MND/Avatar Perpetuation Cost-
[1745]={trade={21195,4035,{65535,11}},base=21195,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=97,aug3MAX=23,cost=500},--Uffrat +1/DMG/CHR/Pet: Attack/Ranged Attack
[1746]={trade={21195,4035,{65535,12}},base=21195,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=96,aug3MAX=23,cost=500},--Uffrat +1/DMG/CHR/Pet: Accuracy/Ranged Accuracy
[1747]={trade={21195,4035,{65535,13}},base=21195,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=101,aug3MAX=22,cost=500},--Uffrat +1/DMG/CHR/Pet: Magic Attack Bonus
[1748]={trade={21195,4035,{65535,14}},base=21195,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=100,aug3MAX=22,cost=500},--Uffrat +1/DMG/CHR/Pet: Magic Accuracy
[1749]={trade={21195,4035,{65535,15}},base=21195,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=321,aug3MAX=6,cost=500},--Uffrat +1/DMG/CHR/Avatar Perpetuation Cost-
[1750]={trade={21180,3953,{65535,1}},base=21180,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat +2/DMG/INT/Pet: Attack/Ranged Attack
[1751]={trade={21180,3953,{65535,2}},base=21180,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat +2/DMG/INT/Pet: Accuracy/Ranged Accuracy
[1752]={trade={21180,3953,{65535,3}},base=21180,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat +2/DMG/INT/Pet: Magic Attack Bonus
[1753]={trade={21180,3953,{65535,4}},base=21180,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat +2/DMG/INT/Pet: Magic Accuracy
[1754]={trade={21180,3953,{65535,5}},base=21180,aug1=287,aug1MAX=19,aug2=516,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat +2/DMG/INT/Avatar Perpetuation Cost-
[1755]={trade={21180,3953,{65535,6}},base=21180,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=97,aug3MAX=23,cost=500},--Uffrat +2/DMG/MND/Pet: Attack/Ranged Attack
[1756]={trade={21180,3953,{65535,7}},base=21180,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=96,aug3MAX=23,cost=500},--Uffrat +2/DMG/MND/Pet: Accuracy/Ranged Accuracy
[1757]={trade={21180,3953,{65535,8}},base=21180,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=101,aug3MAX=22,cost=500},--Uffrat +2/DMG/MND/Pet: Magic Attack Bonus
[1758]={trade={21180,3953,{65535,9}},base=21180,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=100,aug3MAX=22,cost=500},--Uffrat +2/DMG/MND/Pet: Magic Accuracy
[1759]={trade={21180,3953,{65535,10}},base=21180,aug1=287,aug1MAX=19,aug2=517,aug2MAX=6,aug3=321,aug3MAX=6,cost=500},--Uffrat +2/DMG/MND/Avatar Perpetuation Cost-
[1760]={trade={21180,3953,{65535,11}},base=21180,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=97,aug3MAX=23,cost=500},--Uffrat +2/DMG/CHR/Pet: Attack/Ranged Attack
[1761]={trade={21180,3953,{65535,12}},base=21180,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=96,aug3MAX=23,cost=500},--Uffrat +2/DMG/CHR/Pet: Accuracy/Ranged Accuracy
[1762]={trade={21180,3953,{65535,13}},base=21180,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=101,aug3MAX=22,cost=500},--Uffrat +2/DMG/CHR/Pet: Magic Attack Bonus
[1763]={trade={21180,3953,{65535,14}},base=21180,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=100,aug3MAX=22,cost=500},--Uffrat +2/DMG/CHR/Pet: Magic Accuracy
[1764]={trade={21180,3953,{65535,15}},base=21180,aug1=287,aug1MAX=19,aug2=518,aug2MAX=8,aug3=321,aug3MAX=6,cost=500},--Uffrat +2/DMG/CHR/Avatar Perpetuation Cost-
[1765]={trade={21208,3956,{65535,1}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg/DMG/INT/Magic Accuracy
[1766]={trade={21208,3956,{65535,2}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg/DMG/INT/Magic Attack Bonus
[1767]={trade={21208,3956,{65535,3}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg/DMG/INT/Magic Burst Damage
[1768]={trade={21208,3956,{65535,4}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg/DMG/INT/Avatar Perpetuation Cost-
[1769]={trade={21208,3956,{65535,5}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg/DMG/INT/Fast Cast
[1770]={trade={21208,3956,{65535,6}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg/DMG/INT/Weapon Skil Accuracy
[1771]={trade={21208,3956,{65535,7}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg/DMG/INT/Conserve MP
[1772]={trade={21208,3956,{65535,8}},base=21208,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg/DMG/INT/Elemental Magic Skill
[1773]={trade={21208,3956,{65535,9}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg/DMG/MND/Magic Accuracy
[1774]={trade={21208,3956,{65535,10}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg/DMG/MND/Magic Attack Bonus
[1775]={trade={21208,3956,{65535,11}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg/DMG/MND/Magic Burst Damage
[1776]={trade={21208,3956,{65535,12}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg/DMG/MND/Avatar Perpetuation Cost-
[1777]={trade={21208,3956,{65535,13}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg/DMG/MND/Fast Cast
[1778]={trade={21208,3956,{65535,14}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg/DMG/MND/Weapon Skil Accuracy
[1779]={trade={21208,3956,{65535,15}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg/DMG/MND/Conserve MP
[1780]={trade={21208,3956,{65535,16}},base=21208,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg/DMG/MND/Elemental Magic Skill
[1781]={trade={21208,3956,{65535,17}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg/DMG/CHR/Magic Accuracy
[1782]={trade={21208,3956,{65535,18}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg/DMG/CHR/Magic Attack Bonus
[1783]={trade={21208,3956,{65535,19}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg/DMG/CHR/Magic Burst Damage
[1784]={trade={21208,3956,{65535,20}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg/DMG/CHR/Avatar Perpetuation Cost-
[1785]={trade={21208,3956,{65535,21}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg/DMG/CHR/Fast Cast
[1786]={trade={21208,3956,{65535,22}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg/DMG/CHR/Weapon Skil Accuracy
[1787]={trade={21208,3956,{65535,23}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg/DMG/CHR/Conserve MP
[1788]={trade={21208,3956,{65535,24}},base=21208,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg/DMG/CHR/Elemental Magic Skill
[1789]={trade={21194,4035,{65535,1}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +1/DMG/INT/Magic Accuracy
[1790]={trade={21194,4035,{65535,2}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +1/DMG/INT/Magic Attack Bonus
[1791]={trade={21194,4035,{65535,3}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/INT/Magic Burst Damage
[1792]={trade={21194,4035,{65535,4}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/INT/Avatar Perpetuation Cost-
[1793]={trade={21194,4035,{65535,5}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/INT/Fast Cast
[1794]={trade={21194,4035,{65535,6}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +1/DMG/INT/Weapon Skil Accuracy
[1795]={trade={21194,4035,{65535,7}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +1/DMG/INT/Conserve MP
[1796]={trade={21194,4035,{65535,8}},base=21194,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/INT/Elemental Magic Skill
[1797]={trade={21194,4035,{65535,9}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +1/DMG/MND/Magic Accuracy
[1798]={trade={21194,4035,{65535,10}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +1/DMG/MND/Magic Attack Bonus
[1799]={trade={21194,4035,{65535,11}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/MND/Magic Burst Damage
[1800]={trade={21194,4035,{65535,12}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/MND/Avatar Perpetuation Cost-
[1801]={trade={21194,4035,{65535,13}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/MND/Fast Cast
[1802]={trade={21194,4035,{65535,14}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +1/DMG/MND/Weapon Skil Accuracy
[1803]={trade={21194,4035,{65535,15}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +1/DMG/MND/Conserve MP
[1804]={trade={21194,4035,{65535,16}},base=21194,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/MND/Elemental Magic Skill
[1805]={trade={21194,4035,{65535,17}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +1/DMG/CHR/Magic Accuracy
[1806]={trade={21194,4035,{65535,18}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +1/DMG/CHR/Magic Attack Bonus
[1807]={trade={21194,4035,{65535,19}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/CHR/Magic Burst Damage
[1808]={trade={21194,4035,{65535,20}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/CHR/Avatar Perpetuation Cost-
[1809]={trade={21194,4035,{65535,21}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +1/DMG/CHR/Fast Cast
[1810]={trade={21194,4035,{65535,22}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +1/DMG/CHR/Weapon Skil Accuracy
[1811]={trade={21194,4035,{65535,23}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +1/DMG/CHR/Conserve MP
[1812]={trade={21194,4035,{65535,24}},base=21194,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +1/DMG/CHR/Elemental Magic Skill
[1813]={trade={21179,3953,{65535,1}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +2/DMG/INT/Magic Accuracy
[1814]={trade={21179,3953,{65535,2}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +2/DMG/INT/Magic Attack Bonus
[1815]={trade={21179,3953,{65535,3}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/INT/Magic Burst Damage
[1816]={trade={21179,3953,{65535,4}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/INT/Avatar Perpetuation Cost-
[1817]={trade={21179,3953,{65535,5}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/INT/Fast Cast
[1818]={trade={21179,3953,{65535,6}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +2/DMG/INT/Weapon Skil Accuracy
[1819]={trade={21179,3953,{65535,7}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +2/DMG/INT/Conserve MP
[1820]={trade={21179,3953,{65535,8}},base=21179,aug1=287,aug1MAX=21,aug2=516,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/INT/Elemental Magic Skill
[1821]={trade={21179,3953,{65535,9}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +2/DMG/MND/Magic Accuracy
[1822]={trade={21179,3953,{65535,10}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +2/DMG/MND/Magic Attack Bonus
[1823]={trade={21179,3953,{65535,11}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/MND/Magic Burst Damage
[1824]={trade={21179,3953,{65535,12}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/MND/Avatar Perpetuation Cost-
[1825]={trade={21179,3953,{65535,13}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/MND/Fast Cast
[1826]={trade={21179,3953,{65535,14}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +2/DMG/MND/Weapon Skil Accuracy
[1827]={trade={21179,3953,{65535,15}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +2/DMG/MND/Conserve MP
[1828]={trade={21179,3953,{65535,16}},base=21179,aug1=287,aug1MAX=21,aug2=517,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/MND/Elemental Magic Skill
[1829]={trade={21179,3953,{65535,17}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=35,aug3MAX=27,cost=500},--Lehbrailg +2/DMG/CHR/Magic Accuracy
[1830]={trade={21179,3953,{65535,18}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=133,aug3MAX=29,cost=500},--Lehbrailg +2/DMG/CHR/Magic Attack Bonus
[1831]={trade={21179,3953,{65535,19}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=334,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/CHR/Magic Burst Damage
[1832]={trade={21179,3953,{65535,20}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=321,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/CHR/Avatar Perpetuation Cost-
[1833]={trade={21179,3953,{65535,21}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=140,aug3MAX=5,cost=500},--Lehbrailg +2/DMG/CHR/Fast Cast
[1834]={trade={21179,3953,{65535,22}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=326,aug3MAX=6,cost=500},--Lehbrailg +2/DMG/CHR/Weapon Skil Accuracy
[1835]={trade={21179,3953,{65535,23}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=141,aug3MAX=2,cost=500},--Lehbrailg +2/DMG/CHR/Conserve MP
[1836]={trade={21179,3953,{65535,24}},base=21179,aug1=287,aug1MAX=21,aug2=518,aug2MAX=9,aug3=292,aug3MAX=8,cost=500},--Lehbrailg +2/DMG/CHR/Elemental Magic Skill

}
local AskirAug =
{
[1]={trade={26733,8932,{65535,1}},base=26733,aug1=23,aug1MAX=24,cost=50},--Yorium Barbuta/Accuracy
[2]={trade={26733,8932,{65535,2}},base=26733,aug1=25,aug1MAX=24,cost=50},--Yorium Barbuta/Attack
[3]={trade={26733,8932,{65535,3}},base=26733,aug1=68,aug1MAX=19,cost=50},--Yorium Barbuta/Accuracy and Attack
[4]={trade={26733,8932,{65535,4}},base=26733,aug1=33,aug1MAX=24,cost=50},--Yorium Barbuta/Defense
[5]={trade={26733,8935,{65535,1}},base=26733,aug2=115,aug2MAX=5,cost=50},--Yorium Barbuta/Store TP
[6]={trade={26733,8935,{65535,2}},base=26733,aug2=143,aug2MAX=2,cost=50},--Yorium Barbuta/Double Attack
[7]={trade={26733,8935,{65535,3}},base=26733,aug2=356,aug2MAX=6,cost=50},--Yorium Barbuta/Cure Potency Received
[8]={trade={26733,8935,{65535,4}},base=26733,aug2=326,aug2MAX=19,cost=50},--Yorium Barbuta/Weapon Skill Accuracy
[9]={trade={26733,8935,{65535,5}},base=26733,aug2=330,aug2MAX=4,cost=50},--Yorium Barbuta/Waltz Potency
[10]={trade={26733,8935,{65535,6}},base=26733,aug2=39,aug2MAX=9,cost=50},--Yorium Barbuta/Enmity
[11]={trade={26733,8938,{65535,1}},base=26733,aug3=512,aug3MAX=9,cost=50},--Yorium Barbuta/STR
[12]={trade={26733,8938,{65535,2}},base=26733,aug3=514,aug3MAX=9,cost=50},--Yorium Barbuta/VIT
[13]={trade={26733,8938,{65535,3}},base=26733,aug3=551,aug3MAX=6,cost=50},--Yorium Barbuta/STR and VIT
[14]={trade={26733,8938,{65535,4}},base=26733,aug3=54,aug3MAX=-3,cost=50},--Yorium Barbuta/Physical Damage Taken
[15]={trade={26733,8938,{65535,5}},base=26733,aug3=71,aug3MAX=-2,cost=50},--Yorium Barbuta/Damage Taken
[16]={trade={26733,8938,{65535,6}},base=26733,aug3=327,aug3MAX=2,cost=50},--Yorium Barbuta/Weapon Skill Damage
[17]={trade={26733,8941,{65535,1}},base=26733,aug1=27,aug1MAX=9,cost=50},--Yorium Barbuta/Ranged Accuracy
[18]={trade={26733,8941,{65535,2}},base=26733,aug1=29,aug1MAX=9,cost=50},--Yorium Barbuta/Ranged Attack
[19]={trade={26733,8941,{65535,3}},base=26733,aug1=69,aug1MAX=9,cost=50},--Yorium Barbuta/Ranged Accuracy and Ranged Attack
[20]={trade={26733,8941,{65535,4}},base=26733,aug1=31,aug1MAX=19,cost=50},--Yorium Barbuta/Evasion
[21]={trade={26733,8944,{65535,1}},base=26733,aug2=330,aug2MAX=4,cost=50},--Yorium Barbuta/Waltz Potency
[22]={trade={26733,8944,{65535,2}},base=26733,aug2=39,aug2MAX=-4,cost=50},--Yorium Barbuta/Enmity
[23]={trade={26733,8944,{65535,3}},base=26733,aug2=116,aug2MAX=5,cost=50},--Yorium Barbuta/Subtle Blow
[24]={trade={26733,8944,{65535,4}},base=26733,aug2=49,aug2MAX=2,cost=50},--Yorium Barbuta/Haste
[25]={trade={26733,8944,{65535,5}},base=26733,aug2=103,aug2MAX=-3,cost=50},--Yorium Barbuta/Enemy Critical Hit Rate
[26]={trade={26733,8944,{65535,6}},base=26733,aug2=137,aug2MAX=1,cost=50},--Yorium Barbuta/Regen
[27]={trade={26733,8947,{65535,1}},base=26733,aug3=327,aug3MAX=2,cost=50},--Yorium Barbuta/Weapon Skill Damage
[28]={trade={26733,8947,{65535,2}},base=26733,aug3=513,aug3MAX=9,cost=50},--Yorium Barbuta/DEX
[29]={trade={26733,8947,{65535,3}},base=26733,aug3=515,aug3MAX=9,cost=50},--Yorium Barbuta/AGI
[30]={trade={26733,8947,{65535,4}},base=26733,aug3=550,aug3MAX=6,cost=50},--Yorium Barbuta/STR and DEX
[31]={trade={26733,8947,{65535,5}},base=26733,aug3=332,aug3MAX=4,cost=50},--Yorium Barbuta/Skillchain Damage
[32]={trade={26733,8947,{65535,6}},base=26733,aug3=56,aug3MAX=-3,cost=50},--Yorium Barbuta/Breath Damage Taken
[33]={trade={26733,8950,{65535,1}},base=26733,aug1=35,aug1MAX=9,cost=50},--Yorium Barbuta/Magic Accuracy
[34]={trade={26733,8950,{65535,2}},base=26733,aug1=133,aug1MAX=9,cost=50},--Yorium Barbuta/Magic Attack Bonus
[35]={trade={26733,8950,{65535,3}},base=26733,aug1=108,aug1MAX=9,cost=50},--Yorium Barbuta/Magic Accuracy and Magic Attack Bonus
[36]={trade={26733,8950,{65535,4}},base=26733,aug1=37,aug1MAX=19,cost=50},--Yorium Barbuta/Magic Evasion
[37]={trade={26733,8953,{65535,1}},base=26733,aug2=140,aug2MAX=2,cost=50},--Yorium Barbuta/Fast Cast
[38]={trade={26733,8953,{65535,2}},base=26733,aug2=329,aug2MAX=4,cost=50},--Yorium Barbuta/Cure Potency
[39]={trade={26733,8953,{65535,3}},base=26733,aug2=323,aug2MAX=-4,cost=50},--Yorium Barbuta/Cure Spellcasting Time
[40]={trade={26733,8953,{65535,4}},base=26733,aug2=53,aug2MAX=-9,cost=50},--Yorium Barbuta/Spell Interruption Rate
[41]={trade={26733,8953,{65535,5}},base=26733,aug2=343,aug2MAX=6,cost=50},--Yorium Barbuta/"Drain" and "Aspir" potency
[42]={trade={26733,8953,{65535,6}},base=26733,aug2=237,aug2MAX=9,cost=50},--Yorium Barbuta/Occult Acumen
[43]={trade={26733,8956,{65535,1}},base=26733,aug3=516,aug3MAX=9,cost=50},--Yorium Barbuta/INT
[44]={trade={26733,8956,{65535,2}},base=26733,aug3=554,aug3MAX=6,cost=50},--Yorium Barbuta/INT and MND
[45]={trade={26733,8956,{65535,3}},base=26733,aug3=558,aug3MAX=6,cost=50},--Yorium Barbuta/STR and INT
[46]={trade={26733,8956,{65535,4}},base=26733,aug3=55,aug3MAX=-3,cost=50},--Yorium Barbuta/Magic Damage Taken
[47]={trade={26733,8956,{65535,5}},base=26733,aug3=368,aug3MAX=2,cost=50},--Yorium Barbuta/Phalanx
[48]={trade={26733,8956,{65535,6}},base=26733,aug3=517,aug3MAX=9,cost=50},--Yorium Barbuta/MND
[49]={trade={26733,8959,{65535,1}},base=26733,aug1=96,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Accuracy and Pet: Ranged Accuracy
[50]={trade={26733,8959,{65535,2}},base=26733,aug1=97,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Attack and Pet: Ranged Attack
[51]={trade={26733,8959,{65535,3}},base=26733,aug1=100,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Magic Accuracy
[52]={trade={26733,8959,{65535,4}},base=26733,aug1=101,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Magic Attack Bonus
[53]={trade={26733,8959,{65535,5}},base=26733,aug1=99,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Defense
[54]={trade={26733,8959,{65535,6}},base=26733,aug1=98,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Evasion
[55]={trade={26733,8959,{65535,7}},base=26733,aug1=117,aug1MAX=19,cost=50},--Yorium Barbuta/Pet: Magic Evasion
[56]={trade={26733,8962,{65535,1}},base=26733,aug2=110,aug2MAX=2,cost=50},--Yorium Barbuta/Pet: Regen
[57]={trade={26733,8962,{65535,2}},base=26733,aug2=116,aug2MAX=7,cost=50},--Yorium Barbuta/Pet: Subtle Blow
[58]={trade={26733,8962,{65535,3}},base=26733,aug2=Change,aug2MAX=3,cost=50},--Yorium Barbuta/Pet: Critical Hit Rate
[59]={trade={26733,8962,{65535,4}},base=26733,aug2=123,aug2MAX=4,cost=50},--Yorium Barbuta/Pet: Double Attack
[60]={trade={26733,8962,{65535,5}},base=26733,aug2=104,aug2MAX=-7,cost=50},--Yorium Barbuta/Pet: Enmity
[61]={trade={26733,8962,{65535,6}},base=26733,aug2=115,aug2MAX=7,cost=50},--Yorium Barbuta/Pet: Store TP
[62]={trade={26733,8965,{65535,1}},base=26733,aug3=518,aug3MAX=9,cost=50},--Yorium Barbuta/CHR
[63]={trade={26733,8965,{65535,2}},base=26733,aug3=555,aug3MAX=6,cost=50},--Yorium Barbuta/MND and CHR
[64]={trade={26733,8965,{65535,3}},base=26733,aug3=557,aug3MAX=6,cost=50},--Yorium Barbuta/STR and CHR
[65]={trade={26733,8965,{65535,4}},base=26733,aug3=111,aug3MAX=4,cost=50},--Yorium Barbuta/Pet: Haste
[66]={trade={26733,8965,{65535,5}},base=26733,aug3=112,aug3MAX=-3,cost=50},--Yorium Barbuta/Pet: Damage Taken
[67]={trade={26891,8932,{65535,1}},base=26891,aug1=23,aug1MAX=24,cost=50},--Yorium Cuirass/Accuracy
[68]={trade={26891,8932,{65535,2}},base=26891,aug1=25,aug1MAX=24,cost=50},--Yorium Cuirass/Attack
[69]={trade={26891,8932,{65535,3}},base=26891,aug1=68,aug1MAX=19,cost=50},--Yorium Cuirass/Accuracy and Attack
[70]={trade={26891,8932,{65535,4}},base=26891,aug1=33,aug1MAX=24,cost=50},--Yorium Cuirass/Defense
[71]={trade={26891,8935,{65535,1}},base=26891,aug2=115,aug2MAX=5,cost=50},--Yorium Cuirass/Store TP
[72]={trade={26891,8935,{65535,2}},base=26891,aug2=143,aug2MAX=2,cost=50},--Yorium Cuirass/Double Attack
[73]={trade={26891,8935,{65535,3}},base=26891,aug2=356,aug2MAX=6,cost=50},--Yorium Cuirass/Cure Potency Received
[74]={trade={26891,8935,{65535,4}},base=26891,aug2=326,aug2MAX=19,cost=50},--Yorium Cuirass/Weapon Skill Accuracy
[75]={trade={26891,8935,{65535,5}},base=26891,aug2=330,aug2MAX=4,cost=50},--Yorium Cuirass/Waltz Potency
[76]={trade={26891,8935,{65535,6}},base=26891,aug2=39,aug2MAX=9,cost=50},--Yorium Cuirass/Enmity
[77]={trade={26891,8938,{65535,1}},base=26891,aug3=512,aug3MAX=9,cost=50},--Yorium Cuirass/STR
[78]={trade={26891,8938,{65535,2}},base=26891,aug3=514,aug3MAX=9,cost=50},--Yorium Cuirass/VIT
[79]={trade={26891,8938,{65535,3}},base=26891,aug3=551,aug3MAX=6,cost=50},--Yorium Cuirass/STR and VIT
[80]={trade={26891,8938,{65535,4}},base=26891,aug3=54,aug3MAX=-3,cost=50},--Yorium Cuirass/Physical Damage Taken
[81]={trade={26891,8938,{65535,5}},base=26891,aug3=71,aug3MAX=-2,cost=50},--Yorium Cuirass/Damage Taken
[82]={trade={26891,8938,{65535,6}},base=26891,aug3=327,aug3MAX=2,cost=50},--Yorium Cuirass/Weapon Skill Damage
[83]={trade={26891,8941,{65535,1}},base=26891,aug1=27,aug1MAX=9,cost=50},--Yorium Cuirass/Ranged Accuracy
[84]={trade={26891,8941,{65535,2}},base=26891,aug1=29,aug1MAX=9,cost=50},--Yorium Cuirass/Ranged Attack
[85]={trade={26891,8941,{65535,3}},base=26891,aug1=69,aug1MAX=9,cost=50},--Yorium Cuirass/Ranged Accuracy and Ranged Attack
[86]={trade={26891,8941,{65535,4}},base=26891,aug1=31,aug1MAX=19,cost=50},--Yorium Cuirass/Evasion
[87]={trade={26891,8944,{65535,1}},base=26891,aug2=330,aug2MAX=4,cost=50},--Yorium Cuirass/Waltz Potency
[88]={trade={26891,8944,{65535,2}},base=26891,aug2=39,aug2MAX=-4,cost=50},--Yorium Cuirass/Enmity
[89]={trade={26891,8944,{65535,3}},base=26891,aug2=116,aug2MAX=5,cost=50},--Yorium Cuirass/Subtle Blow
[90]={trade={26891,8944,{65535,4}},base=26891,aug2=49,aug2MAX=2,cost=50},--Yorium Cuirass/Haste
[91]={trade={26891,8944,{65535,5}},base=26891,aug2=103,aug2MAX=-3,cost=50},--Yorium Cuirass/Enemy Critical Hit Rate
[92]={trade={26891,8944,{65535,6}},base=26891,aug2=137,aug2MAX=1,cost=50},--Yorium Cuirass/Regen
[93]={trade={26891,8947,{65535,1}},base=26891,aug3=327,aug3MAX=2,cost=50},--Yorium Cuirass/Weapon Skill Damage
[94]={trade={26891,8947,{65535,2}},base=26891,aug3=513,aug3MAX=9,cost=50},--Yorium Cuirass/DEX
[95]={trade={26891,8947,{65535,3}},base=26891,aug3=515,aug3MAX=9,cost=50},--Yorium Cuirass/AGI
[96]={trade={26891,8947,{65535,4}},base=26891,aug3=550,aug3MAX=6,cost=50},--Yorium Cuirass/STR and DEX
[97]={trade={26891,8947,{65535,5}},base=26891,aug3=332,aug3MAX=4,cost=50},--Yorium Cuirass/Skillchain Damage
[98]={trade={26891,8947,{65535,6}},base=26891,aug3=56,aug3MAX=-3,cost=50},--Yorium Cuirass/Breath Damage Taken
[99]={trade={26891,8950,{65535,1}},base=26891,aug1=35,aug1MAX=9,cost=50},--Yorium Cuirass/Magic Accuracy
[100]={trade={26891,8950,{65535,2}},base=26891,aug1=133,aug1MAX=9,cost=50},--Yorium Cuirass/Magic Attack Bonus
[101]={trade={26891,8950,{65535,3}},base=26891,aug1=108,aug1MAX=9,cost=50},--Yorium Cuirass/Magic Accuracy and Magic Attack Bonus
[102]={trade={26891,8950,{65535,4}},base=26891,aug1=37,aug1MAX=19,cost=50},--Yorium Cuirass/Magic Evasion
[103]={trade={26891,8953,{65535,1}},base=26891,aug2=140,aug2MAX=2,cost=50},--Yorium Cuirass/Fast Cast
[104]={trade={26891,8953,{65535,2}},base=26891,aug2=329,aug2MAX=4,cost=50},--Yorium Cuirass/Cure Potency
[105]={trade={26891,8953,{65535,3}},base=26891,aug2=323,aug2MAX=-4,cost=50},--Yorium Cuirass/Cure Spellcasting Time
[106]={trade={26891,8953,{65535,4}},base=26891,aug2=53,aug2MAX=-9,cost=50},--Yorium Cuirass/Spell Interruption Rate
[107]={trade={26891,8953,{65535,5}},base=26891,aug2=343,aug2MAX=6,cost=50},--Yorium Cuirass/"Drain" and "Aspir" potency
[108]={trade={26891,8953,{65535,6}},base=26891,aug2=237,aug2MAX=9,cost=50},--Yorium Cuirass/Occult Acumen
[109]={trade={26891,8956,{65535,1}},base=26891,aug3=516,aug3MAX=9,cost=50},--Yorium Cuirass/INT
[110]={trade={26891,8956,{65535,2}},base=26891,aug3=554,aug3MAX=6,cost=50},--Yorium Cuirass/INT and MND
[111]={trade={26891,8956,{65535,3}},base=26891,aug3=558,aug3MAX=6,cost=50},--Yorium Cuirass/STR and INT
[112]={trade={26891,8956,{65535,4}},base=26891,aug3=55,aug3MAX=-3,cost=50},--Yorium Cuirass/Magic Damage Taken
[113]={trade={26891,8956,{65535,5}},base=26891,aug3=368,aug3MAX=2,cost=50},--Yorium Cuirass/Phalanx
[114]={trade={26891,8956,{65535,6}},base=26891,aug3=517,aug3MAX=9,cost=50},--Yorium Cuirass/MND
[115]={trade={26891,8959,{65535,1}},base=26891,aug1=96,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Accuracy and Pet: Ranged Accuracy
[116]={trade={26891,8959,{65535,2}},base=26891,aug1=97,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Attack and Pet: Ranged Attack
[117]={trade={26891,8959,{65535,3}},base=26891,aug1=100,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Magic Accuracy
[118]={trade={26891,8959,{65535,4}},base=26891,aug1=101,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Magic Attack Bonus
[119]={trade={26891,8959,{65535,5}},base=26891,aug1=99,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Defense
[120]={trade={26891,8959,{65535,6}},base=26891,aug1=98,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Evasion
[121]={trade={26891,8959,{65535,7}},base=26891,aug1=117,aug1MAX=19,cost=50},--Yorium Cuirass/Pet: Magic Evasion
[122]={trade={26891,8962,{65535,1}},base=26891,aug2=110,aug2MAX=2,cost=50},--Yorium Cuirass/Pet: Regen
[123]={trade={26891,8962,{65535,2}},base=26891,aug2=116,aug2MAX=7,cost=50},--Yorium Cuirass/Pet: Subtle Blow
[124]={trade={26891,8962,{65535,3}},base=26891,aug2=Change,aug2MAX=3,cost=50},--Yorium Cuirass/Pet: Critical Hit Rate
[125]={trade={26891,8962,{65535,4}},base=26891,aug2=123,aug2MAX=4,cost=50},--Yorium Cuirass/Pet: Double Attack
[126]={trade={26891,8962,{65535,5}},base=26891,aug2=104,aug2MAX=-7,cost=50},--Yorium Cuirass/Pet: Enmity
[127]={trade={26891,8962,{65535,6}},base=26891,aug2=115,aug2MAX=7,cost=50},--Yorium Cuirass/Pet: Store TP
[128]={trade={26891,8965,{65535,1}},base=26891,aug3=518,aug3MAX=9,cost=50},--Yorium Cuirass/CHR
[129]={trade={26891,8965,{65535,2}},base=26891,aug3=555,aug3MAX=6,cost=50},--Yorium Cuirass/MND and CHR
[130]={trade={26891,8965,{65535,3}},base=26891,aug3=557,aug3MAX=6,cost=50},--Yorium Cuirass/STR and CHR
[131]={trade={26891,8965,{65535,4}},base=26891,aug3=111,aug3MAX=4,cost=50},--Yorium Cuirass/Pet: Haste
[132]={trade={26891,8965,{65535,5}},base=26891,aug3=112,aug3MAX=-3,cost=50},--Yorium Cuirass/Pet: Damage Taken
[133]={trade={27045,8932,{65535,1}},base=27045,aug1=23,aug1MAX=24,cost=50},--Yorium Gauntlets/Accuracy
[134]={trade={27045,8932,{65535,2}},base=27045,aug1=25,aug1MAX=24,cost=50},--Yorium Gauntlets/Attack
[135]={trade={27045,8932,{65535,3}},base=27045,aug1=68,aug1MAX=19,cost=50},--Yorium Gauntlets/Accuracy and Attack
[136]={trade={27045,8932,{65535,4}},base=27045,aug1=33,aug1MAX=24,cost=50},--Yorium Gauntlets/Defense
[137]={trade={27045,8935,{65535,1}},base=27045,aug2=115,aug2MAX=5,cost=50},--Yorium Gauntlets/Store TP
[138]={trade={27045,8935,{65535,2}},base=27045,aug2=143,aug2MAX=2,cost=50},--Yorium Gauntlets/Double Attack
[139]={trade={27045,8935,{65535,3}},base=27045,aug2=356,aug2MAX=6,cost=50},--Yorium Gauntlets/Cure Potency Received
[140]={trade={27045,8935,{65535,4}},base=27045,aug2=326,aug2MAX=19,cost=50},--Yorium Gauntlets/Weapon Skill Accuracy
[141]={trade={27045,8935,{65535,5}},base=27045,aug2=330,aug2MAX=4,cost=50},--Yorium Gauntlets/Waltz Potency
[142]={trade={27045,8935,{65535,6}},base=27045,aug2=39,aug2MAX=9,cost=50},--Yorium Gauntlets/Enmity
[143]={trade={27045,8938,{65535,1}},base=27045,aug3=512,aug3MAX=9,cost=50},--Yorium Gauntlets/STR
[144]={trade={27045,8938,{65535,2}},base=27045,aug3=514,aug3MAX=9,cost=50},--Yorium Gauntlets/VIT
[145]={trade={27045,8938,{65535,3}},base=27045,aug3=551,aug3MAX=6,cost=50},--Yorium Gauntlets/STR and VIT
[146]={trade={27045,8938,{65535,4}},base=27045,aug3=54,aug3MAX=-3,cost=50},--Yorium Gauntlets/Physical Damage Taken
[147]={trade={27045,8938,{65535,5}},base=27045,aug3=71,aug3MAX=-2,cost=50},--Yorium Gauntlets/Damage Taken
[148]={trade={27045,8938,{65535,6}},base=27045,aug3=327,aug3MAX=2,cost=50},--Yorium Gauntlets/Weapon Skill Damage
[149]={trade={27045,8941,{65535,1}},base=27045,aug1=27,aug1MAX=9,cost=50},--Yorium Gauntlets/Ranged Accuracy
[150]={trade={27045,8941,{65535,2}},base=27045,aug1=29,aug1MAX=9,cost=50},--Yorium Gauntlets/Ranged Attack
[151]={trade={27045,8941,{65535,3}},base=27045,aug1=69,aug1MAX=9,cost=50},--Yorium Gauntlets/Ranged Accuracy and Ranged Attack
[152]={trade={27045,8941,{65535,4}},base=27045,aug1=31,aug1MAX=19,cost=50},--Yorium Gauntlets/Evasion
[153]={trade={27045,8944,{65535,1}},base=27045,aug2=330,aug2MAX=4,cost=50},--Yorium Gauntlets/Waltz Potency
[154]={trade={27045,8944,{65535,2}},base=27045,aug2=39,aug2MAX=-4,cost=50},--Yorium Gauntlets/Enmity
[155]={trade={27045,8944,{65535,3}},base=27045,aug2=116,aug2MAX=5,cost=50},--Yorium Gauntlets/Subtle Blow
[156]={trade={27045,8944,{65535,4}},base=27045,aug2=49,aug2MAX=2,cost=50},--Yorium Gauntlets/Haste
[157]={trade={27045,8944,{65535,5}},base=27045,aug2=103,aug2MAX=-3,cost=50},--Yorium Gauntlets/Enemy Critical Hit Rate
[158]={trade={27045,8944,{65535,6}},base=27045,aug2=137,aug2MAX=1,cost=50},--Yorium Gauntlets/Regen
[159]={trade={27045,8947,{65535,1}},base=27045,aug3=327,aug3MAX=2,cost=50},--Yorium Gauntlets/Weapon Skill Damage
[160]={trade={27045,8947,{65535,2}},base=27045,aug3=513,aug3MAX=9,cost=50},--Yorium Gauntlets/DEX
[161]={trade={27045,8947,{65535,3}},base=27045,aug3=515,aug3MAX=9,cost=50},--Yorium Gauntlets/AGI
[162]={trade={27045,8947,{65535,4}},base=27045,aug3=550,aug3MAX=6,cost=50},--Yorium Gauntlets/STR and DEX
[163]={trade={27045,8947,{65535,5}},base=27045,aug3=332,aug3MAX=4,cost=50},--Yorium Gauntlets/Skillchain Damage
[164]={trade={27045,8947,{65535,6}},base=27045,aug3=56,aug3MAX=-3,cost=50},--Yorium Gauntlets/Breath Damage Taken
[165]={trade={27045,8950,{65535,1}},base=27045,aug1=35,aug1MAX=9,cost=50},--Yorium Gauntlets/Magic Accuracy
[166]={trade={27045,8950,{65535,2}},base=27045,aug1=133,aug1MAX=9,cost=50},--Yorium Gauntlets/Magic Attack Bonus
[167]={trade={27045,8950,{65535,3}},base=27045,aug1=108,aug1MAX=9,cost=50},--Yorium Gauntlets/Magic Accuracy and Magic Attack Bonus
[168]={trade={27045,8950,{65535,4}},base=27045,aug1=37,aug1MAX=19,cost=50},--Yorium Gauntlets/Magic Evasion
[169]={trade={27045,8953,{65535,1}},base=27045,aug2=140,aug2MAX=2,cost=50},--Yorium Gauntlets/Fast Cast
[170]={trade={27045,8953,{65535,2}},base=27045,aug2=329,aug2MAX=4,cost=50},--Yorium Gauntlets/Cure Potency
[171]={trade={27045,8953,{65535,3}},base=27045,aug2=323,aug2MAX=-4,cost=50},--Yorium Gauntlets/Cure Spellcasting Time
[172]={trade={27045,8953,{65535,4}},base=27045,aug2=53,aug2MAX=-9,cost=50},--Yorium Gauntlets/Spell Interruption Rate
[173]={trade={27045,8953,{65535,5}},base=27045,aug2=343,aug2MAX=6,cost=50},--Yorium Gauntlets/"Drain" and "Aspir" potency
[174]={trade={27045,8953,{65535,6}},base=27045,aug2=237,aug2MAX=9,cost=50},--Yorium Gauntlets/Occult Acumen
[175]={trade={27045,8956,{65535,1}},base=27045,aug3=516,aug3MAX=9,cost=50},--Yorium Gauntlets/INT
[176]={trade={27045,8956,{65535,2}},base=27045,aug3=554,aug3MAX=6,cost=50},--Yorium Gauntlets/INT and MND
[177]={trade={27045,8956,{65535,3}},base=27045,aug3=558,aug3MAX=6,cost=50},--Yorium Gauntlets/STR and INT
[178]={trade={27045,8956,{65535,4}},base=27045,aug3=55,aug3MAX=-3,cost=50},--Yorium Gauntlets/Magic Damage Taken
[179]={trade={27045,8956,{65535,5}},base=27045,aug3=368,aug3MAX=2,cost=50},--Yorium Gauntlets/Phalanx
[180]={trade={27045,8956,{65535,6}},base=27045,aug3=517,aug3MAX=9,cost=50},--Yorium Gauntlets/MND
[181]={trade={27045,8959,{65535,1}},base=27045,aug1=96,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Accuracy and Pet: Ranged Accuracy
[182]={trade={27045,8959,{65535,2}},base=27045,aug1=97,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Attack and Pet: Ranged Attack
[183]={trade={27045,8959,{65535,3}},base=27045,aug1=100,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Magic Accuracy
[184]={trade={27045,8959,{65535,4}},base=27045,aug1=101,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Magic Attack Bonus
[185]={trade={27045,8959,{65535,5}},base=27045,aug1=99,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Defense
[186]={trade={27045,8959,{65535,6}},base=27045,aug1=98,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Evasion
[187]={trade={27045,8959,{65535,7}},base=27045,aug1=117,aug1MAX=19,cost=50},--Yorium Gauntlets/Pet: Magic Evasion
[188]={trade={27045,8962,{65535,1}},base=27045,aug2=110,aug2MAX=2,cost=50},--Yorium Gauntlets/Pet: Regen
[189]={trade={27045,8962,{65535,2}},base=27045,aug2=116,aug2MAX=7,cost=50},--Yorium Gauntlets/Pet: Subtle Blow
[190]={trade={27045,8962,{65535,3}},base=27045,aug2=Change,aug2MAX=3,cost=50},--Yorium Gauntlets/Pet: Critical Hit Rate
[191]={trade={27045,8962,{65535,4}},base=27045,aug2=123,aug2MAX=4,cost=50},--Yorium Gauntlets/Pet: Double Attack
[192]={trade={27045,8962,{65535,5}},base=27045,aug2=104,aug2MAX=-7,cost=50},--Yorium Gauntlets/Pet: Enmity
[193]={trade={27045,8962,{65535,6}},base=27045,aug2=115,aug2MAX=7,cost=50},--Yorium Gauntlets/Pet: Store TP
[194]={trade={27045,8965,{65535,1}},base=27045,aug3=518,aug3MAX=9,cost=50},--Yorium Gauntlets/CHR
[195]={trade={27045,8965,{65535,2}},base=27045,aug3=555,aug3MAX=6,cost=50},--Yorium Gauntlets/MND and CHR
[196]={trade={27045,8965,{65535,3}},base=27045,aug3=557,aug3MAX=6,cost=50},--Yorium Gauntlets/STR and CHR
[197]={trade={27045,8965,{65535,4}},base=27045,aug3=111,aug3MAX=4,cost=50},--Yorium Gauntlets/Pet: Haste
[198]={trade={27045,8965,{65535,5}},base=27045,aug3=112,aug3MAX=-3,cost=50},--Yorium Gauntlets/Pet: Damage Taken
[199]={trade={27232,8932,{65535,1}},base=27232,aug1=23,aug1MAX=24,cost=50},--Yorium Cuisses/Accuracy
[200]={trade={27232,8932,{65535,2}},base=27232,aug1=25,aug1MAX=24,cost=50},--Yorium Cuisses/Attack
[201]={trade={27232,8932,{65535,3}},base=27232,aug1=68,aug1MAX=19,cost=50},--Yorium Cuisses/Accuracy and Attack
[202]={trade={27232,8932,{65535,4}},base=27232,aug1=33,aug1MAX=24,cost=50},--Yorium Cuisses/Defense
[203]={trade={27232,8935,{65535,1}},base=27232,aug2=115,aug2MAX=5,cost=50},--Yorium Cuisses/Store TP
[204]={trade={27232,8935,{65535,2}},base=27232,aug2=143,aug2MAX=2,cost=50},--Yorium Cuisses/Double Attack
[205]={trade={27232,8935,{65535,3}},base=27232,aug2=356,aug2MAX=6,cost=50},--Yorium Cuisses/Cure Potency Received
[206]={trade={27232,8935,{65535,4}},base=27232,aug2=326,aug2MAX=19,cost=50},--Yorium Cuisses/Weapon Skill Accuracy
[207]={trade={27232,8935,{65535,5}},base=27232,aug2=330,aug2MAX=4,cost=50},--Yorium Cuisses/Waltz Potency
[208]={trade={27232,8935,{65535,6}},base=27232,aug2=39,aug2MAX=9,cost=50},--Yorium Cuisses/Enmity
[209]={trade={27232,8938,{65535,1}},base=27232,aug3=512,aug3MAX=9,cost=50},--Yorium Cuisses/STR
[210]={trade={27232,8938,{65535,2}},base=27232,aug3=514,aug3MAX=9,cost=50},--Yorium Cuisses/VIT
[211]={trade={27232,8938,{65535,3}},base=27232,aug3=551,aug3MAX=6,cost=50},--Yorium Cuisses/STR and VIT
[212]={trade={27232,8938,{65535,4}},base=27232,aug3=54,aug3MAX=-3,cost=50},--Yorium Cuisses/Physical Damage Taken
[213]={trade={27232,8938,{65535,5}},base=27232,aug3=71,aug3MAX=-2,cost=50},--Yorium Cuisses/Damage Taken
[214]={trade={27232,8938,{65535,6}},base=27232,aug3=327,aug3MAX=2,cost=50},--Yorium Cuisses/Weapon Skill Damage
[215]={trade={27232,8941,{65535,1}},base=27232,aug1=27,aug1MAX=9,cost=50},--Yorium Cuisses/Ranged Accuracy
[216]={trade={27232,8941,{65535,2}},base=27232,aug1=29,aug1MAX=9,cost=50},--Yorium Cuisses/Ranged Attack
[217]={trade={27232,8941,{65535,3}},base=27232,aug1=69,aug1MAX=9,cost=50},--Yorium Cuisses/Ranged Accuracy and Ranged Attack
[218]={trade={27232,8941,{65535,4}},base=27232,aug1=31,aug1MAX=19,cost=50},--Yorium Cuisses/Evasion
[219]={trade={27232,8944,{65535,1}},base=27232,aug2=330,aug2MAX=4,cost=50},--Yorium Cuisses/Waltz Potency
[220]={trade={27232,8944,{65535,2}},base=27232,aug2=39,aug2MAX=-4,cost=50},--Yorium Cuisses/Enmity
[221]={trade={27232,8944,{65535,3}},base=27232,aug2=116,aug2MAX=5,cost=50},--Yorium Cuisses/Subtle Blow
[222]={trade={27232,8944,{65535,4}},base=27232,aug2=49,aug2MAX=2,cost=50},--Yorium Cuisses/Haste
[223]={trade={27232,8944,{65535,5}},base=27232,aug2=103,aug2MAX=-3,cost=50},--Yorium Cuisses/Enemy Critical Hit Rate
[224]={trade={27232,8944,{65535,6}},base=27232,aug2=137,aug2MAX=1,cost=50},--Yorium Cuisses/Regen
[225]={trade={27232,8947,{65535,1}},base=27232,aug3=327,aug3MAX=2,cost=50},--Yorium Cuisses/Weapon Skill Damage
[226]={trade={27232,8947,{65535,2}},base=27232,aug3=513,aug3MAX=9,cost=50},--Yorium Cuisses/DEX
[227]={trade={27232,8947,{65535,3}},base=27232,aug3=515,aug3MAX=9,cost=50},--Yorium Cuisses/AGI
[228]={trade={27232,8947,{65535,4}},base=27232,aug3=550,aug3MAX=6,cost=50},--Yorium Cuisses/STR and DEX
[229]={trade={27232,8947,{65535,5}},base=27232,aug3=332,aug3MAX=4,cost=50},--Yorium Cuisses/Skillchain Damage
[230]={trade={27232,8947,{65535,6}},base=27232,aug3=56,aug3MAX=-3,cost=50},--Yorium Cuisses/Breath Damage Taken
[231]={trade={27232,8950,{65535,1}},base=27232,aug1=35,aug1MAX=9,cost=50},--Yorium Cuisses/Magic Accuracy
[232]={trade={27232,8950,{65535,2}},base=27232,aug1=133,aug1MAX=9,cost=50},--Yorium Cuisses/Magic Attack Bonus
[233]={trade={27232,8950,{65535,3}},base=27232,aug1=108,aug1MAX=9,cost=50},--Yorium Cuisses/Magic Accuracy and Magic Attack Bonus
[234]={trade={27232,8950,{65535,4}},base=27232,aug1=37,aug1MAX=19,cost=50},--Yorium Cuisses/Magic Evasion
[235]={trade={27232,8953,{65535,1}},base=27232,aug2=140,aug2MAX=2,cost=50},--Yorium Cuisses/Fast Cast
[236]={trade={27232,8953,{65535,2}},base=27232,aug2=329,aug2MAX=4,cost=50},--Yorium Cuisses/Cure Potency
[237]={trade={27232,8953,{65535,3}},base=27232,aug2=323,aug2MAX=-4,cost=50},--Yorium Cuisses/Cure Spellcasting Time
[238]={trade={27232,8953,{65535,4}},base=27232,aug2=53,aug2MAX=-9,cost=50},--Yorium Cuisses/Spell Interruption Rate
[239]={trade={27232,8953,{65535,5}},base=27232,aug2=343,aug2MAX=6,cost=50},--Yorium Cuisses/"Drain" and "Aspir" potency
[240]={trade={27232,8953,{65535,6}},base=27232,aug2=237,aug2MAX=9,cost=50},--Yorium Cuisses/Occult Acumen
[241]={trade={27232,8956,{65535,1}},base=27232,aug3=516,aug3MAX=9,cost=50},--Yorium Cuisses/INT
[242]={trade={27232,8956,{65535,2}},base=27232,aug3=554,aug3MAX=6,cost=50},--Yorium Cuisses/INT and MND
[243]={trade={27232,8956,{65535,3}},base=27232,aug3=558,aug3MAX=6,cost=50},--Yorium Cuisses/STR and INT
[244]={trade={27232,8956,{65535,4}},base=27232,aug3=55,aug3MAX=-3,cost=50},--Yorium Cuisses/Magic Damage Taken
[245]={trade={27232,8956,{65535,5}},base=27232,aug3=368,aug3MAX=2,cost=50},--Yorium Cuisses/Phalanx
[246]={trade={27232,8956,{65535,6}},base=27232,aug3=517,aug3MAX=9,cost=50},--Yorium Cuisses/MND
[247]={trade={27232,8959,{65535,1}},base=27232,aug1=96,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Accuracy and Pet: Ranged Accuracy
[248]={trade={27232,8959,{65535,2}},base=27232,aug1=97,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Attack and Pet: Ranged Attack
[249]={trade={27232,8959,{65535,3}},base=27232,aug1=100,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Magic Accuracy
[250]={trade={27232,8959,{65535,4}},base=27232,aug1=101,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Magic Attack Bonus
[251]={trade={27232,8959,{65535,5}},base=27232,aug1=99,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Defense
[252]={trade={27232,8959,{65535,6}},base=27232,aug1=98,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Evasion
[253]={trade={27232,8959,{65535,7}},base=27232,aug1=117,aug1MAX=19,cost=50},--Yorium Cuisses/Pet: Magic Evasion
[254]={trade={27232,8962,{65535,1}},base=27232,aug2=110,aug2MAX=2,cost=50},--Yorium Cuisses/Pet: Regen
[255]={trade={27232,8962,{65535,2}},base=27232,aug2=116,aug2MAX=7,cost=50},--Yorium Cuisses/Pet: Subtle Blow
[256]={trade={27232,8962,{65535,3}},base=27232,aug2=Change,aug2MAX=3,cost=50},--Yorium Cuisses/Pet: Critical Hit Rate
[257]={trade={27232,8962,{65535,4}},base=27232,aug2=123,aug2MAX=4,cost=50},--Yorium Cuisses/Pet: Double Attack
[258]={trade={27232,8962,{65535,5}},base=27232,aug2=104,aug2MAX=-7,cost=50},--Yorium Cuisses/Pet: Enmity
[259]={trade={27232,8962,{65535,6}},base=27232,aug2=115,aug2MAX=7,cost=50},--Yorium Cuisses/Pet: Store TP
[260]={trade={27232,8965,{65535,1}},base=27232,aug3=518,aug3MAX=9,cost=50},--Yorium Cuisses/CHR
[261]={trade={27232,8965,{65535,2}},base=27232,aug3=555,aug3MAX=6,cost=50},--Yorium Cuisses/MND and CHR
[262]={trade={27232,8965,{65535,3}},base=27232,aug3=557,aug3MAX=6,cost=50},--Yorium Cuisses/STR and CHR
[263]={trade={27232,8965,{65535,4}},base=27232,aug3=111,aug3MAX=4,cost=50},--Yorium Cuisses/Pet: Haste
[264]={trade={27232,8965,{65535,5}},base=27232,aug3=112,aug3MAX=-3,cost=50},--Yorium Cuisses/Pet: Damage Taken
[265]={trade={27402,8932,{65535,1}},base=27402,aug1=23,aug1MAX=24,cost=50},--Yorium Sabatons/Accuracy
[266]={trade={27402,8932,{65535,2}},base=27402,aug1=25,aug1MAX=24,cost=50},--Yorium Sabatons/Attack
[267]={trade={27402,8932,{65535,3}},base=27402,aug1=68,aug1MAX=19,cost=50},--Yorium Sabatons/Accuracy and Attack
[268]={trade={27402,8932,{65535,4}},base=27402,aug1=33,aug1MAX=24,cost=50},--Yorium Sabatons/Defense
[269]={trade={27402,8935,{65535,1}},base=27402,aug2=115,aug2MAX=5,cost=50},--Yorium Sabatons/Store TP
[270]={trade={27402,8935,{65535,2}},base=27402,aug2=143,aug2MAX=2,cost=50},--Yorium Sabatons/Double Attack
[271]={trade={27402,8935,{65535,3}},base=27402,aug2=356,aug2MAX=6,cost=50},--Yorium Sabatons/Cure Potency Received
[272]={trade={27402,8935,{65535,4}},base=27402,aug2=326,aug2MAX=19,cost=50},--Yorium Sabatons/Weapon Skill Accuracy
[273]={trade={27402,8935,{65535,5}},base=27402,aug2=330,aug2MAX=4,cost=50},--Yorium Sabatons/Waltz Potency
[274]={trade={27402,8935,{65535,6}},base=27402,aug2=39,aug2MAX=9,cost=50},--Yorium Sabatons/Enmity
[275]={trade={27402,8938,{65535,1}},base=27402,aug3=512,aug3MAX=9,cost=50},--Yorium Sabatons/STR
[276]={trade={27402,8938,{65535,2}},base=27402,aug3=514,aug3MAX=9,cost=50},--Yorium Sabatons/VIT
[277]={trade={27402,8938,{65535,3}},base=27402,aug3=551,aug3MAX=6,cost=50},--Yorium Sabatons/STR and VIT
[278]={trade={27402,8938,{65535,4}},base=27402,aug3=54,aug3MAX=-3,cost=50},--Yorium Sabatons/Physical Damage Taken
[279]={trade={27402,8938,{65535,5}},base=27402,aug3=71,aug3MAX=-2,cost=50},--Yorium Sabatons/Damage Taken
[280]={trade={27402,8938,{65535,6}},base=27402,aug3=327,aug3MAX=2,cost=50},--Yorium Sabatons/Weapon Skill Damage
[281]={trade={27402,8941,{65535,1}},base=27402,aug1=27,aug1MAX=9,cost=50},--Yorium Sabatons/Ranged Accuracy
[282]={trade={27402,8941,{65535,2}},base=27402,aug1=29,aug1MAX=9,cost=50},--Yorium Sabatons/Ranged Attack
[283]={trade={27402,8941,{65535,3}},base=27402,aug1=69,aug1MAX=9,cost=50},--Yorium Sabatons/Ranged Accuracy and Ranged Attack
[284]={trade={27402,8941,{65535,4}},base=27402,aug1=31,aug1MAX=19,cost=50},--Yorium Sabatons/Evasion
[285]={trade={27402,8944,{65535,1}},base=27402,aug2=330,aug2MAX=4,cost=50},--Yorium Sabatons/Waltz Potency
[286]={trade={27402,8944,{65535,2}},base=27402,aug2=39,aug2MAX=-4,cost=50},--Yorium Sabatons/Enmity
[287]={trade={27402,8944,{65535,3}},base=27402,aug2=116,aug2MAX=5,cost=50},--Yorium Sabatons/Subtle Blow
[288]={trade={27402,8944,{65535,4}},base=27402,aug2=49,aug2MAX=2,cost=50},--Yorium Sabatons/Haste
[289]={trade={27402,8944,{65535,5}},base=27402,aug2=103,aug2MAX=-3,cost=50},--Yorium Sabatons/Enemy Critical Hit Rate
[290]={trade={27402,8944,{65535,6}},base=27402,aug2=137,aug2MAX=1,cost=50},--Yorium Sabatons/Regen
[291]={trade={27402,8947,{65535,1}},base=27402,aug3=327,aug3MAX=2,cost=50},--Yorium Sabatons/Weapon Skill Damage
[292]={trade={27402,8947,{65535,2}},base=27402,aug3=513,aug3MAX=9,cost=50},--Yorium Sabatons/DEX
[293]={trade={27402,8947,{65535,3}},base=27402,aug3=515,aug3MAX=9,cost=50},--Yorium Sabatons/AGI
[294]={trade={27402,8947,{65535,4}},base=27402,aug3=550,aug3MAX=6,cost=50},--Yorium Sabatons/STR and DEX
[295]={trade={27402,8947,{65535,5}},base=27402,aug3=332,aug3MAX=4,cost=50},--Yorium Sabatons/Skillchain Damage
[296]={trade={27402,8947,{65535,6}},base=27402,aug3=56,aug3MAX=-3,cost=50},--Yorium Sabatons/Breath Damage Taken
[297]={trade={27402,8950,{65535,1}},base=27402,aug1=35,aug1MAX=9,cost=50},--Yorium Sabatons/Magic Accuracy
[298]={trade={27402,8950,{65535,2}},base=27402,aug1=133,aug1MAX=9,cost=50},--Yorium Sabatons/Magic Attack Bonus
[299]={trade={27402,8950,{65535,3}},base=27402,aug1=108,aug1MAX=9,cost=50},--Yorium Sabatons/Magic Accuracy and Magic Attack Bonus
[300]={trade={27402,8950,{65535,4}},base=27402,aug1=37,aug1MAX=19,cost=50},--Yorium Sabatons/Magic Evasion
[301]={trade={27402,8953,{65535,1}},base=27402,aug2=140,aug2MAX=2,cost=50},--Yorium Sabatons/Fast Cast
[302]={trade={27402,8953,{65535,2}},base=27402,aug2=329,aug2MAX=4,cost=50},--Yorium Sabatons/Cure Potency
[303]={trade={27402,8953,{65535,3}},base=27402,aug2=323,aug2MAX=-4,cost=50},--Yorium Sabatons/Cure Spellcasting Time
[304]={trade={27402,8953,{65535,4}},base=27402,aug2=53,aug2MAX=-9,cost=50},--Yorium Sabatons/Spell Interruption Rate
[305]={trade={27402,8953,{65535,5}},base=27402,aug2=343,aug2MAX=6,cost=50},--Yorium Sabatons/"Drain" and "Aspir" potency
[306]={trade={27402,8953,{65535,6}},base=27402,aug2=237,aug2MAX=9,cost=50},--Yorium Sabatons/Occult Acumen
[307]={trade={27402,8956,{65535,1}},base=27402,aug3=516,aug3MAX=9,cost=50},--Yorium Sabatons/INT
[308]={trade={27402,8956,{65535,2}},base=27402,aug3=554,aug3MAX=6,cost=50},--Yorium Sabatons/INT and MND
[309]={trade={27402,8956,{65535,3}},base=27402,aug3=558,aug3MAX=6,cost=50},--Yorium Sabatons/STR and INT
[310]={trade={27402,8956,{65535,4}},base=27402,aug3=55,aug3MAX=-3,cost=50},--Yorium Sabatons/Magic Damage Taken
[311]={trade={27402,8956,{65535,5}},base=27402,aug3=368,aug3MAX=2,cost=50},--Yorium Sabatons/Phalanx
[312]={trade={27402,8956,{65535,6}},base=27402,aug3=517,aug3MAX=9,cost=50},--Yorium Sabatons/MND
[313]={trade={27402,8959,{65535,1}},base=27402,aug1=96,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Accuracy and Pet: Ranged Accuracy
[314]={trade={27402,8959,{65535,2}},base=27402,aug1=97,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Attack and Pet: Ranged Attack
[315]={trade={27402,8959,{65535,3}},base=27402,aug1=100,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Magic Accuracy
[316]={trade={27402,8959,{65535,4}},base=27402,aug1=101,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Magic Attack Bonus
[317]={trade={27402,8959,{65535,5}},base=27402,aug1=99,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Defense
[318]={trade={27402,8959,{65535,6}},base=27402,aug1=98,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Evasion
[319]={trade={27402,8959,{65535,7}},base=27402,aug1=117,aug1MAX=19,cost=50},--Yorium Sabatons/Pet: Magic Evasion
[320]={trade={27402,8962,{65535,1}},base=27402,aug2=110,aug2MAX=2,cost=50},--Yorium Sabatons/Pet: Regen
[321]={trade={27402,8962,{65535,2}},base=27402,aug2=116,aug2MAX=7,cost=50},--Yorium Sabatons/Pet: Subtle Blow
[322]={trade={27402,8962,{65535,3}},base=27402,aug2=Change,aug2MAX=3,cost=50},--Yorium Sabatons/Pet: Critical Hit Rate
[323]={trade={27402,8962,{65535,4}},base=27402,aug2=123,aug2MAX=4,cost=50},--Yorium Sabatons/Pet: Double Attack
[324]={trade={27402,8962,{65535,5}},base=27402,aug2=104,aug2MAX=-7,cost=50},--Yorium Sabatons/Pet: Enmity
[325]={trade={27402,8962,{65535,6}},base=27402,aug2=115,aug2MAX=7,cost=50},--Yorium Sabatons/Pet: Store TP
[326]={trade={27402,8965,{65535,1}},base=27402,aug3=518,aug3MAX=9,cost=50},--Yorium Sabatons/CHR
[327]={trade={27402,8965,{65535,2}},base=27402,aug3=555,aug3MAX=6,cost=50},--Yorium Sabatons/MND and CHR
[328]={trade={27402,8965,{65535,3}},base=27402,aug3=557,aug3MAX=6,cost=50},--Yorium Sabatons/STR and CHR
[329]={trade={27402,8965,{65535,4}},base=27402,aug3=111,aug3MAX=4,cost=50},--Yorium Sabatons/Pet: Haste
[330]={trade={27402,8965,{65535,5}},base=27402,aug3=112,aug3MAX=-3,cost=50},--Yorium Sabatons/Pet: Damage Taken
[331]={trade={26734,8932,{65535,1}},base=26734,aug1=23,aug1MAX=24,cost=50},--Acro Helm/Accuracy
[332]={trade={26734,8932,{65535,2}},base=26734,aug1=25,aug1MAX=24,cost=50},--Acro Helm/Attack
[333]={trade={26734,8932,{65535,3}},base=26734,aug1=68,aug1MAX=19,cost=50},--Acro Helm/Accuracy and Attack
[334]={trade={26734,8932,{65535,4}},base=26734,aug1=33,aug1MAX=24,cost=50},--Acro Helm/Defense
[335]={trade={26734,8935,{65535,1}},base=26734,aug2=39,aug2MAX=9,cost=50},--Acro Helm/Enmity
[336]={trade={26734,8935,{65535,2}},base=26734,aug2=330,aug2MAX=4,cost=50},--Acro Helm/Waltz Potency
[337]={trade={26734,8935,{65535,3}},base=26734,aug2=115,aug2MAX=5,cost=50},--Acro Helm/Store TP
[338]={trade={26734,8935,{65535,4}},base=26734,aug2=143,aug2MAX=2,cost=50},--Acro Helm/Double Attack
[339]={trade={26734,8935,{65535,5}},base=26734,aug2=356,aug2MAX=6,cost=50},--Acro Helm/Cure Potency Received
[340]={trade={26734,8935,{65535,6}},base=26734,aug2=326,aug2MAX=19,cost=50},--Acro Helm/Weapon Skill Accuracy
[341]={trade={26734,8938,{65535,1}},base=26734,aug3=512,aug3MAX=9,cost=50},--Acro Helm/STR
[342]={trade={26734,8938,{65535,2}},base=26734,aug3=514,aug3MAX=9,cost=50},--Acro Helm/VIT
[343]={trade={26734,8938,{65535,3}},base=26734,aug3=551,aug3MAX=6,cost=50},--Acro Helm/STR and VIT
[344]={trade={26734,8938,{65535,4}},base=26734,aug3=327,aug3MAX=2,cost=50},--Acro Helm/Weapon Skill Damage
[345]={trade={26734,8938,{65535,5}},base=26734,aug3=328,aug3MAX=2,cost=50},--Acro Helm/Critical Hit Damage
[346]={trade={26734,8938,{65535,6}},base=26734,aug3=1,aug3MAX=49,cost=50},--Acro Helm/HP
[347]={trade={26734,8941,{65535,1}},base=26734,aug1=27,aug1MAX=19,cost=50},--Acro Helm/Ranged Accuracy
[348]={trade={26734,8941,{65535,2}},base=26734,aug1=29,aug1MAX=19,cost=50},--Acro Helm/Ranged Attack
[349]={trade={26734,8941,{65535,3}},base=26734,aug1=69,aug1MAX=14,cost=50},--Acro Helm/Ranged Accuracy and Ranged Attack
[350]={trade={26734,8941,{65535,4}},base=26734,aug1=31,aug1MAX=19,cost=50},--Acro Helm/Evasion
[351]={trade={26734,8944,{65535,1}},base=26734,aug2=39,aug2MAX=-4,cost=50},--Acro Helm/Enmity
[352]={trade={26734,8944,{65535,2}},base=26734,aug2=116,aug2MAX=5,cost=50},--Acro Helm/Subtle Blow
[353]={trade={26734,8944,{65535,3}},base=26734,aug2=49,aug2MAX=2,cost=50},--Acro Helm/Haste
[354]={trade={26734,8944,{65535,4}},base=26734,aug2=103,aug2MAX=-3,cost=50},--Acro Helm/Enemy Critical Hit Rate
[355]={trade={26734,8944,{65535,5}},base=26734,aug2=212,aug2MAX=7,cost=50},--Acro Helm/Recycle
[356]={trade={26734,8944,{65535,6}},base=26734,aug2=139,aug2MAX=4,cost=50},--Acro Helm/Rapid Shot
[357]={trade={26734,8947,{65535,1}},base=26734,aug3=513,aug3MAX=9,cost=50},--Acro Helm/DEX
[358]={trade={26734,8947,{65535,2}},base=26734,aug3=515,aug3MAX=9,cost=50},--Acro Helm/AGI
[359]={trade={26734,8947,{65535,3}},base=26734,aug3=550,aug3MAX=6,cost=50},--Acro Helm/STR and DEX
[360]={trade={26734,8947,{65535,4}},base=26734,aug3=552,aug3MAX=6,cost=50},--Acro Helm/STR and AGI
[361]={trade={26734,8947,{65535,5}},base=26734,aug3=211,aug3MAX=4,cost=50},--Acro Helm/Snapshot
[362]={trade={26734,8947,{65535,6}},base=26734,aug3=332,aug3MAX=4,cost=50},--Acro Helm/Skillchain Damage
[363]={trade={26734,8950,{65535,1}},base=26734,aug1=35,aug1MAX=9,cost=50},--Acro Helm/Magic Accuracy
[364]={trade={26734,8950,{65535,2}},base=26734,aug1=133,aug1MAX=9,cost=50},--Acro Helm/Magic Attack Bonus
[365]={trade={26734,8950,{65535,3}},base=26734,aug1=108,aug1MAX=9,cost=50},--Acro Helm/Magic Accuracy and Magic Attack Bonus
[366]={trade={26734,8950,{65535,4}},base=26734,aug1=37,aug1MAX=19,cost=50},--Acro Helm/Magic Evasion
[367]={trade={26734,8953,{65535,1}},base=26734,aug2=39,aug2MAX=-4,cost=50},--Acro Helm/Enmity
[368]={trade={26734,8953,{65535,2}},base=26734,aug2=140,aug2MAX=2,cost=50},--Acro Helm/Fast Cast
[369]={trade={26734,8953,{65535,3}},base=26734,aug2=141,aug2MAX=4,cost=50},--Acro Helm/Conserve MP
[370]={trade={26734,8953,{65535,4}},base=26734,aug2=323,aug2MAX=-4,cost=50},--Acro Helm/Cure Spellcasting Time
[371]={trade={26734,8953,{65535,5}},base=26734,aug2=53,aug2MAX=-9,cost=50},--Acro Helm/Spell Interruption Rate
[372]={trade={26734,8953,{65535,6}},base=26734,aug2=343,aug2MAX=6,cost=50},--Acro Helm/"Drain" and "Aspir" potency
[373]={trade={26734,8956,{65535,1}},base=26734,aug3=516,aug3MAX=9,cost=50},--Acro Helm/INT
[374]={trade={26734,8956,{65535,2}},base=26734,aug3=554,aug3MAX=6,cost=50},--Acro Helm/INT and MND
[375]={trade={26734,8956,{65535,3}},base=26734,aug3=558,aug3MAX=6,cost=50},--Acro Helm/STR and INT
[376]={trade={26734,8956,{65535,4}},base=26734,aug3=335,aug3MAX=9,cost=50},--Acro Helm/Magic Critical Hit Damage
[377]={trade={26734,8956,{65535,5}},base=26734,aug3=9,aug3MAX=49,cost=50},--Acro Helm/MP
[378]={trade={26734,8956,{65535,6}},base=26734,aug3=517,aug3MAX=9,cost=50},--Acro Helm/MND
[379]={trade={26734,8959,{65535,1}},base=26734,aug1=96,aug1MAX=24,cost=50},--Acro Helm/Pet: Accuracy and Pet: Ranged Accuracy
[380]={trade={26734,8959,{65535,2}},base=26734,aug1=97,aug1MAX=24,cost=50},--Acro Helm/Pet: Attack and Pet: Ranged Attack
[381]={trade={26734,8959,{65535,3}},base=26734,aug1=100,aug1MAX=24,cost=50},--Acro Helm/Pet: Magic Accuracy
[382]={trade={26734,8959,{65535,4}},base=26734,aug1=101,aug1MAX=24,cost=50},--Acro Helm/Pet: Magic Attack Bonus
[383]={trade={26734,8959,{65535,5}},base=26734,aug1=99,aug1MAX=24,cost=50},--Acro Helm/Pet: Defense
[384]={trade={26734,8959,{65535,6}},base=26734,aug1=98,aug1MAX=24,cost=50},--Acro Helm/Pet: Evasion
[385]={trade={26734,8959,{65535,7}},base=26734,aug1=117,aug1MAX=24,cost=50},--Acro Helm/Pet: Magic Evasion
[386]={trade={26734,8962,{65535,1}},base=26734,aug2=110,aug2MAX=2,cost=50},--Acro Helm/Pet: Regen
[387]={trade={26734,8962,{65535,2}},base=26734,aug2=115,aug2MAX=7,cost=50},--Acro Helm/Pet: Store TP
[388]={trade={26734,8962,{65535,3}},base=26734,aug2=121,aug2MAX=7,cost=50},--Acro Helm/Pet: Breath
[389]={trade={26734,8962,{65535,4}},base=26734,aug2=123,aug2MAX=4,cost=50},--Acro Helm/Pet: Double Attack
[390]={trade={26734,8962,{65535,5}},base=26734,aug2=Change,aug2MAX=3,cost=50},--Acro Helm/Pet: Critical Hit Rate
[391]={trade={26734,8962,{65535,6}},base=26734,aug2=324,aug2MAX=-4,cost=50},--Acro Helm/"Call Beast" Ability Delay
[392]={trade={26734,8965,{65535,1}},base=26734,aug3=517,aug3MAX=9,cost=50},--Acro Helm/MND
[393]={trade={26734,8965,{65535,2}},base=26734,aug3=518,aug3MAX=9,cost=50},--Acro Helm/CHR
[394]={trade={26734,8965,{65535,3}},base=26734,aug3=555,aug3MAX=6,cost=50},--Acro Helm/MND and CHR
[395]={trade={26734,8965,{65535,4}},base=26734,aug3=557,aug3MAX=6,cost=50},--Acro Helm/STR and CHR
[396]={trade={26734,8965,{65535,5}},base=26734,aug3=111,aug3MAX=4,cost=50},--Acro Helm/Pet: Haste
[397]={trade={26734,8965,{65535,6}},base=26734,aug3=112,aug3MAX=-3,cost=50},--Acro Helm/Pet: Damage Taken
[398]={trade={26892,8932,{65535,1}},base=26892,aug1=23,aug1MAX=24,cost=50},--Acro Surcoat/Accuracy
[399]={trade={26892,8932,{65535,2}},base=26892,aug1=25,aug1MAX=24,cost=50},--Acro Surcoat/Attack
[400]={trade={26892,8932,{65535,3}},base=26892,aug1=68,aug1MAX=19,cost=50},--Acro Surcoat/Accuracy and Attack
[401]={trade={26892,8932,{65535,4}},base=26892,aug1=33,aug1MAX=24,cost=50},--Acro Surcoat/Defense
[402]={trade={26892,8935,{65535,1}},base=26892,aug2=39,aug2MAX=9,cost=50},--Acro Surcoat/Enmity
[403]={trade={26892,8935,{65535,2}},base=26892,aug2=330,aug2MAX=4,cost=50},--Acro Surcoat/Waltz Potency
[404]={trade={26892,8935,{65535,3}},base=26892,aug2=115,aug2MAX=5,cost=50},--Acro Surcoat/Store TP
[405]={trade={26892,8935,{65535,4}},base=26892,aug2=143,aug2MAX=2,cost=50},--Acro Surcoat/Double Attack
[406]={trade={26892,8935,{65535,5}},base=26892,aug2=356,aug2MAX=6,cost=50},--Acro Surcoat/Cure Potency Received
[407]={trade={26892,8935,{65535,6}},base=26892,aug2=326,aug2MAX=19,cost=50},--Acro Surcoat/Weapon Skill Accuracy
[408]={trade={26892,8938,{65535,1}},base=26892,aug3=512,aug3MAX=9,cost=50},--Acro Surcoat/STR
[409]={trade={26892,8938,{65535,2}},base=26892,aug3=514,aug3MAX=9,cost=50},--Acro Surcoat/VIT
[410]={trade={26892,8938,{65535,3}},base=26892,aug3=551,aug3MAX=6,cost=50},--Acro Surcoat/STR and VIT
[411]={trade={26892,8938,{65535,4}},base=26892,aug3=327,aug3MAX=2,cost=50},--Acro Surcoat/Weapon Skill Damage
[412]={trade={26892,8938,{65535,5}},base=26892,aug3=328,aug3MAX=2,cost=50},--Acro Surcoat/Critical Hit Damage
[413]={trade={26892,8938,{65535,6}},base=26892,aug3=1,aug3MAX=49,cost=50},--Acro Surcoat/HP
[414]={trade={26892,8941,{65535,1}},base=26892,aug1=27,aug1MAX=19,cost=50},--Acro Surcoat/Ranged Accuracy
[415]={trade={26892,8941,{65535,2}},base=26892,aug1=29,aug1MAX=19,cost=50},--Acro Surcoat/Ranged Attack
[416]={trade={26892,8941,{65535,3}},base=26892,aug1=69,aug1MAX=14,cost=50},--Acro Surcoat/Ranged Accuracy and Ranged Attack
[417]={trade={26892,8941,{65535,4}},base=26892,aug1=31,aug1MAX=19,cost=50},--Acro Surcoat/Evasion
[418]={trade={26892,8944,{65535,1}},base=26892,aug2=39,aug2MAX=-4,cost=50},--Acro Surcoat/Enmity
[419]={trade={26892,8944,{65535,2}},base=26892,aug2=116,aug2MAX=5,cost=50},--Acro Surcoat/Subtle Blow
[420]={trade={26892,8944,{65535,3}},base=26892,aug2=49,aug2MAX=2,cost=50},--Acro Surcoat/Haste
[421]={trade={26892,8944,{65535,4}},base=26892,aug2=103,aug2MAX=-3,cost=50},--Acro Surcoat/Enemy Critical Hit Rate
[422]={trade={26892,8944,{65535,5}},base=26892,aug2=212,aug2MAX=7,cost=50},--Acro Surcoat/Recycle
[423]={trade={26892,8944,{65535,6}},base=26892,aug2=139,aug2MAX=4,cost=50},--Acro Surcoat/Rapid Shot
[424]={trade={26892,8947,{65535,1}},base=26892,aug3=513,aug3MAX=9,cost=50},--Acro Surcoat/DEX
[425]={trade={26892,8947,{65535,2}},base=26892,aug3=515,aug3MAX=9,cost=50},--Acro Surcoat/AGI
[426]={trade={26892,8947,{65535,3}},base=26892,aug3=550,aug3MAX=6,cost=50},--Acro Surcoat/STR and DEX
[427]={trade={26892,8947,{65535,4}},base=26892,aug3=552,aug3MAX=6,cost=50},--Acro Surcoat/STR and AGI
[428]={trade={26892,8947,{65535,5}},base=26892,aug3=211,aug3MAX=4,cost=50},--Acro Surcoat/Snapshot
[429]={trade={26892,8947,{65535,6}},base=26892,aug3=332,aug3MAX=4,cost=50},--Acro Surcoat/Skillchain Damage
[430]={trade={26892,8950,{65535,1}},base=26892,aug1=35,aug1MAX=9,cost=50},--Acro Surcoat/Magic Accuracy
[431]={trade={26892,8950,{65535,2}},base=26892,aug1=133,aug1MAX=9,cost=50},--Acro Surcoat/Magic Attack Bonus
[432]={trade={26892,8950,{65535,3}},base=26892,aug1=108,aug1MAX=9,cost=50},--Acro Surcoat/Magic Accuracy and Magic Attack Bonus
[433]={trade={26892,8950,{65535,4}},base=26892,aug1=37,aug1MAX=19,cost=50},--Acro Surcoat/Magic Evasion
[434]={trade={26892,8953,{65535,1}},base=26892,aug2=39,aug2MAX=-4,cost=50},--Acro Surcoat/Enmity
[435]={trade={26892,8953,{65535,2}},base=26892,aug2=140,aug2MAX=2,cost=50},--Acro Surcoat/Fast Cast
[436]={trade={26892,8953,{65535,3}},base=26892,aug2=141,aug2MAX=4,cost=50},--Acro Surcoat/Conserve MP
[437]={trade={26892,8953,{65535,4}},base=26892,aug2=323,aug2MAX=-4,cost=50},--Acro Surcoat/Cure Spellcasting Time
[438]={trade={26892,8953,{65535,5}},base=26892,aug2=53,aug2MAX=-9,cost=50},--Acro Surcoat/Spell Interruption Rate
[439]={trade={26892,8953,{65535,6}},base=26892,aug2=343,aug2MAX=6,cost=50},--Acro Surcoat/"Drain" and "Aspir" potency
[440]={trade={26892,8956,{65535,1}},base=26892,aug3=516,aug3MAX=9,cost=50},--Acro Surcoat/INT
[441]={trade={26892,8956,{65535,2}},base=26892,aug3=554,aug3MAX=6,cost=50},--Acro Surcoat/INT and MND
[442]={trade={26892,8956,{65535,3}},base=26892,aug3=558,aug3MAX=6,cost=50},--Acro Surcoat/STR and INT
[443]={trade={26892,8956,{65535,4}},base=26892,aug3=335,aug3MAX=9,cost=50},--Acro Surcoat/Magic Critical Hit Damage
[444]={trade={26892,8956,{65535,5}},base=26892,aug3=9,aug3MAX=49,cost=50},--Acro Surcoat/MP
[445]={trade={26892,8956,{65535,6}},base=26892,aug3=517,aug3MAX=9,cost=50},--Acro Surcoat/MND
[446]={trade={26892,8959,{65535,1}},base=26892,aug1=96,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Accuracy and Pet: Ranged Accuracy
[447]={trade={26892,8959,{65535,2}},base=26892,aug1=97,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Attack and Pet: Ranged Attack
[448]={trade={26892,8959,{65535,3}},base=26892,aug1=100,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Magic Accuracy
[449]={trade={26892,8959,{65535,4}},base=26892,aug1=101,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Magic Attack Bonus
[450]={trade={26892,8959,{65535,5}},base=26892,aug1=99,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Defense
[451]={trade={26892,8959,{65535,6}},base=26892,aug1=98,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Evasion
[452]={trade={26892,8959,{65535,7}},base=26892,aug1=117,aug1MAX=24,cost=50},--Acro Surcoat/Pet: Magic Evasion
[453]={trade={26892,8962,{65535,1}},base=26892,aug2=110,aug2MAX=2,cost=50},--Acro Surcoat/Pet: Regen
[454]={trade={26892,8962,{65535,2}},base=26892,aug2=115,aug2MAX=7,cost=50},--Acro Surcoat/Pet: Store TP
[455]={trade={26892,8962,{65535,3}},base=26892,aug2=121,aug2MAX=7,cost=50},--Acro Surcoat/Pet: Breath
[456]={trade={26892,8962,{65535,4}},base=26892,aug2=123,aug2MAX=4,cost=50},--Acro Surcoat/Pet: Double Attack
[457]={trade={26892,8962,{65535,5}},base=26892,aug2=Change,aug2MAX=3,cost=50},--Acro Surcoat/Pet: Critical Hit Rate
[458]={trade={26892,8962,{65535,6}},base=26892,aug2=324,aug2MAX=-4,cost=50},--Acro Surcoat/"Call Beast" Ability Delay
[459]={trade={26892,8965,{65535,1}},base=26892,aug3=517,aug3MAX=9,cost=50},--Acro Surcoat/MND
[460]={trade={26892,8965,{65535,2}},base=26892,aug3=518,aug3MAX=9,cost=50},--Acro Surcoat/CHR
[461]={trade={26892,8965,{65535,3}},base=26892,aug3=555,aug3MAX=6,cost=50},--Acro Surcoat/MND and CHR
[462]={trade={26892,8965,{65535,4}},base=26892,aug3=557,aug3MAX=6,cost=50},--Acro Surcoat/STR and CHR
[463]={trade={26892,8965,{65535,5}},base=26892,aug3=111,aug3MAX=4,cost=50},--Acro Surcoat/Pet: Haste
[464]={trade={26892,8965,{65535,6}},base=26892,aug3=112,aug3MAX=-3,cost=50},--Acro Surcoat/Pet: Damage Taken
[465]={trade={27046,8932,{65535,1}},base=27046,aug1=23,aug1MAX=24,cost=50},--Acro Gauntlets/Accuracy
[466]={trade={27046,8932,{65535,2}},base=27046,aug1=25,aug1MAX=24,cost=50},--Acro Gauntlets/Attack
[467]={trade={27046,8932,{65535,3}},base=27046,aug1=68,aug1MAX=19,cost=50},--Acro Gauntlets/Accuracy and Attack
[468]={trade={27046,8932,{65535,4}},base=27046,aug1=33,aug1MAX=24,cost=50},--Acro Gauntlets/Defense
[469]={trade={27046,8935,{65535,1}},base=27046,aug2=39,aug2MAX=9,cost=50},--Acro Gauntlets/Enmity
[470]={trade={27046,8935,{65535,2}},base=27046,aug2=330,aug2MAX=4,cost=50},--Acro Gauntlets/Waltz Potency
[471]={trade={27046,8935,{65535,3}},base=27046,aug2=115,aug2MAX=5,cost=50},--Acro Gauntlets/Store TP
[472]={trade={27046,8935,{65535,4}},base=27046,aug2=143,aug2MAX=2,cost=50},--Acro Gauntlets/Double Attack
[473]={trade={27046,8935,{65535,5}},base=27046,aug2=356,aug2MAX=6,cost=50},--Acro Gauntlets/Cure Potency Received
[474]={trade={27046,8935,{65535,6}},base=27046,aug2=326,aug2MAX=19,cost=50},--Acro Gauntlets/Weapon Skill Accuracy
[475]={trade={27046,8938,{65535,1}},base=27046,aug3=512,aug3MAX=9,cost=50},--Acro Gauntlets/STR
[476]={trade={27046,8938,{65535,2}},base=27046,aug3=514,aug3MAX=9,cost=50},--Acro Gauntlets/VIT
[477]={trade={27046,8938,{65535,3}},base=27046,aug3=551,aug3MAX=6,cost=50},--Acro Gauntlets/STR and VIT
[478]={trade={27046,8938,{65535,4}},base=27046,aug3=327,aug3MAX=2,cost=50},--Acro Gauntlets/Weapon Skill Damage
[479]={trade={27046,8938,{65535,5}},base=27046,aug3=328,aug3MAX=2,cost=50},--Acro Gauntlets/Critical Hit Damage
[480]={trade={27046,8938,{65535,6}},base=27046,aug3=1,aug3MAX=49,cost=50},--Acro Gauntlets/HP
[481]={trade={27046,8941,{65535,1}},base=27046,aug1=27,aug1MAX=19,cost=50},--Acro Gauntlets/Ranged Accuracy
[482]={trade={27046,8941,{65535,2}},base=27046,aug1=29,aug1MAX=19,cost=50},--Acro Gauntlets/Ranged Attack
[483]={trade={27046,8941,{65535,3}},base=27046,aug1=69,aug1MAX=14,cost=50},--Acro Gauntlets/Ranged Accuracy and Ranged Attack
[484]={trade={27046,8941,{65535,4}},base=27046,aug1=31,aug1MAX=19,cost=50},--Acro Gauntlets/Evasion
[485]={trade={27046,8944,{65535,1}},base=27046,aug2=39,aug2MAX=-4,cost=50},--Acro Gauntlets/Enmity
[486]={trade={27046,8944,{65535,2}},base=27046,aug2=116,aug2MAX=5,cost=50},--Acro Gauntlets/Subtle Blow
[487]={trade={27046,8944,{65535,3}},base=27046,aug2=49,aug2MAX=2,cost=50},--Acro Gauntlets/Haste
[488]={trade={27046,8944,{65535,4}},base=27046,aug2=103,aug2MAX=-3,cost=50},--Acro Gauntlets/Enemy Critical Hit Rate
[489]={trade={27046,8944,{65535,5}},base=27046,aug2=212,aug2MAX=7,cost=50},--Acro Gauntlets/Recycle
[490]={trade={27046,8944,{65535,6}},base=27046,aug2=139,aug2MAX=4,cost=50},--Acro Gauntlets/Rapid Shot
[491]={trade={27046,8947,{65535,1}},base=27046,aug3=513,aug3MAX=9,cost=50},--Acro Gauntlets/DEX
[492]={trade={27046,8947,{65535,2}},base=27046,aug3=515,aug3MAX=9,cost=50},--Acro Gauntlets/AGI
[493]={trade={27046,8947,{65535,3}},base=27046,aug3=550,aug3MAX=6,cost=50},--Acro Gauntlets/STR and DEX
[494]={trade={27046,8947,{65535,4}},base=27046,aug3=552,aug3MAX=6,cost=50},--Acro Gauntlets/STR and AGI
[495]={trade={27046,8947,{65535,5}},base=27046,aug3=211,aug3MAX=4,cost=50},--Acro Gauntlets/Snapshot
[496]={trade={27046,8947,{65535,6}},base=27046,aug3=332,aug3MAX=4,cost=50},--Acro Gauntlets/Skillchain Damage
[497]={trade={27046,8950,{65535,1}},base=27046,aug1=35,aug1MAX=9,cost=50},--Acro Gauntlets/Magic Accuracy
[498]={trade={27046,8950,{65535,2}},base=27046,aug1=133,aug1MAX=9,cost=50},--Acro Gauntlets/Magic Attack Bonus
[499]={trade={27046,8950,{65535,3}},base=27046,aug1=108,aug1MAX=9,cost=50},--Acro Gauntlets/Magic Accuracy and Magic Attack Bonus
[500]={trade={27046,8950,{65535,4}},base=27046,aug1=37,aug1MAX=19,cost=50},--Acro Gauntlets/Magic Evasion
[501]={trade={27046,8953,{65535,1}},base=27046,aug2=39,aug2MAX=-4,cost=50},--Acro Gauntlets/Enmity
[502]={trade={27046,8953,{65535,2}},base=27046,aug2=140,aug2MAX=2,cost=50},--Acro Gauntlets/Fast Cast
[503]={trade={27046,8953,{65535,3}},base=27046,aug2=141,aug2MAX=4,cost=50},--Acro Gauntlets/Conserve MP
[504]={trade={27046,8953,{65535,4}},base=27046,aug2=323,aug2MAX=-4,cost=50},--Acro Gauntlets/Cure Spellcasting Time
[505]={trade={27046,8953,{65535,5}},base=27046,aug2=53,aug2MAX=-9,cost=50},--Acro Gauntlets/Spell Interruption Rate
[506]={trade={27046,8953,{65535,6}},base=27046,aug2=343,aug2MAX=6,cost=50},--Acro Gauntlets/"Drain" and "Aspir" potency
[507]={trade={27046,8956,{65535,1}},base=27046,aug3=516,aug3MAX=9,cost=50},--Acro Gauntlets/INT
[508]={trade={27046,8956,{65535,2}},base=27046,aug3=554,aug3MAX=6,cost=50},--Acro Gauntlets/INT and MND
[509]={trade={27046,8956,{65535,3}},base=27046,aug3=558,aug3MAX=6,cost=50},--Acro Gauntlets/STR and INT
[510]={trade={27046,8956,{65535,4}},base=27046,aug3=335,aug3MAX=9,cost=50},--Acro Gauntlets/Magic Critical Hit Damage
[511]={trade={27046,8956,{65535,5}},base=27046,aug3=9,aug3MAX=49,cost=50},--Acro Gauntlets/MP
[512]={trade={27046,8956,{65535,6}},base=27046,aug3=517,aug3MAX=9,cost=50},--Acro Gauntlets/MND
[513]={trade={27046,8959,{65535,1}},base=27046,aug1=96,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Accuracy and Pet: Ranged Accuracy
[514]={trade={27046,8959,{65535,2}},base=27046,aug1=97,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Attack and Pet: Ranged Attack
[515]={trade={27046,8959,{65535,3}},base=27046,aug1=100,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Magic Accuracy
[516]={trade={27046,8959,{65535,4}},base=27046,aug1=101,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Magic Attack Bonus
[517]={trade={27046,8959,{65535,5}},base=27046,aug1=99,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Defense
[518]={trade={27046,8959,{65535,6}},base=27046,aug1=98,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Evasion
[519]={trade={27046,8959,{65535,7}},base=27046,aug1=117,aug1MAX=24,cost=50},--Acro Gauntlets/Pet: Magic Evasion
[520]={trade={27046,8962,{65535,1}},base=27046,aug2=110,aug2MAX=2,cost=50},--Acro Gauntlets/Pet: Regen
[521]={trade={27046,8962,{65535,2}},base=27046,aug2=115,aug2MAX=7,cost=50},--Acro Gauntlets/Pet: Store TP
[522]={trade={27046,8962,{65535,3}},base=27046,aug2=121,aug2MAX=7,cost=50},--Acro Gauntlets/Pet: Breath
[523]={trade={27046,8962,{65535,4}},base=27046,aug2=123,aug2MAX=4,cost=50},--Acro Gauntlets/Pet: Double Attack
[524]={trade={27046,8962,{65535,5}},base=27046,aug2=Change,aug2MAX=3,cost=50},--Acro Gauntlets/Pet: Critical Hit Rate
[525]={trade={27046,8962,{65535,6}},base=27046,aug2=324,aug2MAX=-4,cost=50},--Acro Gauntlets/"Call Beast" Ability Delay
[526]={trade={27046,8965,{65535,1}},base=27046,aug3=517,aug3MAX=9,cost=50},--Acro Gauntlets/MND
[527]={trade={27046,8965,{65535,2}},base=27046,aug3=518,aug3MAX=9,cost=50},--Acro Gauntlets/CHR
[528]={trade={27046,8965,{65535,3}},base=27046,aug3=555,aug3MAX=6,cost=50},--Acro Gauntlets/MND and CHR
[529]={trade={27046,8965,{65535,4}},base=27046,aug3=557,aug3MAX=6,cost=50},--Acro Gauntlets/STR and CHR
[530]={trade={27046,8965,{65535,5}},base=27046,aug3=111,aug3MAX=4,cost=50},--Acro Gauntlets/Pet: Haste
[531]={trade={27046,8965,{65535,6}},base=27046,aug3=112,aug3MAX=-3,cost=50},--Acro Gauntlets/Pet: Damage Taken
[532]={trade={27233,8932,{65535,1}},base=27233,aug1=23,aug1MAX=24,cost=50},--Acro Breeches/Accuracy
[533]={trade={27233,8932,{65535,2}},base=27233,aug1=25,aug1MAX=24,cost=50},--Acro Breeches/Attack
[534]={trade={27233,8932,{65535,3}},base=27233,aug1=68,aug1MAX=19,cost=50},--Acro Breeches/Accuracy and Attack
[535]={trade={27233,8932,{65535,4}},base=27233,aug1=33,aug1MAX=24,cost=50},--Acro Breeches/Defense
[536]={trade={27233,8935,{65535,1}},base=27233,aug2=39,aug2MAX=9,cost=50},--Acro Breeches/Enmity
[537]={trade={27233,8935,{65535,2}},base=27233,aug2=330,aug2MAX=4,cost=50},--Acro Breeches/Waltz Potency
[538]={trade={27233,8935,{65535,3}},base=27233,aug2=115,aug2MAX=5,cost=50},--Acro Breeches/Store TP
[539]={trade={27233,8935,{65535,4}},base=27233,aug2=143,aug2MAX=2,cost=50},--Acro Breeches/Double Attack
[540]={trade={27233,8935,{65535,5}},base=27233,aug2=356,aug2MAX=6,cost=50},--Acro Breeches/Cure Potency Received
[541]={trade={27233,8935,{65535,6}},base=27233,aug2=326,aug2MAX=19,cost=50},--Acro Breeches/Weapon Skill Accuracy
[542]={trade={27233,8938,{65535,1}},base=27233,aug3=512,aug3MAX=9,cost=50},--Acro Breeches/STR
[543]={trade={27233,8938,{65535,2}},base=27233,aug3=514,aug3MAX=9,cost=50},--Acro Breeches/VIT
[544]={trade={27233,8938,{65535,3}},base=27233,aug3=551,aug3MAX=6,cost=50},--Acro Breeches/STR and VIT
[545]={trade={27233,8938,{65535,4}},base=27233,aug3=327,aug3MAX=2,cost=50},--Acro Breeches/Weapon Skill Damage
[546]={trade={27233,8938,{65535,5}},base=27233,aug3=328,aug3MAX=2,cost=50},--Acro Breeches/Critical Hit Damage
[547]={trade={27233,8938,{65535,6}},base=27233,aug3=1,aug3MAX=49,cost=50},--Acro Breeches/HP
[548]={trade={27233,8941,{65535,1}},base=27233,aug1=27,aug1MAX=19,cost=50},--Acro Breeches/Ranged Accuracy
[549]={trade={27233,8941,{65535,2}},base=27233,aug1=29,aug1MAX=19,cost=50},--Acro Breeches/Ranged Attack
[550]={trade={27233,8941,{65535,3}},base=27233,aug1=69,aug1MAX=14,cost=50},--Acro Breeches/Ranged Accuracy and Ranged Attack
[551]={trade={27233,8941,{65535,4}},base=27233,aug1=31,aug1MAX=19,cost=50},--Acro Breeches/Evasion
[552]={trade={27233,8944,{65535,1}},base=27233,aug2=39,aug2MAX=-4,cost=50},--Acro Breeches/Enmity
[553]={trade={27233,8944,{65535,2}},base=27233,aug2=116,aug2MAX=5,cost=50},--Acro Breeches/Subtle Blow
[554]={trade={27233,8944,{65535,3}},base=27233,aug2=49,aug2MAX=2,cost=50},--Acro Breeches/Haste
[555]={trade={27233,8944,{65535,4}},base=27233,aug2=103,aug2MAX=-3,cost=50},--Acro Breeches/Enemy Critical Hit Rate
[556]={trade={27233,8944,{65535,5}},base=27233,aug2=212,aug2MAX=7,cost=50},--Acro Breeches/Recycle
[557]={trade={27233,8944,{65535,6}},base=27233,aug2=139,aug2MAX=4,cost=50},--Acro Breeches/Rapid Shot
[558]={trade={27233,8947,{65535,1}},base=27233,aug3=513,aug3MAX=9,cost=50},--Acro Breeches/DEX
[559]={trade={27233,8947,{65535,2}},base=27233,aug3=515,aug3MAX=9,cost=50},--Acro Breeches/AGI
[560]={trade={27233,8947,{65535,3}},base=27233,aug3=550,aug3MAX=6,cost=50},--Acro Breeches/STR and DEX
[561]={trade={27233,8947,{65535,4}},base=27233,aug3=552,aug3MAX=6,cost=50},--Acro Breeches/STR and AGI
[562]={trade={27233,8947,{65535,5}},base=27233,aug3=211,aug3MAX=4,cost=50},--Acro Breeches/Snapshot
[563]={trade={27233,8947,{65535,6}},base=27233,aug3=332,aug3MAX=4,cost=50},--Acro Breeches/Skillchain Damage
[564]={trade={27233,8950,{65535,1}},base=27233,aug1=35,aug1MAX=9,cost=50},--Acro Breeches/Magic Accuracy
[565]={trade={27233,8950,{65535,2}},base=27233,aug1=133,aug1MAX=9,cost=50},--Acro Breeches/Magic Attack Bonus
[566]={trade={27233,8950,{65535,3}},base=27233,aug1=108,aug1MAX=9,cost=50},--Acro Breeches/Magic Accuracy and Magic Attack Bonus
[567]={trade={27233,8950,{65535,4}},base=27233,aug1=37,aug1MAX=19,cost=50},--Acro Breeches/Magic Evasion
[568]={trade={27233,8953,{65535,1}},base=27233,aug2=39,aug2MAX=-4,cost=50},--Acro Breeches/Enmity
[569]={trade={27233,8953,{65535,2}},base=27233,aug2=140,aug2MAX=2,cost=50},--Acro Breeches/Fast Cast
[570]={trade={27233,8953,{65535,3}},base=27233,aug2=141,aug2MAX=4,cost=50},--Acro Breeches/Conserve MP
[571]={trade={27233,8953,{65535,4}},base=27233,aug2=323,aug2MAX=-4,cost=50},--Acro Breeches/Cure Spellcasting Time
[572]={trade={27233,8953,{65535,5}},base=27233,aug2=53,aug2MAX=-9,cost=50},--Acro Breeches/Spell Interruption Rate
[573]={trade={27233,8953,{65535,6}},base=27233,aug2=343,aug2MAX=6,cost=50},--Acro Breeches/"Drain" and "Aspir" potency
[574]={trade={27233,8956,{65535,1}},base=27233,aug3=516,aug3MAX=9,cost=50},--Acro Breeches/INT
[575]={trade={27233,8956,{65535,2}},base=27233,aug3=554,aug3MAX=6,cost=50},--Acro Breeches/INT and MND
[576]={trade={27233,8956,{65535,3}},base=27233,aug3=558,aug3MAX=6,cost=50},--Acro Breeches/STR and INT
[577]={trade={27233,8956,{65535,4}},base=27233,aug3=335,aug3MAX=9,cost=50},--Acro Breeches/Magic Critical Hit Damage
[578]={trade={27233,8956,{65535,5}},base=27233,aug3=9,aug3MAX=49,cost=50},--Acro Breeches/MP
[579]={trade={27233,8956,{65535,6}},base=27233,aug3=517,aug3MAX=9,cost=50},--Acro Breeches/MND
[580]={trade={27233,8959,{65535,1}},base=27233,aug1=96,aug1MAX=24,cost=50},--Acro Breeches/Pet: Accuracy and Pet: Ranged Accuracy
[581]={trade={27233,8959,{65535,2}},base=27233,aug1=97,aug1MAX=24,cost=50},--Acro Breeches/Pet: Attack and Pet: Ranged Attack
[582]={trade={27233,8959,{65535,3}},base=27233,aug1=100,aug1MAX=24,cost=50},--Acro Breeches/Pet: Magic Accuracy
[583]={trade={27233,8959,{65535,4}},base=27233,aug1=101,aug1MAX=24,cost=50},--Acro Breeches/Pet: Magic Attack Bonus
[584]={trade={27233,8959,{65535,5}},base=27233,aug1=99,aug1MAX=24,cost=50},--Acro Breeches/Pet: Defense
[585]={trade={27233,8959,{65535,6}},base=27233,aug1=98,aug1MAX=24,cost=50},--Acro Breeches/Pet: Evasion
[586]={trade={27233,8959,{65535,7}},base=27233,aug1=117,aug1MAX=24,cost=50},--Acro Breeches/Pet: Magic Evasion
[587]={trade={27233,8962,{65535,1}},base=27233,aug2=110,aug2MAX=2,cost=50},--Acro Breeches/Pet: Regen
[588]={trade={27233,8962,{65535,2}},base=27233,aug2=115,aug2MAX=7,cost=50},--Acro Breeches/Pet: Store TP
[589]={trade={27233,8962,{65535,3}},base=27233,aug2=121,aug2MAX=7,cost=50},--Acro Breeches/Pet: Breath
[590]={trade={27233,8962,{65535,4}},base=27233,aug2=123,aug2MAX=4,cost=50},--Acro Breeches/Pet: Double Attack
[591]={trade={27233,8962,{65535,5}},base=27233,aug2=Change,aug2MAX=3,cost=50},--Acro Breeches/Pet: Critical Hit Rate
[592]={trade={27233,8962,{65535,6}},base=27233,aug2=324,aug2MAX=-4,cost=50},--Acro Breeches/"Call Beast" Ability Delay
[593]={trade={27233,8965,{65535,1}},base=27233,aug3=517,aug3MAX=9,cost=50},--Acro Breeches/MND
[594]={trade={27233,8965,{65535,2}},base=27233,aug3=518,aug3MAX=9,cost=50},--Acro Breeches/CHR
[595]={trade={27233,8965,{65535,3}},base=27233,aug3=555,aug3MAX=6,cost=50},--Acro Breeches/MND and CHR
[596]={trade={27233,8965,{65535,4}},base=27233,aug3=557,aug3MAX=6,cost=50},--Acro Breeches/STR and CHR
[597]={trade={27233,8965,{65535,5}},base=27233,aug3=111,aug3MAX=4,cost=50},--Acro Breeches/Pet: Haste
[598]={trade={27233,8965,{65535,6}},base=27233,aug3=112,aug3MAX=-3,cost=50},--Acro Breeches/Pet: Damage Taken
[599]={trade={27403,8932,{65535,1}},base=27403,aug1=23,aug1MAX=24,cost=50},--Acro Leggings/Accuracy
[600]={trade={27403,8932,{65535,2}},base=27403,aug1=25,aug1MAX=24,cost=50},--Acro Leggings/Attack
[601]={trade={27403,8932,{65535,3}},base=27403,aug1=68,aug1MAX=19,cost=50},--Acro Leggings/Accuracy and Attack
[602]={trade={27403,8932,{65535,4}},base=27403,aug1=33,aug1MAX=24,cost=50},--Acro Leggings/Defense
[603]={trade={27403,8935,{65535,1}},base=27403,aug2=39,aug2MAX=9,cost=50},--Acro Leggings/Enmity
[604]={trade={27403,8935,{65535,2}},base=27403,aug2=330,aug2MAX=4,cost=50},--Acro Leggings/Waltz Potency
[605]={trade={27403,8935,{65535,3}},base=27403,aug2=115,aug2MAX=5,cost=50},--Acro Leggings/Store TP
[606]={trade={27403,8935,{65535,4}},base=27403,aug2=143,aug2MAX=2,cost=50},--Acro Leggings/Double Attack
[607]={trade={27403,8935,{65535,5}},base=27403,aug2=356,aug2MAX=6,cost=50},--Acro Leggings/Cure Potency Received
[608]={trade={27403,8935,{65535,6}},base=27403,aug2=326,aug2MAX=19,cost=50},--Acro Leggings/Weapon Skill Accuracy
[609]={trade={27403,8938,{65535,1}},base=27403,aug3=512,aug3MAX=9,cost=50},--Acro Leggings/STR
[610]={trade={27403,8938,{65535,2}},base=27403,aug3=514,aug3MAX=9,cost=50},--Acro Leggings/VIT
[611]={trade={27403,8938,{65535,3}},base=27403,aug3=551,aug3MAX=6,cost=50},--Acro Leggings/STR and VIT
[612]={trade={27403,8938,{65535,4}},base=27403,aug3=327,aug3MAX=2,cost=50},--Acro Leggings/Weapon Skill Damage
[613]={trade={27403,8938,{65535,5}},base=27403,aug3=328,aug3MAX=2,cost=50},--Acro Leggings/Critical Hit Damage
[614]={trade={27403,8938,{65535,6}},base=27403,aug3=1,aug3MAX=49,cost=50},--Acro Leggings/HP
[615]={trade={27403,8941,{65535,1}},base=27403,aug1=27,aug1MAX=19,cost=50},--Acro Leggings/Ranged Accuracy
[616]={trade={27403,8941,{65535,2}},base=27403,aug1=29,aug1MAX=19,cost=50},--Acro Leggings/Ranged Attack
[617]={trade={27403,8941,{65535,3}},base=27403,aug1=69,aug1MAX=14,cost=50},--Acro Leggings/Ranged Accuracy and Ranged Attack
[618]={trade={27403,8941,{65535,4}},base=27403,aug1=31,aug1MAX=19,cost=50},--Acro Leggings/Evasion
[619]={trade={27403,8944,{65535,1}},base=27403,aug2=39,aug2MAX=-4,cost=50},--Acro Leggings/Enmity
[620]={trade={27403,8944,{65535,2}},base=27403,aug2=116,aug2MAX=5,cost=50},--Acro Leggings/Subtle Blow
[621]={trade={27403,8944,{65535,3}},base=27403,aug2=49,aug2MAX=2,cost=50},--Acro Leggings/Haste
[622]={trade={27403,8944,{65535,4}},base=27403,aug2=103,aug2MAX=-3,cost=50},--Acro Leggings/Enemy Critical Hit Rate
[623]={trade={27403,8944,{65535,5}},base=27403,aug2=212,aug2MAX=7,cost=50},--Acro Leggings/Recycle
[624]={trade={27403,8944,{65535,6}},base=27403,aug2=139,aug2MAX=4,cost=50},--Acro Leggings/Rapid Shot
[625]={trade={27403,8947,{65535,1}},base=27403,aug3=513,aug3MAX=9,cost=50},--Acro Leggings/DEX
[626]={trade={27403,8947,{65535,2}},base=27403,aug3=515,aug3MAX=9,cost=50},--Acro Leggings/AGI
[627]={trade={27403,8947,{65535,3}},base=27403,aug3=550,aug3MAX=6,cost=50},--Acro Leggings/STR and DEX
[628]={trade={27403,8947,{65535,4}},base=27403,aug3=552,aug3MAX=6,cost=50},--Acro Leggings/STR and AGI
[629]={trade={27403,8947,{65535,5}},base=27403,aug3=211,aug3MAX=4,cost=50},--Acro Leggings/Snapshot
[630]={trade={27403,8947,{65535,6}},base=27403,aug3=332,aug3MAX=4,cost=50},--Acro Leggings/Skillchain Damage
[631]={trade={27403,8950,{65535,1}},base=27403,aug1=35,aug1MAX=9,cost=50},--Acro Leggings/Magic Accuracy
[632]={trade={27403,8950,{65535,2}},base=27403,aug1=133,aug1MAX=9,cost=50},--Acro Leggings/Magic Attack Bonus
[633]={trade={27403,8950,{65535,3}},base=27403,aug1=108,aug1MAX=9,cost=50},--Acro Leggings/Magic Accuracy and Magic Attack Bonus
[634]={trade={27403,8950,{65535,4}},base=27403,aug1=37,aug1MAX=19,cost=50},--Acro Leggings/Magic Evasion
[635]={trade={27403,8953,{65535,1}},base=27403,aug2=39,aug2MAX=-4,cost=50},--Acro Leggings/Enmity
[636]={trade={27403,8953,{65535,2}},base=27403,aug2=140,aug2MAX=2,cost=50},--Acro Leggings/Fast Cast
[637]={trade={27403,8953,{65535,3}},base=27403,aug2=141,aug2MAX=4,cost=50},--Acro Leggings/Conserve MP
[638]={trade={27403,8953,{65535,4}},base=27403,aug2=323,aug2MAX=-4,cost=50},--Acro Leggings/Cure Spellcasting Time
[639]={trade={27403,8953,{65535,5}},base=27403,aug2=53,aug2MAX=-9,cost=50},--Acro Leggings/Spell Interruption Rate
[640]={trade={27403,8953,{65535,6}},base=27403,aug2=343,aug2MAX=6,cost=50},--Acro Leggings/"Drain" and "Aspir" potency
[641]={trade={27403,8956,{65535,1}},base=27403,aug3=516,aug3MAX=9,cost=50},--Acro Leggings/INT
[642]={trade={27403,8956,{65535,2}},base=27403,aug3=554,aug3MAX=6,cost=50},--Acro Leggings/INT and MND
[643]={trade={27403,8956,{65535,3}},base=27403,aug3=558,aug3MAX=6,cost=50},--Acro Leggings/STR and INT
[644]={trade={27403,8956,{65535,4}},base=27403,aug3=335,aug3MAX=9,cost=50},--Acro Leggings/Magic Critical Hit Damage
[645]={trade={27403,8956,{65535,5}},base=27403,aug3=9,aug3MAX=49,cost=50},--Acro Leggings/MP
[646]={trade={27403,8956,{65535,6}},base=27403,aug3=517,aug3MAX=9,cost=50},--Acro Leggings/MND
[647]={trade={27403,8959,{65535,1}},base=27403,aug1=96,aug1MAX=24,cost=50},--Acro Leggings/Pet: Accuracy and Pet: Ranged Accuracy
[648]={trade={27403,8959,{65535,2}},base=27403,aug1=97,aug1MAX=24,cost=50},--Acro Leggings/Pet: Attack and Pet: Ranged Attack
[649]={trade={27403,8959,{65535,3}},base=27403,aug1=100,aug1MAX=24,cost=50},--Acro Leggings/Pet: Magic Accuracy
[650]={trade={27403,8959,{65535,4}},base=27403,aug1=101,aug1MAX=24,cost=50},--Acro Leggings/Pet: Magic Attack Bonus
[651]={trade={27403,8959,{65535,5}},base=27403,aug1=99,aug1MAX=24,cost=50},--Acro Leggings/Pet: Defense
[652]={trade={27403,8959,{65535,6}},base=27403,aug1=98,aug1MAX=24,cost=50},--Acro Leggings/Pet: Evasion
[653]={trade={27403,8959,{65535,7}},base=27403,aug1=117,aug1MAX=24,cost=50},--Acro Leggings/Pet: Magic Evasion
[654]={trade={27403,8962,{65535,1}},base=27403,aug2=110,aug2MAX=2,cost=50},--Acro Leggings/Pet: Regen
[655]={trade={27403,8962,{65535,2}},base=27403,aug2=115,aug2MAX=7,cost=50},--Acro Leggings/Pet: Store TP
[656]={trade={27403,8962,{65535,3}},base=27403,aug2=121,aug2MAX=7,cost=50},--Acro Leggings/Pet: Breath
[657]={trade={27403,8962,{65535,4}},base=27403,aug2=123,aug2MAX=4,cost=50},--Acro Leggings/Pet: Double Attack
[658]={trade={27403,8962,{65535,5}},base=27403,aug2=Change,aug2MAX=3,cost=50},--Acro Leggings/Pet: Critical Hit Rate
[659]={trade={27403,8962,{65535,6}},base=27403,aug2=324,aug2MAX=-4,cost=50},--Acro Leggings/"Call Beast" Ability Delay
[660]={trade={27403,8965,{65535,1}},base=27403,aug3=517,aug3MAX=9,cost=50},--Acro Leggings/MND
[661]={trade={27403,8965,{65535,2}},base=27403,aug3=518,aug3MAX=9,cost=50},--Acro Leggings/CHR
[662]={trade={27403,8965,{65535,3}},base=27403,aug3=555,aug3MAX=6,cost=50},--Acro Leggings/MND and CHR
[663]={trade={27403,8965,{65535,4}},base=27403,aug3=557,aug3MAX=6,cost=50},--Acro Leggings/STR and CHR
[664]={trade={27403,8965,{65535,5}},base=27403,aug3=111,aug3MAX=4,cost=50},--Acro Leggings/Pet: Haste
[665]={trade={27403,8965,{65535,6}},base=27403,aug3=112,aug3MAX=-3,cost=50},--Acro Leggings/Pet: Damage Taken
[666]={trade={26735,8932,{65535,1}},base=26735,aug1=23,aug1MAX=24,cost=50},--Taeon Chapeau/Accuracy
[667]={trade={26735,8932,{65535,2}},base=26735,aug1=25,aug1MAX=24,cost=50},--Taeon Chapeau/Attack
[668]={trade={26735,8932,{65535,3}},base=26735,aug1=68,aug1MAX=19,cost=50},--Taeon Chapeau/Accuracy and Attack
[669]={trade={26735,8932,{65535,4}},base=26735,aug1=33,aug1MAX=19,cost=50},--Taeon Chapeau/Defense
[670]={trade={26735,8935,{65535,1}},base=26735,aug2=330,aug2MAX=4,cost=50},--Taeon Chapeau/Waltz Potency
[671]={trade={26735,8935,{65535,2}},base=26735,aug2=326,aug2MAX=19,cost=50},--Taeon Chapeau/Weapon Skill Accuracy
[672]={trade={26735,8935,{65535,3}},base=26735,aug2=144,aug2MAX=1,cost=50},--Taeon Chapeau/Triple Attack
[673]={trade={26735,8935,{65535,4}},base=26735,aug2=356,aug2MAX=6,cost=50},--Taeon Chapeau/Cure Potency Received
[674]={trade={26735,8935,{65535,5}},base=26735,aug2=145,aug2MAX=2,cost=50},--Taeon Chapeau/Counter
[675]={trade={26735,8935,{65535,6}},base=26735,aug2=146,aug2MAX=4,cost=50},--Taeon Chapeau/Dual Wield
[676]={trade={26735,8938,{65535,1}},base=26735,aug3=512,aug3MAX=9,cost=50},--Taeon Chapeau/STR
[677]={trade={26735,8938,{65535,2}},base=26735,aug3=514,aug3MAX=9,cost=50},--Taeon Chapeau/VIT
[678]={trade={26735,8938,{65535,3}},base=26735,aug3=551,aug3MAX=6,cost=50},--Taeon Chapeau/STR and VIT
[679]={trade={26735,8938,{65535,4}},base=26735,aug3=327,aug3MAX=2,cost=50},--Taeon Chapeau/Weapon Skill Damage
[680]={trade={26735,8938,{65535,5}},base=26735,aug3=328,aug3MAX=2,cost=50},--Taeon Chapeau/Critical Hit Damage
[681]={trade={26735,8938,{65535,6}},base=26735,aug3=1,aug3MAX=49,cost=50},--Taeon Chapeau/HP
[682]={trade={26735,8941,{65535,1}},base=26735,aug1=27,aug1MAX=24,cost=50},--Taeon Chapeau/Ranged Accuracy
[683]={trade={26735,8941,{65535,2}},base=26735,aug1=29,aug1MAX=24,cost=50},--Taeon Chapeau/Ranged Attack
[684]={trade={26735,8941,{65535,3}},base=26735,aug1=69,aug1MAX=19,cost=50},--Taeon Chapeau/Ranged Accuracy and Ranged Attack
[685]={trade={26735,8941,{65535,4}},base=26735,aug1=31,aug1MAX=24,cost=50},--Taeon Chapeau/Evasion
[686]={trade={26735,8944,{65535,1}},base=26735,aug2=116,aug2MAX=5,cost=50},--Taeon Chapeau/Subtle Blow
[687]={trade={26735,8944,{65535,2}},base=26735,aug2=49,aug2MAX=2,cost=50},--Taeon Chapeau/Haste
[688]={trade={26735,8944,{65535,3}},base=26735,aug2=103,aug2MAX=-3,cost=50},--Taeon Chapeau/Enemy Critical Hit Rate
[689]={trade={26735,8944,{65535,4}},base=26735,aug2=41,aug2MAX=2,cost=50},--Taeon Chapeau/Critical Hit Rate
[690]={trade={26735,8944,{65535,5}},base=26735,aug2=212,aug2MAX=7,cost=50},--Taeon Chapeau/Recycle
[691]={trade={26735,8944,{65535,6}},base=26735,aug2=211,aug2MAX=4,cost=50},--Taeon Chapeau/Snapshot
[692]={trade={26735,8947,{65535,1}},base=26735,aug3=513,aug3MAX=9,cost=50},--Taeon Chapeau/DEX
[693]={trade={26735,8947,{65535,2}},base=26735,aug3=515,aug3MAX=9,cost=50},--Taeon Chapeau/AGI
[694]={trade={26735,8947,{65535,3}},base=26735,aug3=550,aug3MAX=6,cost=50},--Taeon Chapeau/STR and DEX
[695]={trade={26735,8947,{65535,4}},base=26735,aug3=552,aug3MAX=6,cost=50},--Taeon Chapeau/STR and AGI
[696]={trade={26735,8947,{65535,5}},base=26735,aug3=211,aug3MAX=4,cost=50},--Taeon Chapeau/Snapshot
[697]={trade={26735,8947,{65535,6}},base=26735,aug3=332,aug3MAX=4,cost=50},--Taeon Chapeau/Skillchain Damage
[698]={trade={26735,8950,{65535,1}},base=26735,aug1=35,aug1MAX=19,cost=50},--Taeon Chapeau/Magic Accuracy
[699]={trade={26735,8950,{65535,2}},base=26735,aug1=133,aug1MAX=19,cost=50},--Taeon Chapeau/Magic Attack Bonus
[700]={trade={26735,8950,{65535,3}},base=26735,aug1=108,aug1MAX=14,cost=50},--Taeon Chapeau/Magic Accuracy and Magic Attack Bonus
[701]={trade={26735,8950,{65535,4}},base=26735,aug1=37,aug1MAX=19,cost=50},--Taeon Chapeau/Magic Evasion
[702]={trade={26735,8953,{65535,1}},base=26735,aug2=140,aug2MAX=4,cost=50},--Taeon Chapeau/Fast Cast
[703]={trade={26735,8953,{65535,2}},base=26735,aug2=141,aug2MAX=4,cost=50},--Taeon Chapeau/Conserve MP
[704]={trade={26735,8953,{65535,3}},base=26735,aug2=323,aug2MAX=-4,cost=50},--Taeon Chapeau/Cure Spellcasting Time
[705]={trade={26735,8953,{65535,4}},base=26735,aug2=53,aug2MAX=-9,cost=50},--Taeon Chapeau/Spell Interruption Rate
[706]={trade={26735,8953,{65535,5}},base=26735,aug2=329,aug2MAX=4,cost=50},--Taeon Chapeau/Cure Potency
[707]={trade={26735,8953,{65535,6}},base=26735,aug2=39,aug2MAX=-4,cost=50},--Taeon Chapeau/Enmity
[708]={trade={26735,8956,{65535,1}},base=26735,aug3=516,aug3MAX=9,cost=50},--Taeon Chapeau/INT
[709]={trade={26735,8956,{65535,2}},base=26735,aug3=554,aug3MAX=6,cost=50},--Taeon Chapeau/INT and MND
[710]={trade={26735,8956,{65535,3}},base=26735,aug3=335,aug3MAX=9,cost=50},--Taeon Chapeau/Magic Critical Hit Damage
[711]={trade={26735,8956,{65535,4}},base=26735,aug3=368,aug3MAX=2,cost=50},--Taeon Chapeau/Phalanx
[712]={trade={26735,8956,{65535,5}},base=26735,aug3=371,aug3MAX=2,cost=50},--Taeon Chapeau/Regen Potency
[713]={trade={26735,8956,{65535,6}},base=26735,aug3=517,aug3MAX=9,cost=50},--Taeon Chapeau/MND
[714]={trade={26735,8959,{65535,1}},base=26735,aug1=96,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Accuracy and Pet: Ranged Accuracy
[715]={trade={26735,8959,{65535,2}},base=26735,aug1=97,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Attack and Pet: Ranged Attack
[716]={trade={26735,8959,{65535,3}},base=26735,aug1=100,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Magic Accuracy
[717]={trade={26735,8959,{65535,4}},base=26735,aug1=101,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Magic Attack Bonus
[718]={trade={26735,8959,{65535,5}},base=26735,aug1=99,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Defense
[719]={trade={26735,8959,{65535,6}},base=26735,aug1=98,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Evasion
[720]={trade={26735,8959,{65535,7}},base=26735,aug1=117,aug1MAX=24,cost=50},--Taeon Chapeau/Pet: Magic Evasion
[721]={trade={26735,8962,{65535,1}},base=26735,aug2=110,aug2MAX=2,cost=50},--Taeon Chapeau/Pet: Regen
[722]={trade={26735,8962,{65535,2}},base=26735,aug2=116,aug2MAX=7,cost=50},--Taeon Chapeau/Pet: Subtle Blow
[723]={trade={26735,8962,{65535,3}},base=26735,aug2=121,aug2MAX=7,cost=50},--Taeon Chapeau/Pet: Breath
[724]={trade={26735,8962,{65535,4}},base=26735,aug2=123,aug2MAX=4,cost=50},--Taeon Chapeau/Pet: Double Attack
[725]={trade={26735,8962,{65535,5}},base=26735,aug2=Change,aug2MAX=3,cost=50},--Taeon Chapeau/Pet: Critical Hit Rate
[726]={trade={26735,8962,{65535,6}},base=26735,aug2=341,aug2MAX=4,cost=50},--Taeon Chapeau/"Repair" Potency
[727]={trade={26735,8965,{65535,1}},base=26735,aug3=517,aug3MAX=9,cost=50},--Taeon Chapeau/MND
[728]={trade={26735,8965,{65535,2}},base=26735,aug3=518,aug3MAX=9,cost=50},--Taeon Chapeau/CHR
[729]={trade={26735,8965,{65535,3}},base=26735,aug3=555,aug3MAX=6,cost=50},--Taeon Chapeau/MND and CHR
[730]={trade={26735,8965,{65535,4}},base=26735,aug3=557,aug3MAX=6,cost=50},--Taeon Chapeau/STR and CHR
[731]={trade={26735,8965,{65535,5}},base=26735,aug3=111,aug3MAX=4,cost=50},--Taeon Chapeau/Pet: Haste
[732]={trade={26735,8965,{65535,6}},base=26735,aug3=112,aug3MAX=-3,cost=50},--Taeon Chapeau/Pet: Damage Taken
[733]={trade={26893,8932,{65535,1}},base=26893,aug1=23,aug1MAX=24,cost=50},--Taeon Tabard/Accuracy
[734]={trade={26893,8932,{65535,2}},base=26893,aug1=25,aug1MAX=24,cost=50},--Taeon Tabard/Attack
[735]={trade={26893,8932,{65535,3}},base=26893,aug1=68,aug1MAX=19,cost=50},--Taeon Tabard/Accuracy and Attack
[736]={trade={26893,8932,{65535,4}},base=26893,aug1=33,aug1MAX=19,cost=50},--Taeon Tabard/Defense
[737]={trade={26893,8935,{65535,1}},base=26893,aug2=330,aug2MAX=4,cost=50},--Taeon Tabard/Waltz Potency
[738]={trade={26893,8935,{65535,2}},base=26893,aug2=326,aug2MAX=19,cost=50},--Taeon Tabard/Weapon Skill Accuracy
[739]={trade={26893,8935,{65535,3}},base=26893,aug2=144,aug2MAX=1,cost=50},--Taeon Tabard/Triple Attack
[740]={trade={26893,8935,{65535,4}},base=26893,aug2=356,aug2MAX=6,cost=50},--Taeon Tabard/Cure Potency Received
[741]={trade={26893,8935,{65535,5}},base=26893,aug2=145,aug2MAX=2,cost=50},--Taeon Tabard/Counter
[742]={trade={26893,8935,{65535,6}},base=26893,aug2=146,aug2MAX=4,cost=50},--Taeon Tabard/Dual Wield
[743]={trade={26893,8938,{65535,1}},base=26893,aug3=512,aug3MAX=9,cost=50},--Taeon Tabard/STR
[744]={trade={26893,8938,{65535,2}},base=26893,aug3=514,aug3MAX=9,cost=50},--Taeon Tabard/VIT
[745]={trade={26893,8938,{65535,3}},base=26893,aug3=551,aug3MAX=6,cost=50},--Taeon Tabard/STR and VIT
[746]={trade={26893,8938,{65535,4}},base=26893,aug3=327,aug3MAX=2,cost=50},--Taeon Tabard/Weapon Skill Damage
[747]={trade={26893,8938,{65535,5}},base=26893,aug3=328,aug3MAX=2,cost=50},--Taeon Tabard/Critical Hit Damage
[748]={trade={26893,8938,{65535,6}},base=26893,aug3=1,aug3MAX=49,cost=50},--Taeon Tabard/HP
[749]={trade={26893,8941,{65535,1}},base=26893,aug1=27,aug1MAX=24,cost=50},--Taeon Tabard/Ranged Accuracy
[750]={trade={26893,8941,{65535,2}},base=26893,aug1=29,aug1MAX=24,cost=50},--Taeon Tabard/Ranged Attack
[751]={trade={26893,8941,{65535,3}},base=26893,aug1=69,aug1MAX=19,cost=50},--Taeon Tabard/Ranged Accuracy and Ranged Attack
[752]={trade={26893,8941,{65535,4}},base=26893,aug1=31,aug1MAX=24,cost=50},--Taeon Tabard/Evasion
[753]={trade={26893,8944,{65535,1}},base=26893,aug2=116,aug2MAX=5,cost=50},--Taeon Tabard/Subtle Blow
[754]={trade={26893,8944,{65535,2}},base=26893,aug2=49,aug2MAX=2,cost=50},--Taeon Tabard/Haste
[755]={trade={26893,8944,{65535,3}},base=26893,aug2=103,aug2MAX=-3,cost=50},--Taeon Tabard/Enemy Critical Hit Rate
[756]={trade={26893,8944,{65535,4}},base=26893,aug2=41,aug2MAX=2,cost=50},--Taeon Tabard/Critical Hit Rate
[757]={trade={26893,8944,{65535,5}},base=26893,aug2=212,aug2MAX=7,cost=50},--Taeon Tabard/Recycle
[758]={trade={26893,8944,{65535,6}},base=26893,aug2=211,aug2MAX=4,cost=50},--Taeon Tabard/Snapshot
[759]={trade={26893,8947,{65535,1}},base=26893,aug3=513,aug3MAX=9,cost=50},--Taeon Tabard/DEX
[760]={trade={26893,8947,{65535,2}},base=26893,aug3=515,aug3MAX=9,cost=50},--Taeon Tabard/AGI
[761]={trade={26893,8947,{65535,3}},base=26893,aug3=550,aug3MAX=6,cost=50},--Taeon Tabard/STR and DEX
[762]={trade={26893,8947,{65535,4}},base=26893,aug3=552,aug3MAX=6,cost=50},--Taeon Tabard/STR and AGI
[763]={trade={26893,8947,{65535,5}},base=26893,aug3=211,aug3MAX=4,cost=50},--Taeon Tabard/Snapshot
[764]={trade={26893,8947,{65535,6}},base=26893,aug3=332,aug3MAX=4,cost=50},--Taeon Tabard/Skillchain Damage
[765]={trade={26893,8950,{65535,1}},base=26893,aug1=35,aug1MAX=19,cost=50},--Taeon Tabard/Magic Accuracy
[766]={trade={26893,8950,{65535,2}},base=26893,aug1=133,aug1MAX=19,cost=50},--Taeon Tabard/Magic Attack Bonus
[767]={trade={26893,8950,{65535,3}},base=26893,aug1=108,aug1MAX=14,cost=50},--Taeon Tabard/Magic Accuracy and Magic Attack Bonus
[768]={trade={26893,8950,{65535,4}},base=26893,aug1=37,aug1MAX=19,cost=50},--Taeon Tabard/Magic Evasion
[769]={trade={26893,8953,{65535,1}},base=26893,aug2=140,aug2MAX=4,cost=50},--Taeon Tabard/Fast Cast
[770]={trade={26893,8953,{65535,2}},base=26893,aug2=141,aug2MAX=4,cost=50},--Taeon Tabard/Conserve MP
[771]={trade={26893,8953,{65535,3}},base=26893,aug2=323,aug2MAX=-4,cost=50},--Taeon Tabard/Cure Spellcasting Time
[772]={trade={26893,8953,{65535,4}},base=26893,aug2=53,aug2MAX=-9,cost=50},--Taeon Tabard/Spell Interruption Rate
[773]={trade={26893,8953,{65535,5}},base=26893,aug2=329,aug2MAX=4,cost=50},--Taeon Tabard/Cure Potency
[774]={trade={26893,8953,{65535,6}},base=26893,aug2=39,aug2MAX=-4,cost=50},--Taeon Tabard/Enmity
[775]={trade={26893,8956,{65535,1}},base=26893,aug3=516,aug3MAX=9,cost=50},--Taeon Tabard/INT
[776]={trade={26893,8956,{65535,2}},base=26893,aug3=554,aug3MAX=6,cost=50},--Taeon Tabard/INT and MND
[777]={trade={26893,8956,{65535,3}},base=26893,aug3=335,aug3MAX=9,cost=50},--Taeon Tabard/Magic Critical Hit Damage
[778]={trade={26893,8956,{65535,4}},base=26893,aug3=368,aug3MAX=2,cost=50},--Taeon Tabard/Phalanx
[779]={trade={26893,8956,{65535,5}},base=26893,aug3=371,aug3MAX=2,cost=50},--Taeon Tabard/Regen Potency
[780]={trade={26893,8956,{65535,6}},base=26893,aug3=517,aug3MAX=9,cost=50},--Taeon Tabard/MND
[781]={trade={26893,8959,{65535,1}},base=26893,aug1=96,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Accuracy and Pet: Ranged Accuracy
[782]={trade={26893,8959,{65535,2}},base=26893,aug1=97,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Attack and Pet: Ranged Attack
[783]={trade={26893,8959,{65535,3}},base=26893,aug1=100,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Magic Accuracy
[784]={trade={26893,8959,{65535,4}},base=26893,aug1=101,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Magic Attack Bonus
[785]={trade={26893,8959,{65535,5}},base=26893,aug1=99,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Defense
[786]={trade={26893,8959,{65535,6}},base=26893,aug1=98,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Evasion
[787]={trade={26893,8959,{65535,7}},base=26893,aug1=117,aug1MAX=24,cost=50},--Taeon Tabard/Pet: Magic Evasion
[788]={trade={26893,8962,{65535,1}},base=26893,aug2=110,aug2MAX=2,cost=50},--Taeon Tabard/Pet: Regen
[789]={trade={26893,8962,{65535,2}},base=26893,aug2=116,aug2MAX=7,cost=50},--Taeon Tabard/Pet: Subtle Blow
[790]={trade={26893,8962,{65535,3}},base=26893,aug2=121,aug2MAX=7,cost=50},--Taeon Tabard/Pet: Breath
[791]={trade={26893,8962,{65535,4}},base=26893,aug2=123,aug2MAX=4,cost=50},--Taeon Tabard/Pet: Double Attack
[792]={trade={26893,8962,{65535,5}},base=26893,aug2=Change,aug2MAX=3,cost=50},--Taeon Tabard/Pet: Critical Hit Rate
[793]={trade={26893,8962,{65535,6}},base=26893,aug2=341,aug2MAX=4,cost=50},--Taeon Tabard/"Repair" Potency
[794]={trade={26893,8965,{65535,1}},base=26893,aug3=517,aug3MAX=9,cost=50},--Taeon Tabard/MND
[795]={trade={26893,8965,{65535,2}},base=26893,aug3=518,aug3MAX=9,cost=50},--Taeon Tabard/CHR
[796]={trade={26893,8965,{65535,3}},base=26893,aug3=555,aug3MAX=6,cost=50},--Taeon Tabard/MND and CHR
[797]={trade={26893,8965,{65535,4}},base=26893,aug3=557,aug3MAX=6,cost=50},--Taeon Tabard/STR and CHR
[798]={trade={26893,8965,{65535,5}},base=26893,aug3=111,aug3MAX=4,cost=50},--Taeon Tabard/Pet: Haste
[799]={trade={26893,8965,{65535,6}},base=26893,aug3=112,aug3MAX=-3,cost=50},--Taeon Tabard/Pet: Damage Taken
[800]={trade={27047,8932,{65535,1}},base=27047,aug1=23,aug1MAX=24,cost=50},--Taeon Gloves/Accuracy
[801]={trade={27047,8932,{65535,2}},base=27047,aug1=25,aug1MAX=24,cost=50},--Taeon Gloves/Attack
[802]={trade={27047,8932,{65535,3}},base=27047,aug1=68,aug1MAX=19,cost=50},--Taeon Gloves/Accuracy and Attack
[803]={trade={27047,8932,{65535,4}},base=27047,aug1=33,aug1MAX=19,cost=50},--Taeon Gloves/Defense
[804]={trade={27047,8935,{65535,1}},base=27047,aug2=330,aug2MAX=4,cost=50},--Taeon Gloves/Waltz Potency
[805]={trade={27047,8935,{65535,2}},base=27047,aug2=326,aug2MAX=19,cost=50},--Taeon Gloves/Weapon Skill Accuracy
[806]={trade={27047,8935,{65535,3}},base=27047,aug2=144,aug2MAX=1,cost=50},--Taeon Gloves/Triple Attack
[807]={trade={27047,8935,{65535,4}},base=27047,aug2=356,aug2MAX=6,cost=50},--Taeon Gloves/Cure Potency Received
[808]={trade={27047,8935,{65535,5}},base=27047,aug2=145,aug2MAX=2,cost=50},--Taeon Gloves/Counter
[809]={trade={27047,8935,{65535,6}},base=27047,aug2=146,aug2MAX=4,cost=50},--Taeon Gloves/Dual Wield
[810]={trade={27047,8938,{65535,1}},base=27047,aug3=512,aug3MAX=9,cost=50},--Taeon Gloves/STR
[811]={trade={27047,8938,{65535,2}},base=27047,aug3=514,aug3MAX=9,cost=50},--Taeon Gloves/VIT
[812]={trade={27047,8938,{65535,3}},base=27047,aug3=551,aug3MAX=6,cost=50},--Taeon Gloves/STR and VIT
[813]={trade={27047,8938,{65535,4}},base=27047,aug3=327,aug3MAX=2,cost=50},--Taeon Gloves/Weapon Skill Damage
[814]={trade={27047,8938,{65535,5}},base=27047,aug3=328,aug3MAX=2,cost=50},--Taeon Gloves/Critical Hit Damage
[815]={trade={27047,8938,{65535,6}},base=27047,aug3=1,aug3MAX=49,cost=50},--Taeon Gloves/HP
[816]={trade={27047,8941,{65535,1}},base=27047,aug1=27,aug1MAX=24,cost=50},--Taeon Gloves/Ranged Accuracy
[817]={trade={27047,8941,{65535,2}},base=27047,aug1=29,aug1MAX=24,cost=50},--Taeon Gloves/Ranged Attack
[818]={trade={27047,8941,{65535,3}},base=27047,aug1=69,aug1MAX=19,cost=50},--Taeon Gloves/Ranged Accuracy and Ranged Attack
[819]={trade={27047,8941,{65535,4}},base=27047,aug1=31,aug1MAX=24,cost=50},--Taeon Gloves/Evasion
[820]={trade={27047,8944,{65535,1}},base=27047,aug2=116,aug2MAX=5,cost=50},--Taeon Gloves/Subtle Blow
[821]={trade={27047,8944,{65535,2}},base=27047,aug2=49,aug2MAX=2,cost=50},--Taeon Gloves/Haste
[822]={trade={27047,8944,{65535,3}},base=27047,aug2=103,aug2MAX=-3,cost=50},--Taeon Gloves/Enemy Critical Hit Rate
[823]={trade={27047,8944,{65535,4}},base=27047,aug2=41,aug2MAX=2,cost=50},--Taeon Gloves/Critical Hit Rate
[824]={trade={27047,8944,{65535,5}},base=27047,aug2=212,aug2MAX=7,cost=50},--Taeon Gloves/Recycle
[825]={trade={27047,8944,{65535,6}},base=27047,aug2=211,aug2MAX=4,cost=50},--Taeon Gloves/Snapshot
[826]={trade={27047,8947,{65535,1}},base=27047,aug3=513,aug3MAX=9,cost=50},--Taeon Gloves/DEX
[827]={trade={27047,8947,{65535,2}},base=27047,aug3=515,aug3MAX=9,cost=50},--Taeon Gloves/AGI
[828]={trade={27047,8947,{65535,3}},base=27047,aug3=550,aug3MAX=6,cost=50},--Taeon Gloves/STR and DEX
[829]={trade={27047,8947,{65535,4}},base=27047,aug3=552,aug3MAX=6,cost=50},--Taeon Gloves/STR and AGI
[830]={trade={27047,8947,{65535,5}},base=27047,aug3=211,aug3MAX=4,cost=50},--Taeon Gloves/Snapshot
[831]={trade={27047,8947,{65535,6}},base=27047,aug3=332,aug3MAX=4,cost=50},--Taeon Gloves/Skillchain Damage
[832]={trade={27047,8950,{65535,1}},base=27047,aug1=35,aug1MAX=19,cost=50},--Taeon Gloves/Magic Accuracy
[833]={trade={27047,8950,{65535,2}},base=27047,aug1=133,aug1MAX=19,cost=50},--Taeon Gloves/Magic Attack Bonus
[834]={trade={27047,8950,{65535,3}},base=27047,aug1=108,aug1MAX=14,cost=50},--Taeon Gloves/Magic Accuracy and Magic Attack Bonus
[835]={trade={27047,8950,{65535,4}},base=27047,aug1=37,aug1MAX=19,cost=50},--Taeon Gloves/Magic Evasion
[836]={trade={27047,8953,{65535,1}},base=27047,aug2=140,aug2MAX=4,cost=50},--Taeon Gloves/Fast Cast
[837]={trade={27047,8953,{65535,2}},base=27047,aug2=141,aug2MAX=4,cost=50},--Taeon Gloves/Conserve MP
[838]={trade={27047,8953,{65535,3}},base=27047,aug2=323,aug2MAX=-4,cost=50},--Taeon Gloves/Cure Spellcasting Time
[839]={trade={27047,8953,{65535,4}},base=27047,aug2=53,aug2MAX=-9,cost=50},--Taeon Gloves/Spell Interruption Rate
[840]={trade={27047,8953,{65535,5}},base=27047,aug2=329,aug2MAX=4,cost=50},--Taeon Gloves/Cure Potency
[841]={trade={27047,8953,{65535,6}},base=27047,aug2=39,aug2MAX=-4,cost=50},--Taeon Gloves/Enmity
[842]={trade={27047,8956,{65535,1}},base=27047,aug3=516,aug3MAX=9,cost=50},--Taeon Gloves/INT
[843]={trade={27047,8956,{65535,2}},base=27047,aug3=554,aug3MAX=6,cost=50},--Taeon Gloves/INT and MND
[844]={trade={27047,8956,{65535,3}},base=27047,aug3=335,aug3MAX=9,cost=50},--Taeon Gloves/Magic Critical Hit Damage
[845]={trade={27047,8956,{65535,4}},base=27047,aug3=368,aug3MAX=2,cost=50},--Taeon Gloves/Phalanx
[846]={trade={27047,8956,{65535,5}},base=27047,aug3=371,aug3MAX=2,cost=50},--Taeon Gloves/Regen Potency
[847]={trade={27047,8956,{65535,6}},base=27047,aug3=517,aug3MAX=9,cost=50},--Taeon Gloves/MND
[848]={trade={27047,8959,{65535,1}},base=27047,aug1=96,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Accuracy and Pet: Ranged Accuracy
[849]={trade={27047,8959,{65535,2}},base=27047,aug1=97,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Attack and Pet: Ranged Attack
[850]={trade={27047,8959,{65535,3}},base=27047,aug1=100,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Magic Accuracy
[851]={trade={27047,8959,{65535,4}},base=27047,aug1=101,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Magic Attack Bonus
[852]={trade={27047,8959,{65535,5}},base=27047,aug1=99,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Defense
[853]={trade={27047,8959,{65535,6}},base=27047,aug1=98,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Evasion
[854]={trade={27047,8959,{65535,7}},base=27047,aug1=117,aug1MAX=24,cost=50},--Taeon Gloves/Pet: Magic Evasion
[855]={trade={27047,8962,{65535,1}},base=27047,aug2=110,aug2MAX=2,cost=50},--Taeon Gloves/Pet: Regen
[856]={trade={27047,8962,{65535,2}},base=27047,aug2=116,aug2MAX=7,cost=50},--Taeon Gloves/Pet: Subtle Blow
[857]={trade={27047,8962,{65535,3}},base=27047,aug2=121,aug2MAX=7,cost=50},--Taeon Gloves/Pet: Breath
[858]={trade={27047,8962,{65535,4}},base=27047,aug2=123,aug2MAX=4,cost=50},--Taeon Gloves/Pet: Double Attack
[859]={trade={27047,8962,{65535,5}},base=27047,aug2=Change,aug2MAX=3,cost=50},--Taeon Gloves/Pet: Critical Hit Rate
[860]={trade={27047,8962,{65535,6}},base=27047,aug2=341,aug2MAX=4,cost=50},--Taeon Gloves/"Repair" Potency
[861]={trade={27047,8965,{65535,1}},base=27047,aug3=517,aug3MAX=9,cost=50},--Taeon Gloves/MND
[862]={trade={27047,8965,{65535,2}},base=27047,aug3=518,aug3MAX=9,cost=50},--Taeon Gloves/CHR
[863]={trade={27047,8965,{65535,3}},base=27047,aug3=555,aug3MAX=6,cost=50},--Taeon Gloves/MND and CHR
[864]={trade={27047,8965,{65535,4}},base=27047,aug3=557,aug3MAX=6,cost=50},--Taeon Gloves/STR and CHR
[865]={trade={27047,8965,{65535,5}},base=27047,aug3=111,aug3MAX=4,cost=50},--Taeon Gloves/Pet: Haste
[866]={trade={27047,8965,{65535,6}},base=27047,aug3=112,aug3MAX=-3,cost=50},--Taeon Gloves/Pet: Damage Taken
[867]={trade={27234,8932,{65535,1}},base=27234,aug1=23,aug1MAX=24,cost=50},--Taeon Tights/Accuracy
[868]={trade={27234,8932,{65535,2}},base=27234,aug1=25,aug1MAX=24,cost=50},--Taeon Tights/Attack
[869]={trade={27234,8932,{65535,3}},base=27234,aug1=68,aug1MAX=19,cost=50},--Taeon Tights/Accuracy and Attack
[870]={trade={27234,8932,{65535,4}},base=27234,aug1=33,aug1MAX=19,cost=50},--Taeon Tights/Defense
[871]={trade={27234,8935,{65535,1}},base=27234,aug2=330,aug2MAX=4,cost=50},--Taeon Tights/Waltz Potency
[872]={trade={27234,8935,{65535,2}},base=27234,aug2=326,aug2MAX=19,cost=50},--Taeon Tights/Weapon Skill Accuracy
[873]={trade={27234,8935,{65535,3}},base=27234,aug2=144,aug2MAX=1,cost=50},--Taeon Tights/Triple Attack
[874]={trade={27234,8935,{65535,4}},base=27234,aug2=356,aug2MAX=6,cost=50},--Taeon Tights/Cure Potency Received
[875]={trade={27234,8935,{65535,5}},base=27234,aug2=145,aug2MAX=2,cost=50},--Taeon Tights/Counter
[876]={trade={27234,8935,{65535,6}},base=27234,aug2=146,aug2MAX=4,cost=50},--Taeon Tights/Dual Wield
[877]={trade={27234,8938,{65535,1}},base=27234,aug3=512,aug3MAX=9,cost=50},--Taeon Tights/STR
[878]={trade={27234,8938,{65535,2}},base=27234,aug3=514,aug3MAX=9,cost=50},--Taeon Tights/VIT
[879]={trade={27234,8938,{65535,3}},base=27234,aug3=551,aug3MAX=6,cost=50},--Taeon Tights/STR and VIT
[880]={trade={27234,8938,{65535,4}},base=27234,aug3=327,aug3MAX=2,cost=50},--Taeon Tights/Weapon Skill Damage
[881]={trade={27234,8938,{65535,5}},base=27234,aug3=328,aug3MAX=2,cost=50},--Taeon Tights/Critical Hit Damage
[882]={trade={27234,8938,{65535,6}},base=27234,aug3=1,aug3MAX=49,cost=50},--Taeon Tights/HP
[883]={trade={27234,8941,{65535,1}},base=27234,aug1=27,aug1MAX=24,cost=50},--Taeon Tights/Ranged Accuracy
[884]={trade={27234,8941,{65535,2}},base=27234,aug1=29,aug1MAX=24,cost=50},--Taeon Tights/Ranged Attack
[885]={trade={27234,8941,{65535,3}},base=27234,aug1=69,aug1MAX=19,cost=50},--Taeon Tights/Ranged Accuracy and Ranged Attack
[886]={trade={27234,8941,{65535,4}},base=27234,aug1=31,aug1MAX=24,cost=50},--Taeon Tights/Evasion
[887]={trade={27234,8944,{65535,1}},base=27234,aug2=116,aug2MAX=5,cost=50},--Taeon Tights/Subtle Blow
[888]={trade={27234,8944,{65535,2}},base=27234,aug2=49,aug2MAX=2,cost=50},--Taeon Tights/Haste
[889]={trade={27234,8944,{65535,3}},base=27234,aug2=103,aug2MAX=-3,cost=50},--Taeon Tights/Enemy Critical Hit Rate
[890]={trade={27234,8944,{65535,4}},base=27234,aug2=41,aug2MAX=2,cost=50},--Taeon Tights/Critical Hit Rate
[891]={trade={27234,8944,{65535,5}},base=27234,aug2=212,aug2MAX=7,cost=50},--Taeon Tights/Recycle
[892]={trade={27234,8944,{65535,6}},base=27234,aug2=211,aug2MAX=4,cost=50},--Taeon Tights/Snapshot
[893]={trade={27234,8947,{65535,1}},base=27234,aug3=513,aug3MAX=9,cost=50},--Taeon Tights/DEX
[894]={trade={27234,8947,{65535,2}},base=27234,aug3=515,aug3MAX=9,cost=50},--Taeon Tights/AGI
[895]={trade={27234,8947,{65535,3}},base=27234,aug3=550,aug3MAX=6,cost=50},--Taeon Tights/STR and DEX
[896]={trade={27234,8947,{65535,4}},base=27234,aug3=552,aug3MAX=6,cost=50},--Taeon Tights/STR and AGI
[897]={trade={27234,8947,{65535,5}},base=27234,aug3=211,aug3MAX=4,cost=50},--Taeon Tights/Snapshot
[898]={trade={27234,8947,{65535,6}},base=27234,aug3=332,aug3MAX=4,cost=50},--Taeon Tights/Skillchain Damage
[899]={trade={27234,8950,{65535,1}},base=27234,aug1=35,aug1MAX=19,cost=50},--Taeon Tights/Magic Accuracy
[900]={trade={27234,8950,{65535,2}},base=27234,aug1=133,aug1MAX=19,cost=50},--Taeon Tights/Magic Attack Bonus
[901]={trade={27234,8950,{65535,3}},base=27234,aug1=108,aug1MAX=14,cost=50},--Taeon Tights/Magic Accuracy and Magic Attack Bonus
[902]={trade={27234,8950,{65535,4}},base=27234,aug1=37,aug1MAX=19,cost=50},--Taeon Tights/Magic Evasion
[903]={trade={27234,8953,{65535,1}},base=27234,aug2=140,aug2MAX=4,cost=50},--Taeon Tights/Fast Cast
[904]={trade={27234,8953,{65535,2}},base=27234,aug2=141,aug2MAX=4,cost=50},--Taeon Tights/Conserve MP
[905]={trade={27234,8953,{65535,3}},base=27234,aug2=323,aug2MAX=-4,cost=50},--Taeon Tights/Cure Spellcasting Time
[906]={trade={27234,8953,{65535,4}},base=27234,aug2=53,aug2MAX=-9,cost=50},--Taeon Tights/Spell Interruption Rate
[907]={trade={27234,8953,{65535,5}},base=27234,aug2=329,aug2MAX=4,cost=50},--Taeon Tights/Cure Potency
[908]={trade={27234,8953,{65535,6}},base=27234,aug2=39,aug2MAX=-4,cost=50},--Taeon Tights/Enmity
[909]={trade={27234,8956,{65535,1}},base=27234,aug3=516,aug3MAX=9,cost=50},--Taeon Tights/INT
[910]={trade={27234,8956,{65535,2}},base=27234,aug3=554,aug3MAX=6,cost=50},--Taeon Tights/INT and MND
[911]={trade={27234,8956,{65535,3}},base=27234,aug3=335,aug3MAX=9,cost=50},--Taeon Tights/Magic Critical Hit Damage
[912]={trade={27234,8956,{65535,4}},base=27234,aug3=368,aug3MAX=2,cost=50},--Taeon Tights/Phalanx
[913]={trade={27234,8956,{65535,5}},base=27234,aug3=371,aug3MAX=2,cost=50},--Taeon Tights/Regen Potency
[914]={trade={27234,8956,{65535,6}},base=27234,aug3=517,aug3MAX=9,cost=50},--Taeon Tights/MND
[915]={trade={27234,8959,{65535,1}},base=27234,aug1=96,aug1MAX=24,cost=50},--Taeon Tights/Pet: Accuracy and Pet: Ranged Accuracy
[916]={trade={27234,8959,{65535,2}},base=27234,aug1=97,aug1MAX=24,cost=50},--Taeon Tights/Pet: Attack and Pet: Ranged Attack
[917]={trade={27234,8959,{65535,3}},base=27234,aug1=100,aug1MAX=24,cost=50},--Taeon Tights/Pet: Magic Accuracy
[918]={trade={27234,8959,{65535,4}},base=27234,aug1=101,aug1MAX=24,cost=50},--Taeon Tights/Pet: Magic Attack Bonus
[919]={trade={27234,8959,{65535,5}},base=27234,aug1=99,aug1MAX=24,cost=50},--Taeon Tights/Pet: Defense
[920]={trade={27234,8959,{65535,6}},base=27234,aug1=98,aug1MAX=24,cost=50},--Taeon Tights/Pet: Evasion
[921]={trade={27234,8959,{65535,7}},base=27234,aug1=117,aug1MAX=24,cost=50},--Taeon Tights/Pet: Magic Evasion
[922]={trade={27234,8962,{65535,1}},base=27234,aug2=110,aug2MAX=2,cost=50},--Taeon Tights/Pet: Regen
[923]={trade={27234,8962,{65535,2}},base=27234,aug2=116,aug2MAX=7,cost=50},--Taeon Tights/Pet: Subtle Blow
[924]={trade={27234,8962,{65535,3}},base=27234,aug2=121,aug2MAX=7,cost=50},--Taeon Tights/Pet: Breath
[925]={trade={27234,8962,{65535,4}},base=27234,aug2=123,aug2MAX=4,cost=50},--Taeon Tights/Pet: Double Attack
[926]={trade={27234,8962,{65535,5}},base=27234,aug2=Change,aug2MAX=3,cost=50},--Taeon Tights/Pet: Critical Hit Rate
[927]={trade={27234,8962,{65535,6}},base=27234,aug2=341,aug2MAX=4,cost=50},--Taeon Tights/"Repair" Potency
[928]={trade={27234,8965,{65535,1}},base=27234,aug3=517,aug3MAX=9,cost=50},--Taeon Tights/MND
[929]={trade={27234,8965,{65535,2}},base=27234,aug3=518,aug3MAX=9,cost=50},--Taeon Tights/CHR
[930]={trade={27234,8965,{65535,3}},base=27234,aug3=555,aug3MAX=6,cost=50},--Taeon Tights/MND and CHR
[931]={trade={27234,8965,{65535,4}},base=27234,aug3=557,aug3MAX=6,cost=50},--Taeon Tights/STR and CHR
[932]={trade={27234,8965,{65535,5}},base=27234,aug3=111,aug3MAX=4,cost=50},--Taeon Tights/Pet: Haste
[933]={trade={27234,8965,{65535,6}},base=27234,aug3=112,aug3MAX=-3,cost=50},--Taeon Tights/Pet: Damage Taken
[934]={trade={27404,8932,{65535,1}},base=27404,aug1=23,aug1MAX=24,cost=50},--Taeon Boots/Accuracy
[935]={trade={27404,8932,{65535,2}},base=27404,aug1=25,aug1MAX=24,cost=50},--Taeon Boots/Attack
[936]={trade={27404,8932,{65535,3}},base=27404,aug1=68,aug1MAX=19,cost=50},--Taeon Boots/Accuracy and Attack
[937]={trade={27404,8932,{65535,4}},base=27404,aug1=33,aug1MAX=19,cost=50},--Taeon Boots/Defense
[938]={trade={27404,8935,{65535,1}},base=27404,aug2=330,aug2MAX=4,cost=50},--Taeon Boots/Waltz Potency
[939]={trade={27404,8935,{65535,2}},base=27404,aug2=326,aug2MAX=19,cost=50},--Taeon Boots/Weapon Skill Accuracy
[940]={trade={27404,8935,{65535,3}},base=27404,aug2=144,aug2MAX=1,cost=50},--Taeon Boots/Triple Attack
[941]={trade={27404,8935,{65535,4}},base=27404,aug2=356,aug2MAX=6,cost=50},--Taeon Boots/Cure Potency Received
[942]={trade={27404,8935,{65535,5}},base=27404,aug2=145,aug2MAX=2,cost=50},--Taeon Boots/Counter
[943]={trade={27404,8935,{65535,6}},base=27404,aug2=146,aug2MAX=4,cost=50},--Taeon Boots/Dual Wield
[944]={trade={27404,8938,{65535,1}},base=27404,aug3=512,aug3MAX=9,cost=50},--Taeon Boots/STR
[945]={trade={27404,8938,{65535,2}},base=27404,aug3=514,aug3MAX=9,cost=50},--Taeon Boots/VIT
[946]={trade={27404,8938,{65535,3}},base=27404,aug3=551,aug3MAX=6,cost=50},--Taeon Boots/STR and VIT
[947]={trade={27404,8938,{65535,4}},base=27404,aug3=327,aug3MAX=2,cost=50},--Taeon Boots/Weapon Skill Damage
[948]={trade={27404,8938,{65535,5}},base=27404,aug3=328,aug3MAX=2,cost=50},--Taeon Boots/Critical Hit Damage
[949]={trade={27404,8938,{65535,6}},base=27404,aug3=1,aug3MAX=49,cost=50},--Taeon Boots/HP
[950]={trade={27404,8941,{65535,1}},base=27404,aug1=27,aug1MAX=24,cost=50},--Taeon Boots/Ranged Accuracy
[951]={trade={27404,8941,{65535,2}},base=27404,aug1=29,aug1MAX=24,cost=50},--Taeon Boots/Ranged Attack
[952]={trade={27404,8941,{65535,3}},base=27404,aug1=69,aug1MAX=19,cost=50},--Taeon Boots/Ranged Accuracy and Ranged Attack
[953]={trade={27404,8941,{65535,4}},base=27404,aug1=31,aug1MAX=24,cost=50},--Taeon Boots/Evasion
[954]={trade={27404,8944,{65535,1}},base=27404,aug2=116,aug2MAX=5,cost=50},--Taeon Boots/Subtle Blow
[955]={trade={27404,8944,{65535,2}},base=27404,aug2=49,aug2MAX=2,cost=50},--Taeon Boots/Haste
[956]={trade={27404,8944,{65535,3}},base=27404,aug2=103,aug2MAX=-3,cost=50},--Taeon Boots/Enemy Critical Hit Rate
[957]={trade={27404,8944,{65535,4}},base=27404,aug2=41,aug2MAX=2,cost=50},--Taeon Boots/Critical Hit Rate
[958]={trade={27404,8944,{65535,5}},base=27404,aug2=212,aug2MAX=7,cost=50},--Taeon Boots/Recycle
[959]={trade={27404,8944,{65535,6}},base=27404,aug2=211,aug2MAX=4,cost=50},--Taeon Boots/Snapshot
[960]={trade={27404,8947,{65535,1}},base=27404,aug3=513,aug3MAX=9,cost=50},--Taeon Boots/DEX
[961]={trade={27404,8947,{65535,2}},base=27404,aug3=515,aug3MAX=9,cost=50},--Taeon Boots/AGI
[962]={trade={27404,8947,{65535,3}},base=27404,aug3=550,aug3MAX=6,cost=50},--Taeon Boots/STR and DEX
[963]={trade={27404,8947,{65535,4}},base=27404,aug3=552,aug3MAX=6,cost=50},--Taeon Boots/STR and AGI
[964]={trade={27404,8947,{65535,5}},base=27404,aug3=211,aug3MAX=4,cost=50},--Taeon Boots/Snapshot
[965]={trade={27404,8947,{65535,6}},base=27404,aug3=332,aug3MAX=4,cost=50},--Taeon Boots/Skillchain Damage
[966]={trade={27404,8950,{65535,1}},base=27404,aug1=35,aug1MAX=19,cost=50},--Taeon Boots/Magic Accuracy
[967]={trade={27404,8950,{65535,2}},base=27404,aug1=133,aug1MAX=19,cost=50},--Taeon Boots/Magic Attack Bonus
[968]={trade={27404,8950,{65535,3}},base=27404,aug1=108,aug1MAX=14,cost=50},--Taeon Boots/Magic Accuracy and Magic Attack Bonus
[969]={trade={27404,8950,{65535,4}},base=27404,aug1=37,aug1MAX=19,cost=50},--Taeon Boots/Magic Evasion
[970]={trade={27404,8953,{65535,1}},base=27404,aug2=140,aug2MAX=4,cost=50},--Taeon Boots/Fast Cast
[971]={trade={27404,8953,{65535,2}},base=27404,aug2=141,aug2MAX=4,cost=50},--Taeon Boots/Conserve MP
[972]={trade={27404,8953,{65535,3}},base=27404,aug2=323,aug2MAX=-4,cost=50},--Taeon Boots/Cure Spellcasting Time
[973]={trade={27404,8953,{65535,4}},base=27404,aug2=53,aug2MAX=-9,cost=50},--Taeon Boots/Spell Interruption Rate
[974]={trade={27404,8953,{65535,5}},base=27404,aug2=329,aug2MAX=4,cost=50},--Taeon Boots/Cure Potency
[975]={trade={27404,8953,{65535,6}},base=27404,aug2=39,aug2MAX=-4,cost=50},--Taeon Boots/Enmity
[976]={trade={27404,8956,{65535,1}},base=27404,aug3=516,aug3MAX=9,cost=50},--Taeon Boots/INT
[977]={trade={27404,8956,{65535,2}},base=27404,aug3=554,aug3MAX=6,cost=50},--Taeon Boots/INT and MND
[978]={trade={27404,8956,{65535,3}},base=27404,aug3=335,aug3MAX=9,cost=50},--Taeon Boots/Magic Critical Hit Damage
[979]={trade={27404,8956,{65535,4}},base=27404,aug3=368,aug3MAX=2,cost=50},--Taeon Boots/Phalanx
[980]={trade={27404,8956,{65535,5}},base=27404,aug3=371,aug3MAX=2,cost=50},--Taeon Boots/Regen Potency
[981]={trade={27404,8956,{65535,6}},base=27404,aug3=517,aug3MAX=9,cost=50},--Taeon Boots/MND
[982]={trade={27404,8959,{65535,1}},base=27404,aug1=96,aug1MAX=24,cost=50},--Taeon Boots/Pet: Accuracy and Pet: Ranged Accuracy
[983]={trade={27404,8959,{65535,2}},base=27404,aug1=97,aug1MAX=24,cost=50},--Taeon Boots/Pet: Attack and Pet: Ranged Attack
[984]={trade={27404,8959,{65535,3}},base=27404,aug1=100,aug1MAX=24,cost=50},--Taeon Boots/Pet: Magic Accuracy
[985]={trade={27404,8959,{65535,4}},base=27404,aug1=101,aug1MAX=24,cost=50},--Taeon Boots/Pet: Magic Attack Bonus
[986]={trade={27404,8959,{65535,5}},base=27404,aug1=99,aug1MAX=24,cost=50},--Taeon Boots/Pet: Defense
[987]={trade={27404,8959,{65535,6}},base=27404,aug1=98,aug1MAX=24,cost=50},--Taeon Boots/Pet: Evasion
[988]={trade={27404,8959,{65535,7}},base=27404,aug1=117,aug1MAX=24,cost=50},--Taeon Boots/Pet: Magic Evasion
[989]={trade={27404,8962,{65535,1}},base=27404,aug2=110,aug2MAX=2,cost=50},--Taeon Boots/Pet: Regen
[990]={trade={27404,8962,{65535,2}},base=27404,aug2=116,aug2MAX=7,cost=50},--Taeon Boots/Pet: Subtle Blow
[991]={trade={27404,8962,{65535,3}},base=27404,aug2=121,aug2MAX=7,cost=50},--Taeon Boots/Pet: Breath
[992]={trade={27404,8962,{65535,4}},base=27404,aug2=123,aug2MAX=4,cost=50},--Taeon Boots/Pet: Double Attack
[993]={trade={27404,8962,{65535,5}},base=27404,aug2=Change,aug2MAX=3,cost=50},--Taeon Boots/Pet: Critical Hit Rate
[994]={trade={27404,8962,{65535,6}},base=27404,aug2=341,aug2MAX=4,cost=50},--Taeon Boots/"Repair" Potency
[995]={trade={27404,8965,{65535,1}},base=27404,aug3=517,aug3MAX=9,cost=50},--Taeon Boots/MND
[996]={trade={27404,8965,{65535,2}},base=27404,aug3=518,aug3MAX=9,cost=50},--Taeon Boots/CHR
[997]={trade={27404,8965,{65535,3}},base=27404,aug3=555,aug3MAX=6,cost=50},--Taeon Boots/MND and CHR
[998]={trade={27404,8965,{65535,4}},base=27404,aug3=557,aug3MAX=6,cost=50},--Taeon Boots/STR and CHR
[999]={trade={27404,8965,{65535,5}},base=27404,aug3=111,aug3MAX=4,cost=50},--Taeon Boots/Pet: Haste
[1000]={trade={27404,8965,{65535,6}},base=27404,aug3=112,aug3MAX=-3,cost=50},--Taeon Boots/Pet: Damage Taken
[1001]={trade={26736,8932,{65535,1}},base=26736,aug1=23,aug1MAX=19,cost=50},--Telchine Cap/Accuracy
[1002]={trade={26736,8932,{65535,2}},base=26736,aug1=25,aug1MAX=19,cost=50},--Telchine Cap/Attack
[1003]={trade={26736,8932,{65535,3}},base=26736,aug1=68,aug1MAX=14,cost=50},--Telchine Cap/Accuracy and Attack
[1004]={trade={26736,8932,{65535,4}},base=26736,aug1=33,aug1MAX=19,cost=50},--Telchine Cap/Defense
[1005]={trade={26736,8935,{65535,1}},base=26736,aug2=115,aug2MAX=5,cost=50},--Telchine Cap/Store TP
[1006]={trade={26736,8935,{65535,2}},base=26736,aug2=143,aug2MAX=2,cost=50},--Telchine Cap/Double Attack
[1007]={trade={26736,8935,{65535,3}},base=26736,aug2=356,aug2MAX=6,cost=50},--Telchine Cap/Cure Potency Received
[1008]={trade={26736,8935,{65535,4}},base=26736,aug2=326,aug2MAX=19,cost=50},--Telchine Cap/Weapon Skill Accuracy
[1009]={trade={26736,8935,{65535,5}},base=26736,aug2=330,aug2MAX=4,cost=50},--Telchine Cap/Waltz Potency
[1010]={trade={26736,8935,{65535,6}},base=26736,aug2=103,aug2MAX=-3,cost=50},--Telchine Cap/Enemy Critical Hit Rate
[1011]={trade={26736,8938,{65535,1}},base=26736,aug3=512,aug3MAX=9,cost=50},--Telchine Cap/STR
[1012]={trade={26736,8938,{65535,2}},base=26736,aug3=514,aug3MAX=9,cost=50},--Telchine Cap/VIT
[1013]={trade={26736,8938,{65535,3}},base=26736,aug3=551,aug3MAX=6,cost=50},--Telchine Cap/STR and VIT
[1014]={trade={26736,8938,{65535,4}},base=26736,aug3=559,aug3MAX=6,cost=50},--Telchine Cap/STR and MND
[1015]={trade={26736,8938,{65535,5}},base=26736,aug3=327,aug3MAX=2,cost=50},--Telchine Cap/Weapon Skill Damage
[1016]={trade={26736,8938,{65535,6}},base=26736,aug3=1,aug3MAX=49,cost=50},--Telchine Cap/HP
[1017]={trade={26736,8941,{65535,1}},base=26736,aug1=27,aug1MAX=9,cost=50},--Telchine Cap/Ranged Accuracy
[1018]={trade={26736,8941,{65535,2}},base=26736,aug1=29,aug1MAX=9,cost=50},--Telchine Cap/Ranged Attack
[1019]={trade={26736,8941,{65535,3}},base=26736,aug1=69,aug1MAX=4,cost=50},--Telchine Cap/Ranged Accuracy and Ranged Attack
[1020]={trade={26736,8941,{65535,4}},base=26736,aug1=31,aug1MAX=19,cost=50},--Telchine Cap/Evasion
[1021]={trade={26736,8944,{65535,1}},base=26736,aug2=330,aug2MAX=4,cost=50},--Telchine Cap/Waltz Potency
[1022]={trade={26736,8944,{65535,2}},base=26736,aug2=103,aug2MAX=-3,cost=50},--Telchine Cap/Enemy Critical Hit Rate
[1023]={trade={26736,8944,{65535,3}},base=26736,aug2=116,aug2MAX=5,cost=50},--Telchine Cap/Subtle Blow
[1024]={trade={26736,8944,{65535,4}},base=26736,aug2=49,aug2MAX=2,cost=50},--Telchine Cap/Haste
[1025]={trade={26736,8944,{65535,5}},base=26736,aug2=39,aug2MAX=-4,cost=50},--Telchine Cap/Enmity
[1026]={trade={26736,8944,{65535,6}},base=26736,aug2=137,aug2MAX=1,cost=50},--Telchine Cap/Regen
[1027]={trade={26736,8947,{65535,1}},base=26736,aug3=513,aug3MAX=9,cost=50},--Telchine Cap/DEX
[1028]={trade={26736,8947,{65535,2}},base=26736,aug3=515,aug3MAX=9,cost=50},--Telchine Cap/AGI
[1029]={trade={26736,8947,{65535,3}},base=26736,aug3=550,aug3MAX=6,cost=50},--Telchine Cap/STR and DEX
[1030]={trade={26736,8947,{65535,4}},base=26736,aug3=552,aug3MAX=6,cost=50},--Telchine Cap/STR and AGI
[1031]={trade={26736,8947,{65535,5}},base=26736,aug3=211,aug3MAX=4,cost=50},--Telchine Cap/Snapshot
[1032]={trade={26736,8947,{65535,6}},base=26736,aug3=332,aug3MAX=4,cost=50},--Telchine Cap/Skillchain Damage
[1033]={trade={26736,8950,{65535,1}},base=26736,aug1=35,aug1MAX=24,cost=50},--Telchine Cap/Magic Accuracy
[1034]={trade={26736,8950,{65535,2}},base=26736,aug1=133,aug1MAX=19,cost=50},--Telchine Cap/Magic Attack Bonus
[1035]={trade={26736,8950,{65535,3}},base=26736,aug1=108,aug1MAX=14,cost=50},--Telchine Cap/Magic Accuracy and Magic Attack Bonus
[1036]={trade={26736,8950,{65535,4}},base=26736,aug1=37,aug1MAX=24,cost=50},--Telchine Cap/Magic Evasion
[1037]={trade={26736,8953,{65535,1}},base=26736,aug2=329,aug2MAX=7,cost=50},--Telchine Cap/Cure Potency
[1038]={trade={26736,8953,{65535,2}},base=26736,aug2=140,aug2MAX=4,cost=50},--Telchine Cap/Fast Cast
[1039]={trade={26736,8953,{65535,3}},base=26736,aug2=141,aug2MAX=4,cost=50},--Telchine Cap/Conserve MP
[1040]={trade={26736,8953,{65535,4}},base=26736,aug2=323,aug2MAX=-6,cost=50},--Telchine Cap/Cure Spellcasting Time
[1041]={trade={26736,8953,{65535,5}},base=26736,aug2=322,aug2MAX=-6,cost=50},--Telchine Cap/Song Spellcasting Time
[1042]={trade={26736,8953,{65535,6}},base=26736,aug2=53,aug2MAX=-9,cost=50},--Telchine Cap/Spell Interruption Rate
[1043]={trade={26736,8956,{65535,1}},base=26736,aug3=516,aug3MAX=9,cost=50},--Telchine Cap/INT
[1044]={trade={26736,8956,{65535,2}},base=26736,aug3=554,aug3MAX=9,cost=50},--Telchine Cap/INT and MND
[1045]={trade={26736,8956,{65535,3}},base=26736,aug3=371,aug3MAX=2,cost=50},--Telchine Cap/Regen Potency
[1046]={trade={26736,8956,{65535,4}},base=26736,aug3=1248,aug3MAX=9,cost=50},--Telchine Cap/Enhancing magic duration
[1047]={trade={26736,8956,{65535,5}},base=26736,aug3=9,aug3MAX=49,cost=50},--Telchine Cap/MP
[1048]={trade={26736,8956,{65535,6}},base=26736,aug3=517,aug3MAX=9,cost=50},--Telchine Cap/MND
[1049]={trade={26736,8959,{65535,1}},base=26736,aug1=96,aug1MAX=19,cost=50},--Telchine Cap/Pet: Accuracy and Pet: Ranged Accuracy
[1050]={trade={26736,8959,{65535,2}},base=26736,aug1=97,aug1MAX=19,cost=50},--Telchine Cap/Pet: Attack and Pet: Ranged Attack
[1051]={trade={26736,8959,{65535,3}},base=26736,aug1=100,aug1MAX=19,cost=50},--Telchine Cap/Pet: Magic Accuracy
[1052]={trade={26736,8959,{65535,4}},base=26736,aug1=101,aug1MAX=19,cost=50},--Telchine Cap/Pet: Magic Attack Bonus
[1053]={trade={26736,8959,{65535,5}},base=26736,aug1=99,aug1MAX=19,cost=50},--Telchine Cap/Pet: Defense
[1054]={trade={26736,8959,{65535,6}},base=26736,aug1=98,aug1MAX=19,cost=50},--Telchine Cap/Pet: Evasion
[1055]={trade={26736,8959,{65535,7}},base=26736,aug1=117,aug1MAX=19,cost=50},--Telchine Cap/Pet: Magic Evasion
[1056]={trade={26736,8962,{65535,1}},base=26736,aug2=110,aug2MAX=2,cost=50},--Telchine Cap/Pet: Regen
[1057]={trade={26736,8962,{65535,2}},base=26736,aug2=116,aug2MAX=7,cost=50},--Telchine Cap/Pet: Subtle Blow
[1058]={trade={26736,8962,{65535,3}},base=26736,aug2=121,aug2MAX=7,cost=50},--Telchine Cap/Pet: Breath
[1059]={trade={26736,8962,{65535,4}},base=26736,aug2=123,aug2MAX=4,cost=50},--Telchine Cap/Pet: Double Attack
[1060]={trade={26736,8962,{65535,5}},base=26736,aug2=321,aug2MAX=-3,cost=50},--Telchine Cap/Avatar Perpetuation Cost
[1061]={trade={26736,8962,{65535,6}},base=26736,aug2=339,aug2MAX=34,cost=50},--Telchine Cap/"Elemental Siphon"
[1062]={trade={26736,8965,{65535,1}},base=26736,aug3=517,aug3MAX=9,cost=50},--Telchine Cap/MND
[1063]={trade={26736,8965,{65535,2}},base=26736,aug3=518,aug3MAX=9,cost=50},--Telchine Cap/CHR
[1064]={trade={26736,8965,{65535,3}},base=26736,aug3=555,aug3MAX=6,cost=50},--Telchine Cap/MND and CHR
[1065]={trade={26736,8965,{65535,4}},base=26736,aug3=557,aug3MAX=6,cost=50},--Telchine Cap/STR and CHR
[1066]={trade={26736,8965,{65535,5}},base=26736,aug3=111,aug3MAX=4,cost=50},--Telchine Cap/Pet: Haste
[1067]={trade={26736,8965,{65535,6}},base=26736,aug3=112,aug3MAX=-3,cost=50},--Telchine Cap/Pet: Damage Taken
[1068]={trade={26894,8932,{65535,1}},base=26894,aug1=23,aug1MAX=19,cost=50},--Telchine Chasuble/Accuracy
[1069]={trade={26894,8932,{65535,2}},base=26894,aug1=25,aug1MAX=19,cost=50},--Telchine Chasuble/Attack
[1070]={trade={26894,8932,{65535,3}},base=26894,aug1=68,aug1MAX=14,cost=50},--Telchine Chasuble/Accuracy and Attack
[1071]={trade={26894,8932,{65535,4}},base=26894,aug1=33,aug1MAX=19,cost=50},--Telchine Chasuble/Defense
[1072]={trade={26894,8935,{65535,1}},base=26894,aug2=115,aug2MAX=5,cost=50},--Telchine Chasuble/Store TP
[1073]={trade={26894,8935,{65535,2}},base=26894,aug2=143,aug2MAX=2,cost=50},--Telchine Chasuble/Double Attack
[1074]={trade={26894,8935,{65535,3}},base=26894,aug2=356,aug2MAX=6,cost=50},--Telchine Chasuble/Cure Potency Received
[1075]={trade={26894,8935,{65535,4}},base=26894,aug2=326,aug2MAX=19,cost=50},--Telchine Chasuble/Weapon Skill Accuracy
[1076]={trade={26894,8935,{65535,5}},base=26894,aug2=330,aug2MAX=4,cost=50},--Telchine Chasuble/Waltz Potency
[1077]={trade={26894,8935,{65535,6}},base=26894,aug2=103,aug2MAX=-3,cost=50},--Telchine Chasuble/Enemy Critical Hit Rate
[1078]={trade={26894,8938,{65535,1}},base=26894,aug3=512,aug3MAX=9,cost=50},--Telchine Chasuble/STR
[1079]={trade={26894,8938,{65535,2}},base=26894,aug3=514,aug3MAX=9,cost=50},--Telchine Chasuble/VIT
[1080]={trade={26894,8938,{65535,3}},base=26894,aug3=551,aug3MAX=6,cost=50},--Telchine Chasuble/STR and VIT
[1081]={trade={26894,8938,{65535,4}},base=26894,aug3=559,aug3MAX=6,cost=50},--Telchine Chasuble/STR and MND
[1082]={trade={26894,8938,{65535,5}},base=26894,aug3=327,aug3MAX=2,cost=50},--Telchine Chasuble/Weapon Skill Damage
[1083]={trade={26894,8938,{65535,6}},base=26894,aug3=1,aug3MAX=49,cost=50},--Telchine Chasuble/HP
[1084]={trade={26894,8941,{65535,1}},base=26894,aug1=27,aug1MAX=9,cost=50},--Telchine Chasuble/Ranged Accuracy
[1085]={trade={26894,8941,{65535,2}},base=26894,aug1=29,aug1MAX=9,cost=50},--Telchine Chasuble/Ranged Attack
[1086]={trade={26894,8941,{65535,3}},base=26894,aug1=69,aug1MAX=4,cost=50},--Telchine Chasuble/Ranged Accuracy and Ranged Attack
[1087]={trade={26894,8941,{65535,4}},base=26894,aug1=31,aug1MAX=19,cost=50},--Telchine Chasuble/Evasion
[1088]={trade={26894,8944,{65535,1}},base=26894,aug2=330,aug2MAX=4,cost=50},--Telchine Chasuble/Waltz Potency
[1089]={trade={26894,8944,{65535,2}},base=26894,aug2=103,aug2MAX=-3,cost=50},--Telchine Chasuble/Enemy Critical Hit Rate
[1090]={trade={26894,8944,{65535,3}},base=26894,aug2=116,aug2MAX=5,cost=50},--Telchine Chasuble/Subtle Blow
[1091]={trade={26894,8944,{65535,4}},base=26894,aug2=49,aug2MAX=2,cost=50},--Telchine Chasuble/Haste
[1092]={trade={26894,8944,{65535,5}},base=26894,aug2=39,aug2MAX=-4,cost=50},--Telchine Chasuble/Enmity
[1093]={trade={26894,8944,{65535,6}},base=26894,aug2=137,aug2MAX=1,cost=50},--Telchine Chasuble/Regen
[1094]={trade={26894,8947,{65535,1}},base=26894,aug3=513,aug3MAX=9,cost=50},--Telchine Chasuble/DEX
[1095]={trade={26894,8947,{65535,2}},base=26894,aug3=515,aug3MAX=9,cost=50},--Telchine Chasuble/AGI
[1096]={trade={26894,8947,{65535,3}},base=26894,aug3=550,aug3MAX=6,cost=50},--Telchine Chasuble/STR and DEX
[1097]={trade={26894,8947,{65535,4}},base=26894,aug3=552,aug3MAX=6,cost=50},--Telchine Chasuble/STR and AGI
[1098]={trade={26894,8947,{65535,5}},base=26894,aug3=211,aug3MAX=4,cost=50},--Telchine Chasuble/Snapshot
[1099]={trade={26894,8947,{65535,6}},base=26894,aug3=332,aug3MAX=4,cost=50},--Telchine Chasuble/Skillchain Damage
[1100]={trade={26894,8950,{65535,1}},base=26894,aug1=35,aug1MAX=24,cost=50},--Telchine Chasuble/Magic Accuracy
[1101]={trade={26894,8950,{65535,2}},base=26894,aug1=133,aug1MAX=19,cost=50},--Telchine Chasuble/Magic Attack Bonus
[1102]={trade={26894,8950,{65535,3}},base=26894,aug1=108,aug1MAX=14,cost=50},--Telchine Chasuble/Magic Accuracy and Magic Attack Bonus
[1103]={trade={26894,8950,{65535,4}},base=26894,aug1=37,aug1MAX=24,cost=50},--Telchine Chasuble/Magic Evasion
[1104]={trade={26894,8953,{65535,1}},base=26894,aug2=329,aug2MAX=7,cost=50},--Telchine Chasuble/Cure Potency
[1105]={trade={26894,8953,{65535,2}},base=26894,aug2=140,aug2MAX=4,cost=50},--Telchine Chasuble/Fast Cast
[1106]={trade={26894,8953,{65535,3}},base=26894,aug2=141,aug2MAX=4,cost=50},--Telchine Chasuble/Conserve MP
[1107]={trade={26894,8953,{65535,4}},base=26894,aug2=323,aug2MAX=-6,cost=50},--Telchine Chasuble/Cure Spellcasting Time
[1108]={trade={26894,8953,{65535,5}},base=26894,aug2=322,aug2MAX=-6,cost=50},--Telchine Chasuble/Song Spellcasting Time
[1109]={trade={26894,8953,{65535,6}},base=26894,aug2=53,aug2MAX=-9,cost=50},--Telchine Chasuble/Spell Interruption Rate
[1110]={trade={26894,8956,{65535,1}},base=26894,aug3=516,aug3MAX=9,cost=50},--Telchine Chasuble/INT
[1111]={trade={26894,8956,{65535,2}},base=26894,aug3=554,aug3MAX=9,cost=50},--Telchine Chasuble/INT and MND
[1112]={trade={26894,8956,{65535,3}},base=26894,aug3=371,aug3MAX=2,cost=50},--Telchine Chasuble/Regen Potency
[1113]={trade={26894,8956,{65535,4}},base=26894,aug3=1248,aug3MAX=9,cost=50},--Telchine Chasuble/Enhancing magic duration
[1114]={trade={26894,8956,{65535,5}},base=26894,aug3=9,aug3MAX=49,cost=50},--Telchine Chasuble/MP
[1115]={trade={26894,8956,{65535,6}},base=26894,aug3=517,aug3MAX=9,cost=50},--Telchine Chasuble/MND
[1116]={trade={26894,8959,{65535,1}},base=26894,aug1=96,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Accuracy and Pet: Ranged Accuracy
[1117]={trade={26894,8959,{65535,2}},base=26894,aug1=97,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Attack and Pet: Ranged Attack
[1118]={trade={26894,8959,{65535,3}},base=26894,aug1=100,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Magic Accuracy
[1119]={trade={26894,8959,{65535,4}},base=26894,aug1=101,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Magic Attack Bonus
[1120]={trade={26894,8959,{65535,5}},base=26894,aug1=99,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Defense
[1121]={trade={26894,8959,{65535,6}},base=26894,aug1=98,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Evasion
[1122]={trade={26894,8959,{65535,7}},base=26894,aug1=117,aug1MAX=19,cost=50},--Telchine Chasuble/Pet: Magic Evasion
[1123]={trade={26894,8962,{65535,1}},base=26894,aug2=110,aug2MAX=2,cost=50},--Telchine Chasuble/Pet: Regen
[1124]={trade={26894,8962,{65535,2}},base=26894,aug2=116,aug2MAX=7,cost=50},--Telchine Chasuble/Pet: Subtle Blow
[1125]={trade={26894,8962,{65535,3}},base=26894,aug2=121,aug2MAX=7,cost=50},--Telchine Chasuble/Pet: Breath
[1126]={trade={26894,8962,{65535,4}},base=26894,aug2=123,aug2MAX=4,cost=50},--Telchine Chasuble/Pet: Double Attack
[1127]={trade={26894,8962,{65535,5}},base=26894,aug2=321,aug2MAX=-3,cost=50},--Telchine Chasuble/Avatar Perpetuation Cost
[1128]={trade={26894,8962,{65535,6}},base=26894,aug2=339,aug2MAX=34,cost=50},--Telchine Chasuble/"Elemental Siphon"
[1129]={trade={26894,8965,{65535,1}},base=26894,aug3=517,aug3MAX=9,cost=50},--Telchine Chasuble/MND
[1130]={trade={26894,8965,{65535,2}},base=26894,aug3=518,aug3MAX=9,cost=50},--Telchine Chasuble/CHR
[1131]={trade={26894,8965,{65535,3}},base=26894,aug3=555,aug3MAX=6,cost=50},--Telchine Chasuble/MND and CHR
[1132]={trade={26894,8965,{65535,4}},base=26894,aug3=557,aug3MAX=6,cost=50},--Telchine Chasuble/STR and CHR
[1133]={trade={26894,8965,{65535,5}},base=26894,aug3=111,aug3MAX=4,cost=50},--Telchine Chasuble/Pet: Haste
[1134]={trade={26894,8965,{65535,6}},base=26894,aug3=112,aug3MAX=-3,cost=50},--Telchine Chasuble/Pet: Damage Taken
[1135]={trade={27048,8932,{65535,1}},base=27048,aug1=23,aug1MAX=19,cost=50},--Telchine Gloves/Accuracy
[1136]={trade={27048,8932,{65535,2}},base=27048,aug1=25,aug1MAX=19,cost=50},--Telchine Gloves/Attack
[1137]={trade={27048,8932,{65535,3}},base=27048,aug1=68,aug1MAX=14,cost=50},--Telchine Gloves/Accuracy and Attack
[1138]={trade={27048,8932,{65535,4}},base=27048,aug1=33,aug1MAX=19,cost=50},--Telchine Gloves/Defense
[1139]={trade={27048,8935,{65535,1}},base=27048,aug2=115,aug2MAX=5,cost=50},--Telchine Gloves/Store TP
[1140]={trade={27048,8935,{65535,2}},base=27048,aug2=143,aug2MAX=2,cost=50},--Telchine Gloves/Double Attack
[1141]={trade={27048,8935,{65535,3}},base=27048,aug2=356,aug2MAX=6,cost=50},--Telchine Gloves/Cure Potency Received
[1142]={trade={27048,8935,{65535,4}},base=27048,aug2=326,aug2MAX=19,cost=50},--Telchine Gloves/Weapon Skill Accuracy
[1143]={trade={27048,8935,{65535,5}},base=27048,aug2=330,aug2MAX=4,cost=50},--Telchine Gloves/Waltz Potency
[1144]={trade={27048,8935,{65535,6}},base=27048,aug2=103,aug2MAX=-3,cost=50},--Telchine Gloves/Enemy Critical Hit Rate
[1145]={trade={27048,8938,{65535,1}},base=27048,aug3=512,aug3MAX=9,cost=50},--Telchine Gloves/STR
[1146]={trade={27048,8938,{65535,2}},base=27048,aug3=514,aug3MAX=9,cost=50},--Telchine Gloves/VIT
[1147]={trade={27048,8938,{65535,3}},base=27048,aug3=551,aug3MAX=6,cost=50},--Telchine Gloves/STR and VIT
[1148]={trade={27048,8938,{65535,4}},base=27048,aug3=559,aug3MAX=6,cost=50},--Telchine Gloves/STR and MND
[1149]={trade={27048,8938,{65535,5}},base=27048,aug3=327,aug3MAX=2,cost=50},--Telchine Gloves/Weapon Skill Damage
[1150]={trade={27048,8938,{65535,6}},base=27048,aug3=1,aug3MAX=49,cost=50},--Telchine Gloves/HP
[1151]={trade={27048,8941,{65535,1}},base=27048,aug1=27,aug1MAX=9,cost=50},--Telchine Gloves/Ranged Accuracy
[1152]={trade={27048,8941,{65535,2}},base=27048,aug1=29,aug1MAX=9,cost=50},--Telchine Gloves/Ranged Attack
[1153]={trade={27048,8941,{65535,3}},base=27048,aug1=69,aug1MAX=4,cost=50},--Telchine Gloves/Ranged Accuracy and Ranged Attack
[1154]={trade={27048,8941,{65535,4}},base=27048,aug1=31,aug1MAX=19,cost=50},--Telchine Gloves/Evasion
[1155]={trade={27048,8944,{65535,1}},base=27048,aug2=330,aug2MAX=4,cost=50},--Telchine Gloves/Waltz Potency
[1156]={trade={27048,8944,{65535,2}},base=27048,aug2=103,aug2MAX=-3,cost=50},--Telchine Gloves/Enemy Critical Hit Rate
[1157]={trade={27048,8944,{65535,3}},base=27048,aug2=116,aug2MAX=5,cost=50},--Telchine Gloves/Subtle Blow
[1158]={trade={27048,8944,{65535,4}},base=27048,aug2=49,aug2MAX=2,cost=50},--Telchine Gloves/Haste
[1159]={trade={27048,8944,{65535,5}},base=27048,aug2=39,aug2MAX=-4,cost=50},--Telchine Gloves/Enmity
[1160]={trade={27048,8944,{65535,6}},base=27048,aug2=137,aug2MAX=1,cost=50},--Telchine Gloves/Regen
[1161]={trade={27048,8947,{65535,1}},base=27048,aug3=513,aug3MAX=9,cost=50},--Telchine Gloves/DEX
[1162]={trade={27048,8947,{65535,2}},base=27048,aug3=515,aug3MAX=9,cost=50},--Telchine Gloves/AGI
[1163]={trade={27048,8947,{65535,3}},base=27048,aug3=550,aug3MAX=6,cost=50},--Telchine Gloves/STR and DEX
[1164]={trade={27048,8947,{65535,4}},base=27048,aug3=552,aug3MAX=6,cost=50},--Telchine Gloves/STR and AGI
[1165]={trade={27048,8947,{65535,5}},base=27048,aug3=211,aug3MAX=4,cost=50},--Telchine Gloves/Snapshot
[1166]={trade={27048,8947,{65535,6}},base=27048,aug3=332,aug3MAX=4,cost=50},--Telchine Gloves/Skillchain Damage
[1167]={trade={27048,8950,{65535,1}},base=27048,aug1=35,aug1MAX=24,cost=50},--Telchine Gloves/Magic Accuracy
[1168]={trade={27048,8950,{65535,2}},base=27048,aug1=133,aug1MAX=19,cost=50},--Telchine Gloves/Magic Attack Bonus
[1169]={trade={27048,8950,{65535,3}},base=27048,aug1=108,aug1MAX=14,cost=50},--Telchine Gloves/Magic Accuracy and Magic Attack Bonus
[1170]={trade={27048,8950,{65535,4}},base=27048,aug1=37,aug1MAX=24,cost=50},--Telchine Gloves/Magic Evasion
[1171]={trade={27048,8953,{65535,1}},base=27048,aug2=329,aug2MAX=7,cost=50},--Telchine Gloves/Cure Potency
[1172]={trade={27048,8953,{65535,2}},base=27048,aug2=140,aug2MAX=4,cost=50},--Telchine Gloves/Fast Cast
[1173]={trade={27048,8953,{65535,3}},base=27048,aug2=141,aug2MAX=4,cost=50},--Telchine Gloves/Conserve MP
[1174]={trade={27048,8953,{65535,4}},base=27048,aug2=323,aug2MAX=-6,cost=50},--Telchine Gloves/Cure Spellcasting Time
[1175]={trade={27048,8953,{65535,5}},base=27048,aug2=322,aug2MAX=-6,cost=50},--Telchine Gloves/Song Spellcasting Time
[1176]={trade={27048,8953,{65535,6}},base=27048,aug2=53,aug2MAX=-9,cost=50},--Telchine Gloves/Spell Interruption Rate
[1177]={trade={27048,8956,{65535,1}},base=27048,aug3=516,aug3MAX=9,cost=50},--Telchine Gloves/INT
[1178]={trade={27048,8956,{65535,2}},base=27048,aug3=554,aug3MAX=9,cost=50},--Telchine Gloves/INT and MND
[1179]={trade={27048,8956,{65535,3}},base=27048,aug3=371,aug3MAX=2,cost=50},--Telchine Gloves/Regen Potency
[1180]={trade={27048,8956,{65535,4}},base=27048,aug3=1248,aug3MAX=9,cost=50},--Telchine Gloves/Enhancing magic duration
[1181]={trade={27048,8956,{65535,5}},base=27048,aug3=9,aug3MAX=49,cost=50},--Telchine Gloves/MP
[1182]={trade={27048,8956,{65535,6}},base=27048,aug3=517,aug3MAX=9,cost=50},--Telchine Gloves/MND
[1183]={trade={27048,8959,{65535,1}},base=27048,aug1=96,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Accuracy and Pet: Ranged Accuracy
[1184]={trade={27048,8959,{65535,2}},base=27048,aug1=97,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Attack and Pet: Ranged Attack
[1185]={trade={27048,8959,{65535,3}},base=27048,aug1=100,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Magic Accuracy
[1186]={trade={27048,8959,{65535,4}},base=27048,aug1=101,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Magic Attack Bonus
[1187]={trade={27048,8959,{65535,5}},base=27048,aug1=99,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Defense
[1188]={trade={27048,8959,{65535,6}},base=27048,aug1=98,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Evasion
[1189]={trade={27048,8959,{65535,7}},base=27048,aug1=117,aug1MAX=19,cost=50},--Telchine Gloves/Pet: Magic Evasion
[1190]={trade={27048,8962,{65535,1}},base=27048,aug2=110,aug2MAX=2,cost=50},--Telchine Gloves/Pet: Regen
[1191]={trade={27048,8962,{65535,2}},base=27048,aug2=116,aug2MAX=7,cost=50},--Telchine Gloves/Pet: Subtle Blow
[1192]={trade={27048,8962,{65535,3}},base=27048,aug2=121,aug2MAX=7,cost=50},--Telchine Gloves/Pet: Breath
[1193]={trade={27048,8962,{65535,4}},base=27048,aug2=123,aug2MAX=4,cost=50},--Telchine Gloves/Pet: Double Attack
[1194]={trade={27048,8962,{65535,5}},base=27048,aug2=321,aug2MAX=-3,cost=50},--Telchine Gloves/Avatar Perpetuation Cost
[1195]={trade={27048,8962,{65535,6}},base=27048,aug2=339,aug2MAX=34,cost=50},--Telchine Gloves/"Elemental Siphon"
[1196]={trade={27048,8965,{65535,1}},base=27048,aug3=517,aug3MAX=9,cost=50},--Telchine Gloves/MND
[1197]={trade={27048,8965,{65535,2}},base=27048,aug3=518,aug3MAX=9,cost=50},--Telchine Gloves/CHR
[1198]={trade={27048,8965,{65535,3}},base=27048,aug3=555,aug3MAX=6,cost=50},--Telchine Gloves/MND and CHR
[1199]={trade={27048,8965,{65535,4}},base=27048,aug3=557,aug3MAX=6,cost=50},--Telchine Gloves/STR and CHR
[1200]={trade={27048,8965,{65535,5}},base=27048,aug3=111,aug3MAX=4,cost=50},--Telchine Gloves/Pet: Haste
[1201]={trade={27048,8965,{65535,6}},base=27048,aug3=112,aug3MAX=-3,cost=50},--Telchine Gloves/Pet: Damage Taken
[1202]={trade={27235,8932,{65535,1}},base=27235,aug1=23,aug1MAX=19,cost=50},--Telchine Braconi/Accuracy
[1203]={trade={27235,8932,{65535,2}},base=27235,aug1=25,aug1MAX=19,cost=50},--Telchine Braconi/Attack
[1204]={trade={27235,8932,{65535,3}},base=27235,aug1=68,aug1MAX=14,cost=50},--Telchine Braconi/Accuracy and Attack
[1205]={trade={27235,8932,{65535,4}},base=27235,aug1=33,aug1MAX=19,cost=50},--Telchine Braconi/Defense
[1206]={trade={27235,8935,{65535,1}},base=27235,aug2=115,aug2MAX=5,cost=50},--Telchine Braconi/Store TP
[1207]={trade={27235,8935,{65535,2}},base=27235,aug2=143,aug2MAX=2,cost=50},--Telchine Braconi/Double Attack
[1208]={trade={27235,8935,{65535,3}},base=27235,aug2=356,aug2MAX=6,cost=50},--Telchine Braconi/Cure Potency Received
[1209]={trade={27235,8935,{65535,4}},base=27235,aug2=326,aug2MAX=19,cost=50},--Telchine Braconi/Weapon Skill Accuracy
[1210]={trade={27235,8935,{65535,5}},base=27235,aug2=330,aug2MAX=4,cost=50},--Telchine Braconi/Waltz Potency
[1211]={trade={27235,8935,{65535,6}},base=27235,aug2=103,aug2MAX=-3,cost=50},--Telchine Braconi/Enemy Critical Hit Rate
[1212]={trade={27235,8938,{65535,1}},base=27235,aug3=512,aug3MAX=9,cost=50},--Telchine Braconi/STR
[1213]={trade={27235,8938,{65535,2}},base=27235,aug3=514,aug3MAX=9,cost=50},--Telchine Braconi/VIT
[1214]={trade={27235,8938,{65535,3}},base=27235,aug3=551,aug3MAX=6,cost=50},--Telchine Braconi/STR and VIT
[1215]={trade={27235,8938,{65535,4}},base=27235,aug3=559,aug3MAX=6,cost=50},--Telchine Braconi/STR and MND
[1216]={trade={27235,8938,{65535,5}},base=27235,aug3=327,aug3MAX=2,cost=50},--Telchine Braconi/Weapon Skill Damage
[1217]={trade={27235,8938,{65535,6}},base=27235,aug3=1,aug3MAX=49,cost=50},--Telchine Braconi/HP
[1218]={trade={27235,8941,{65535,1}},base=27235,aug1=27,aug1MAX=9,cost=50},--Telchine Braconi/Ranged Accuracy
[1219]={trade={27235,8941,{65535,2}},base=27235,aug1=29,aug1MAX=9,cost=50},--Telchine Braconi/Ranged Attack
[1220]={trade={27235,8941,{65535,3}},base=27235,aug1=69,aug1MAX=4,cost=50},--Telchine Braconi/Ranged Accuracy and Ranged Attack
[1221]={trade={27235,8941,{65535,4}},base=27235,aug1=31,aug1MAX=19,cost=50},--Telchine Braconi/Evasion
[1222]={trade={27235,8944,{65535,1}},base=27235,aug2=330,aug2MAX=4,cost=50},--Telchine Braconi/Waltz Potency
[1223]={trade={27235,8944,{65535,2}},base=27235,aug2=103,aug2MAX=-3,cost=50},--Telchine Braconi/Enemy Critical Hit Rate
[1224]={trade={27235,8944,{65535,3}},base=27235,aug2=116,aug2MAX=5,cost=50},--Telchine Braconi/Subtle Blow
[1225]={trade={27235,8944,{65535,4}},base=27235,aug2=49,aug2MAX=2,cost=50},--Telchine Braconi/Haste
[1226]={trade={27235,8944,{65535,5}},base=27235,aug2=39,aug2MAX=-4,cost=50},--Telchine Braconi/Enmity
[1227]={trade={27235,8944,{65535,6}},base=27235,aug2=137,aug2MAX=1,cost=50},--Telchine Braconi/Regen
[1228]={trade={27235,8947,{65535,1}},base=27235,aug3=513,aug3MAX=9,cost=50},--Telchine Braconi/DEX
[1229]={trade={27235,8947,{65535,2}},base=27235,aug3=515,aug3MAX=9,cost=50},--Telchine Braconi/AGI
[1230]={trade={27235,8947,{65535,3}},base=27235,aug3=550,aug3MAX=6,cost=50},--Telchine Braconi/STR and DEX
[1231]={trade={27235,8947,{65535,4}},base=27235,aug3=552,aug3MAX=6,cost=50},--Telchine Braconi/STR and AGI
[1232]={trade={27235,8947,{65535,5}},base=27235,aug3=211,aug3MAX=4,cost=50},--Telchine Braconi/Snapshot
[1233]={trade={27235,8947,{65535,6}},base=27235,aug3=332,aug3MAX=4,cost=50},--Telchine Braconi/Skillchain Damage
[1234]={trade={27235,8950,{65535,1}},base=27235,aug1=35,aug1MAX=24,cost=50},--Telchine Braconi/Magic Accuracy
[1235]={trade={27235,8950,{65535,2}},base=27235,aug1=133,aug1MAX=19,cost=50},--Telchine Braconi/Magic Attack Bonus
[1236]={trade={27235,8950,{65535,3}},base=27235,aug1=108,aug1MAX=14,cost=50},--Telchine Braconi/Magic Accuracy and Magic Attack Bonus
[1237]={trade={27235,8950,{65535,4}},base=27235,aug1=37,aug1MAX=24,cost=50},--Telchine Braconi/Magic Evasion
[1238]={trade={27235,8953,{65535,1}},base=27235,aug2=329,aug2MAX=7,cost=50},--Telchine Braconi/Cure Potency
[1239]={trade={27235,8953,{65535,2}},base=27235,aug2=140,aug2MAX=4,cost=50},--Telchine Braconi/Fast Cast
[1240]={trade={27235,8953,{65535,3}},base=27235,aug2=141,aug2MAX=4,cost=50},--Telchine Braconi/Conserve MP
[1241]={trade={27235,8953,{65535,4}},base=27235,aug2=323,aug2MAX=-6,cost=50},--Telchine Braconi/Cure Spellcasting Time
[1242]={trade={27235,8953,{65535,5}},base=27235,aug2=322,aug2MAX=-6,cost=50},--Telchine Braconi/Song Spellcasting Time
[1243]={trade={27235,8953,{65535,6}},base=27235,aug2=53,aug2MAX=-9,cost=50},--Telchine Braconi/Spell Interruption Rate
[1244]={trade={27235,8956,{65535,1}},base=27235,aug3=516,aug3MAX=9,cost=50},--Telchine Braconi/INT
[1245]={trade={27235,8956,{65535,2}},base=27235,aug3=554,aug3MAX=9,cost=50},--Telchine Braconi/INT and MND
[1246]={trade={27235,8956,{65535,3}},base=27235,aug3=371,aug3MAX=2,cost=50},--Telchine Braconi/Regen Potency
[1247]={trade={27235,8956,{65535,4}},base=27235,aug3=1248,aug3MAX=9,cost=50},--Telchine Braconi/Enhancing magic duration
[1248]={trade={27235,8956,{65535,5}},base=27235,aug3=9,aug3MAX=49,cost=50},--Telchine Braconi/MP
[1249]={trade={27235,8956,{65535,6}},base=27235,aug3=517,aug3MAX=9,cost=50},--Telchine Braconi/MND
[1250]={trade={27235,8959,{65535,1}},base=27235,aug1=96,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Accuracy and Pet: Ranged Accuracy
[1251]={trade={27235,8959,{65535,2}},base=27235,aug1=97,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Attack and Pet: Ranged Attack
[1252]={trade={27235,8959,{65535,3}},base=27235,aug1=100,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Magic Accuracy
[1253]={trade={27235,8959,{65535,4}},base=27235,aug1=101,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Magic Attack Bonus
[1254]={trade={27235,8959,{65535,5}},base=27235,aug1=99,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Defense
[1255]={trade={27235,8959,{65535,6}},base=27235,aug1=98,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Evasion
[1256]={trade={27235,8959,{65535,7}},base=27235,aug1=117,aug1MAX=19,cost=50},--Telchine Braconi/Pet: Magic Evasion
[1257]={trade={27235,8962,{65535,1}},base=27235,aug2=110,aug2MAX=2,cost=50},--Telchine Braconi/Pet: Regen
[1258]={trade={27235,8962,{65535,2}},base=27235,aug2=116,aug2MAX=7,cost=50},--Telchine Braconi/Pet: Subtle Blow
[1259]={trade={27235,8962,{65535,3}},base=27235,aug2=121,aug2MAX=7,cost=50},--Telchine Braconi/Pet: Breath
[1260]={trade={27235,8962,{65535,4}},base=27235,aug2=123,aug2MAX=4,cost=50},--Telchine Braconi/Pet: Double Attack
[1261]={trade={27235,8962,{65535,5}},base=27235,aug2=321,aug2MAX=-3,cost=50},--Telchine Braconi/Avatar Perpetuation Cost
[1262]={trade={27235,8962,{65535,6}},base=27235,aug2=339,aug2MAX=34,cost=50},--Telchine Braconi/"Elemental Siphon"
[1263]={trade={27235,8965,{65535,1}},base=27235,aug3=517,aug3MAX=9,cost=50},--Telchine Braconi/MND
[1264]={trade={27235,8965,{65535,2}},base=27235,aug3=518,aug3MAX=9,cost=50},--Telchine Braconi/CHR
[1265]={trade={27235,8965,{65535,3}},base=27235,aug3=555,aug3MAX=6,cost=50},--Telchine Braconi/MND and CHR
[1266]={trade={27235,8965,{65535,4}},base=27235,aug3=557,aug3MAX=6,cost=50},--Telchine Braconi/STR and CHR
[1267]={trade={27235,8965,{65535,5}},base=27235,aug3=111,aug3MAX=4,cost=50},--Telchine Braconi/Pet: Haste
[1268]={trade={27235,8965,{65535,6}},base=27235,aug3=112,aug3MAX=-3,cost=50},--Telchine Braconi/Pet: Damage Taken
[1269]={trade={27405,8932,{65535,1}},base=27405,aug1=23,aug1MAX=19,cost=50},--Telchine Pigaches/Accuracy
[1270]={trade={27405,8932,{65535,2}},base=27405,aug1=25,aug1MAX=19,cost=50},--Telchine Pigaches/Attack
[1271]={trade={27405,8932,{65535,3}},base=27405,aug1=68,aug1MAX=14,cost=50},--Telchine Pigaches/Accuracy and Attack
[1272]={trade={27405,8932,{65535,4}},base=27405,aug1=33,aug1MAX=19,cost=50},--Telchine Pigaches/Defense
[1273]={trade={27405,8935,{65535,1}},base=27405,aug2=115,aug2MAX=5,cost=50},--Telchine Pigaches/Store TP
[1274]={trade={27405,8935,{65535,2}},base=27405,aug2=143,aug2MAX=2,cost=50},--Telchine Pigaches/Double Attack
[1275]={trade={27405,8935,{65535,3}},base=27405,aug2=356,aug2MAX=6,cost=50},--Telchine Pigaches/Cure Potency Received
[1276]={trade={27405,8935,{65535,4}},base=27405,aug2=326,aug2MAX=19,cost=50},--Telchine Pigaches/Weapon Skill Accuracy
[1277]={trade={27405,8935,{65535,5}},base=27405,aug2=330,aug2MAX=4,cost=50},--Telchine Pigaches/Waltz Potency
[1278]={trade={27405,8935,{65535,6}},base=27405,aug2=103,aug2MAX=-3,cost=50},--Telchine Pigaches/Enemy Critical Hit Rate
[1279]={trade={27405,8938,{65535,1}},base=27405,aug3=512,aug3MAX=9,cost=50},--Telchine Pigaches/STR
[1280]={trade={27405,8938,{65535,2}},base=27405,aug3=514,aug3MAX=9,cost=50},--Telchine Pigaches/VIT
[1281]={trade={27405,8938,{65535,3}},base=27405,aug3=551,aug3MAX=6,cost=50},--Telchine Pigaches/STR and VIT
[1282]={trade={27405,8938,{65535,4}},base=27405,aug3=559,aug3MAX=6,cost=50},--Telchine Pigaches/STR and MND
[1283]={trade={27405,8938,{65535,5}},base=27405,aug3=327,aug3MAX=2,cost=50},--Telchine Pigaches/Weapon Skill Damage
[1284]={trade={27405,8938,{65535,6}},base=27405,aug3=1,aug3MAX=49,cost=50},--Telchine Pigaches/HP
[1285]={trade={27405,8941,{65535,1}},base=27405,aug1=27,aug1MAX=9,cost=50},--Telchine Pigaches/Ranged Accuracy
[1286]={trade={27405,8941,{65535,2}},base=27405,aug1=29,aug1MAX=9,cost=50},--Telchine Pigaches/Ranged Attack
[1287]={trade={27405,8941,{65535,3}},base=27405,aug1=69,aug1MAX=4,cost=50},--Telchine Pigaches/Ranged Accuracy and Ranged Attack
[1288]={trade={27405,8941,{65535,4}},base=27405,aug1=31,aug1MAX=19,cost=50},--Telchine Pigaches/Evasion
[1289]={trade={27405,8944,{65535,1}},base=27405,aug2=330,aug2MAX=4,cost=50},--Telchine Pigaches/Waltz Potency
[1290]={trade={27405,8944,{65535,2}},base=27405,aug2=103,aug2MAX=-3,cost=50},--Telchine Pigaches/Enemy Critical Hit Rate
[1291]={trade={27405,8944,{65535,3}},base=27405,aug2=116,aug2MAX=5,cost=50},--Telchine Pigaches/Subtle Blow
[1292]={trade={27405,8944,{65535,4}},base=27405,aug2=49,aug2MAX=2,cost=50},--Telchine Pigaches/Haste
[1293]={trade={27405,8944,{65535,5}},base=27405,aug2=39,aug2MAX=-4,cost=50},--Telchine Pigaches/Enmity
[1294]={trade={27405,8944,{65535,6}},base=27405,aug2=137,aug2MAX=1,cost=50},--Telchine Pigaches/Regen
[1295]={trade={27405,8947,{65535,1}},base=27405,aug3=513,aug3MAX=9,cost=50},--Telchine Pigaches/DEX
[1296]={trade={27405,8947,{65535,2}},base=27405,aug3=515,aug3MAX=9,cost=50},--Telchine Pigaches/AGI
[1297]={trade={27405,8947,{65535,3}},base=27405,aug3=550,aug3MAX=6,cost=50},--Telchine Pigaches/STR and DEX
[1298]={trade={27405,8947,{65535,4}},base=27405,aug3=552,aug3MAX=6,cost=50},--Telchine Pigaches/STR and AGI
[1299]={trade={27405,8947,{65535,5}},base=27405,aug3=211,aug3MAX=4,cost=50},--Telchine Pigaches/Snapshot
[1300]={trade={27405,8947,{65535,6}},base=27405,aug3=332,aug3MAX=4,cost=50},--Telchine Pigaches/Skillchain Damage
[1301]={trade={27405,8950,{65535,1}},base=27405,aug1=35,aug1MAX=24,cost=50},--Telchine Pigaches/Magic Accuracy
[1302]={trade={27405,8950,{65535,2}},base=27405,aug1=133,aug1MAX=19,cost=50},--Telchine Pigaches/Magic Attack Bonus
[1303]={trade={27405,8950,{65535,3}},base=27405,aug1=108,aug1MAX=14,cost=50},--Telchine Pigaches/Magic Accuracy and Magic Attack Bonus
[1304]={trade={27405,8950,{65535,4}},base=27405,aug1=37,aug1MAX=24,cost=50},--Telchine Pigaches/Magic Evasion
[1305]={trade={27405,8953,{65535,1}},base=27405,aug2=329,aug2MAX=7,cost=50},--Telchine Pigaches/Cure Potency
[1306]={trade={27405,8953,{65535,2}},base=27405,aug2=140,aug2MAX=4,cost=50},--Telchine Pigaches/Fast Cast
[1307]={trade={27405,8953,{65535,3}},base=27405,aug2=141,aug2MAX=4,cost=50},--Telchine Pigaches/Conserve MP
[1308]={trade={27405,8953,{65535,4}},base=27405,aug2=323,aug2MAX=-6,cost=50},--Telchine Pigaches/Cure Spellcasting Time
[1309]={trade={27405,8953,{65535,5}},base=27405,aug2=322,aug2MAX=-6,cost=50},--Telchine Pigaches/Song Spellcasting Time
[1310]={trade={27405,8953,{65535,6}},base=27405,aug2=53,aug2MAX=-9,cost=50},--Telchine Pigaches/Spell Interruption Rate
[1311]={trade={27405,8956,{65535,1}},base=27405,aug3=516,aug3MAX=9,cost=50},--Telchine Pigaches/INT
[1312]={trade={27405,8956,{65535,2}},base=27405,aug3=554,aug3MAX=9,cost=50},--Telchine Pigaches/INT and MND
[1313]={trade={27405,8956,{65535,3}},base=27405,aug3=371,aug3MAX=2,cost=50},--Telchine Pigaches/Regen Potency
[1314]={trade={27405,8956,{65535,4}},base=27405,aug3=1248,aug3MAX=9,cost=50},--Telchine Pigaches/Enhancing magic duration
[1315]={trade={27405,8956,{65535,5}},base=27405,aug3=9,aug3MAX=49,cost=50},--Telchine Pigaches/MP
[1316]={trade={27405,8956,{65535,6}},base=27405,aug3=517,aug3MAX=9,cost=50},--Telchine Pigaches/MND
[1317]={trade={27405,8959,{65535,1}},base=27405,aug1=96,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Accuracy and Pet: Ranged Accuracy
[1318]={trade={27405,8959,{65535,2}},base=27405,aug1=97,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Attack and Pet: Ranged Attack
[1319]={trade={27405,8959,{65535,3}},base=27405,aug1=100,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Magic Accuracy
[1320]={trade={27405,8959,{65535,4}},base=27405,aug1=101,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Magic Attack Bonus
[1321]={trade={27405,8959,{65535,5}},base=27405,aug1=99,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Defense
[1322]={trade={27405,8959,{65535,6}},base=27405,aug1=98,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Evasion
[1323]={trade={27405,8959,{65535,7}},base=27405,aug1=117,aug1MAX=19,cost=50},--Telchine Pigaches/Pet: Magic Evasion
[1324]={trade={27405,8962,{65535,1}},base=27405,aug2=110,aug2MAX=2,cost=50},--Telchine Pigaches/Pet: Regen
[1325]={trade={27405,8962,{65535,2}},base=27405,aug2=116,aug2MAX=7,cost=50},--Telchine Pigaches/Pet: Subtle Blow
[1326]={trade={27405,8962,{65535,3}},base=27405,aug2=121,aug2MAX=7,cost=50},--Telchine Pigaches/Pet: Breath
[1327]={trade={27405,8962,{65535,4}},base=27405,aug2=123,aug2MAX=4,cost=50},--Telchine Pigaches/Pet: Double Attack
[1328]={trade={27405,8962,{65535,5}},base=27405,aug2=321,aug2MAX=-3,cost=50},--Telchine Pigaches/Avatar Perpetuation Cost
[1329]={trade={27405,8962,{65535,6}},base=27405,aug2=339,aug2MAX=34,cost=50},--Telchine Pigaches/"Elemental Siphon"
[1330]={trade={27405,8965,{65535,1}},base=27405,aug3=517,aug3MAX=9,cost=50},--Telchine Pigaches/MND
[1331]={trade={27405,8965,{65535,2}},base=27405,aug3=518,aug3MAX=9,cost=50},--Telchine Pigaches/CHR
[1332]={trade={27405,8965,{65535,3}},base=27405,aug3=555,aug3MAX=6,cost=50},--Telchine Pigaches/MND and CHR
[1333]={trade={27405,8965,{65535,4}},base=27405,aug3=557,aug3MAX=6,cost=50},--Telchine Pigaches/STR and CHR
[1334]={trade={27405,8965,{65535,5}},base=27405,aug3=111,aug3MAX=4,cost=50},--Telchine Pigaches/Pet: Haste
[1335]={trade={27405,8965,{65535,6}},base=27405,aug3=112,aug3MAX=-3,cost=50},--Telchine Pigaches/Pet: Damage Taken
[1336]={trade={26737,8932,{65535,1}},base=26737,aug1=23,aug1MAX=9,cost=50},--Helios Band/Accuracy
[1337]={trade={26737,8932,{65535,2}},base=26737,aug1=25,aug1MAX=9,cost=50},--Helios Band/Attack
[1338]={trade={26737,8932,{65535,3}},base=26737,aug1=68,aug1MAX=4,cost=50},--Helios Band/Accuracy and Attack
[1339]={trade={26737,8932,{65535,4}},base=26737,aug1=33,aug1MAX=19,cost=50},--Helios Band/Defense
[1340]={trade={26737,8935,{65535,1}},base=26737,aug2=115,aug2MAX=2,cost=50},--Helios Band/Store TP
[1341]={trade={26737,8935,{65535,2}},base=26737,aug2=143,aug2MAX=1,cost=50},--Helios Band/Double Attack
[1342]={trade={26737,8935,{65535,3}},base=26737,aug2=356,aug2MAX=6,cost=50},--Helios Band/Cure Potency Received
[1343]={trade={26737,8935,{65535,4}},base=26737,aug2=326,aug2MAX=9,cost=50},--Helios Band/Weapon Skill Accuracy
[1344]={trade={26737,8935,{65535,5}},base=26737,aug2=330,aug2MAX=4,cost=50},--Helios Band/Waltz Potency
[1345]={trade={26737,8935,{65535,6}},base=26737,aug2=103,aug2MAX=-3,cost=50},--Helios Band/Enemy Critical Hit Rate
[1346]={trade={26737,8938,{65535,1}},base=26737,aug3=512,aug3MAX=9,cost=50},--Helios Band/STR
[1347]={trade={26737,8938,{65535,2}},base=26737,aug3=514,aug3MAX=9,cost=50},--Helios Band/VIT
[1348]={trade={26737,8938,{65535,3}},base=26737,aug3=551,aug3MAX=6,cost=50},--Helios Band/STR and VIT
[1349]={trade={26737,8938,{65535,4}},base=26737,aug3=559,aug3MAX=6,cost=50},--Helios Band/STR and MND
[1350]={trade={26737,8938,{65535,5}},base=26737,aug3=327,aug3MAX=2,cost=50},--Helios Band/Weapon Skill Damage
[1351]={trade={26737,8938,{65535,6}},base=26737,aug3=1,aug3MAX=49,cost=50},--Helios Band/HP
[1352]={trade={26737,8941,{65535,1}},base=26737,aug1=27,aug1MAX=9,cost=50},--Helios Band/Ranged Accuracy
[1353]={trade={26737,8941,{65535,2}},base=26737,aug1=29,aug1MAX=9,cost=50},--Helios Band/Ranged Attack
[1354]={trade={26737,8941,{65535,3}},base=26737,aug1=69,aug1MAX=4,cost=50},--Helios Band/Ranged Accuracy and Ranged Attack
[1355]={trade={26737,8941,{65535,4}},base=26737,aug1=31,aug1MAX=19,cost=50},--Helios Band/Evasion
[1356]={trade={26737,8944,{65535,1}},base=26737,aug2=330,aug2MAX=4,cost=50},--Helios Band/Waltz Potency
[1357]={trade={26737,8944,{65535,2}},base=26737,aug2=103,aug2MAX=-3,cost=50},--Helios Band/Enemy Critical Hit Rate
[1358]={trade={26737,8944,{65535,3}},base=26737,aug2=116,aug2MAX=2,cost=50},--Helios Band/Subtle Blow
[1359]={trade={26737,8944,{65535,4}},base=26737,aug2=49,aug2MAX=1,cost=50},--Helios Band/Haste
[1360]={trade={26737,8944,{65535,5}},base=26737,aug2=39,aug2MAX=-4,cost=50},--Helios Band/Enmity
[1361]={trade={26737,8944,{65535,6}},base=26737,aug2=137,aug2MAX=0,cost=50},--Helios Band/Regen
[1362]={trade={26737,8947,{65535,1}},base=26737,aug3=513,aug3MAX=9,cost=50},--Helios Band/DEX
[1363]={trade={26737,8947,{65535,2}},base=26737,aug3=515,aug3MAX=9,cost=50},--Helios Band/AGI
[1364]={trade={26737,8947,{65535,3}},base=26737,aug3=550,aug3MAX=6,cost=50},--Helios Band/STR and DEX
[1365]={trade={26737,8947,{65535,4}},base=26737,aug3=552,aug3MAX=6,cost=50},--Helios Band/STR and AGI
[1366]={trade={26737,8947,{65535,5}},base=26737,aug3=211,aug3MAX=4,cost=50},--Helios Band/Snapshot
[1367]={trade={26737,8947,{65535,6}},base=26737,aug3=332,aug3MAX=4,cost=50},--Helios Band/Skillchain Damage
[1368]={trade={26737,8950,{65535,1}},base=26737,aug1=35,aug1MAX=24,cost=50},--Helios Band/Magic Accuracy
[1369]={trade={26737,8950,{65535,2}},base=26737,aug1=133,aug1MAX=24,cost=50},--Helios Band/Magic Attack Bonus
[1370]={trade={26737,8950,{65535,3}},base=26737,aug1=108,aug1MAX=19,cost=50},--Helios Band/Magic Accuracy and Magic Attack Bonus
[1371]={trade={26737,8950,{65535,4}},base=26737,aug1=37,aug1MAX=24,cost=50},--Helios Band/Magic Evasion
[1372]={trade={26737,8953,{65535,1}},base=26737,aug2=57,aug2MAX=7,cost=50},--Helios Band/Magic Critical Hit Rate
[1373]={trade={26737,8953,{65535,2}},base=26737,aug2=140,aug2MAX=4,cost=50},--Helios Band/Fast Cast
[1374]={trade={26737,8953,{65535,3}},base=26737,aug2=141,aug2MAX=4,cost=50},--Helios Band/Conserve MP
[1375]={trade={26737,8953,{65535,4}},base=26737,aug2=343,aug2MAX=9,cost=50},--Helios Band/"Drain" and "Aspir" potency
[1376]={trade={26737,8953,{65535,5}},base=26737,aug2=53,aug2MAX=-9,cost=50},--Helios Band/Spell Interruption Rate
[1377]={trade={26737,8953,{65535,6}},base=26737,aug2=237,aug2MAX=9,cost=50},--Helios Band/Occult Acumen
[1378]={trade={26737,8956,{65535,1}},base=26737,aug3=516,aug3MAX=9,cost=50},--Helios Band/INT
[1379]={trade={26737,8956,{65535,2}},base=26737,aug3=554,aug3MAX=6,cost=50},--Helios Band/INT and MND
[1380]={trade={26737,8956,{65535,3}},base=26737,aug3=335,aug3MAX=9,cost=50},--Helios Band/Magic Critical Hit Damage
[1381]={trade={26737,8956,{65535,4}},base=26737,aug3=334,aug3MAX=9,cost=50},--Helios Band/Magic Burst Damage
[1382]={trade={26737,8956,{65535,5}},base=26737,aug3=9,aug3MAX=49,cost=50},--Helios Band/MP
[1383]={trade={26737,8956,{65535,6}},base=26737,aug3=517,aug3MAX=9,cost=50},--Helios Band/MND
[1384]={trade={26737,8959,{65535,1}},base=26737,aug1=96,aug1MAX=29,cost=50},--Helios Band/Pet: Accuracy and Pet: Ranged Accuracy
[1385]={trade={26737,8959,{65535,2}},base=26737,aug1=97,aug1MAX=29,cost=50},--Helios Band/Pet: Attack and Pet: Ranged Attack
[1386]={trade={26737,8959,{65535,3}},base=26737,aug1=100,aug1MAX=29,cost=50},--Helios Band/Pet: Magic Accuracy
[1387]={trade={26737,8959,{65535,4}},base=26737,aug1=101,aug1MAX=29,cost=50},--Helios Band/Pet: Magic Attack Bonus
[1388]={trade={26737,8959,{65535,5}},base=26737,aug1=99,aug1MAX=29,cost=50},--Helios Band/Pet: Defense
[1389]={trade={26737,8959,{65535,6}},base=26737,aug1=98,aug1MAX=29,cost=50},--Helios Band/Pet: Evasion
[1390]={trade={26737,8959,{65535,7}},base=26737,aug1=117,aug1MAX=29,cost=50},--Helios Band/Pet: Magic Evasion
[1391]={trade={26737,8962,{65535,1}},base=26737,aug2=110,aug2MAX=2,cost=50},--Helios Band/Pet: Regen
[1392]={trade={26737,8962,{65535,2}},base=26737,aug2=Change,aug2MAX=3,cost=50},--Helios Band/Pet: Critical Hit Rate
[1393]={trade={26737,8962,{65535,3}},base=26737,aug2=123,aug2MAX=7,cost=50},--Helios Band/Pet: Double Attack
[1394]={trade={26737,8962,{65535,4}},base=26737,aug2=321,aug2MAX=-3,cost=50},--Helios Band/Avatar Perpetuation Cost
[1395]={trade={26737,8962,{65535,5}},base=26737,aug2=320,aug2MAX=-4,cost=50},--Helios Band/Blood Pact Ability Delay
[1396]={trade={26737,8962,{65535,6}},base=26737,aug2=233,aug2MAX=6,cost=50},--Helios Band/Blood Boon
[1397]={trade={26737,8965,{65535,1}},base=26737,aug3=517,aug3MAX=9,cost=50},--Helios Band/MND
[1398]={trade={26737,8965,{65535,2}},base=26737,aug3=518,aug3MAX=9,cost=50},--Helios Band/CHR
[1399]={trade={26737,8965,{65535,3}},base=26737,aug3=555,aug3MAX=6,cost=50},--Helios Band/MND and CHR
[1400]={trade={26737,8965,{65535,4}},base=26737,aug3=369,aug3MAX=6,cost=50},--Helios Band/Blood Pact Damage
[1401]={trade={26737,8965,{65535,5}},base=26737,aug3=294,aug3MAX=7,cost=50},--Helios Band/Summoning Magic Skill
[1402]={trade={26737,8965,{65535,6}},base=26737,aug3=111,aug3MAX=5,cost=50},--Helios Band/Pet: Haste
[1403]={trade={26895,8932,{65535,1}},base=26895,aug1=23,aug1MAX=9,cost=50},--Helios Jacket/Accuracy
[1404]={trade={26895,8932,{65535,2}},base=26895,aug1=25,aug1MAX=9,cost=50},--Helios Jacket/Attack
[1405]={trade={26895,8932,{65535,3}},base=26895,aug1=68,aug1MAX=4,cost=50},--Helios Jacket/Accuracy and Attack
[1406]={trade={26895,8932,{65535,4}},base=26895,aug1=33,aug1MAX=19,cost=50},--Helios Jacket/Defense
[1407]={trade={26895,8935,{65535,1}},base=26895,aug2=115,aug2MAX=2,cost=50},--Helios Jacket/Store TP
[1408]={trade={26895,8935,{65535,2}},base=26895,aug2=143,aug2MAX=1,cost=50},--Helios Jacket/Double Attack
[1409]={trade={26895,8935,{65535,3}},base=26895,aug2=356,aug2MAX=6,cost=50},--Helios Jacket/Cure Potency Received
[1410]={trade={26895,8935,{65535,4}},base=26895,aug2=326,aug2MAX=9,cost=50},--Helios Jacket/Weapon Skill Accuracy
[1411]={trade={26895,8935,{65535,5}},base=26895,aug2=330,aug2MAX=4,cost=50},--Helios Jacket/Waltz Potency
[1412]={trade={26895,8935,{65535,6}},base=26895,aug2=103,aug2MAX=-3,cost=50},--Helios Jacket/Enemy Critical Hit Rate
[1413]={trade={26895,8938,{65535,1}},base=26895,aug3=512,aug3MAX=9,cost=50},--Helios Jacket/STR
[1414]={trade={26895,8938,{65535,2}},base=26895,aug3=514,aug3MAX=9,cost=50},--Helios Jacket/VIT
[1415]={trade={26895,8938,{65535,3}},base=26895,aug3=551,aug3MAX=6,cost=50},--Helios Jacket/STR and VIT
[1416]={trade={26895,8938,{65535,4}},base=26895,aug3=559,aug3MAX=6,cost=50},--Helios Jacket/STR and MND
[1417]={trade={26895,8938,{65535,5}},base=26895,aug3=327,aug3MAX=2,cost=50},--Helios Jacket/Weapon Skill Damage
[1418]={trade={26895,8938,{65535,6}},base=26895,aug3=1,aug3MAX=49,cost=50},--Helios Jacket/HP
[1419]={trade={26895,8941,{65535,1}},base=26895,aug1=27,aug1MAX=9,cost=50},--Helios Jacket/Ranged Accuracy
[1420]={trade={26895,8941,{65535,2}},base=26895,aug1=29,aug1MAX=9,cost=50},--Helios Jacket/Ranged Attack
[1421]={trade={26895,8941,{65535,3}},base=26895,aug1=69,aug1MAX=4,cost=50},--Helios Jacket/Ranged Accuracy and Ranged Attack
[1422]={trade={26895,8941,{65535,4}},base=26895,aug1=31,aug1MAX=19,cost=50},--Helios Jacket/Evasion
[1423]={trade={26895,8944,{65535,1}},base=26895,aug2=330,aug2MAX=4,cost=50},--Helios Jacket/Waltz Potency
[1424]={trade={26895,8944,{65535,2}},base=26895,aug2=103,aug2MAX=-3,cost=50},--Helios Jacket/Enemy Critical Hit Rate
[1425]={trade={26895,8944,{65535,3}},base=26895,aug2=116,aug2MAX=2,cost=50},--Helios Jacket/Subtle Blow
[1426]={trade={26895,8944,{65535,4}},base=26895,aug2=49,aug2MAX=1,cost=50},--Helios Jacket/Haste
[1427]={trade={26895,8944,{65535,5}},base=26895,aug2=39,aug2MAX=-4,cost=50},--Helios Jacket/Enmity
[1428]={trade={26895,8944,{65535,6}},base=26895,aug2=137,aug2MAX=0,cost=50},--Helios Jacket/Regen
[1429]={trade={26895,8947,{65535,1}},base=26895,aug3=513,aug3MAX=9,cost=50},--Helios Jacket/DEX
[1430]={trade={26895,8947,{65535,2}},base=26895,aug3=515,aug3MAX=9,cost=50},--Helios Jacket/AGI
[1431]={trade={26895,8947,{65535,3}},base=26895,aug3=550,aug3MAX=6,cost=50},--Helios Jacket/STR and DEX
[1432]={trade={26895,8947,{65535,4}},base=26895,aug3=552,aug3MAX=6,cost=50},--Helios Jacket/STR and AGI
[1433]={trade={26895,8947,{65535,5}},base=26895,aug3=211,aug3MAX=4,cost=50},--Helios Jacket/Snapshot
[1434]={trade={26895,8947,{65535,6}},base=26895,aug3=332,aug3MAX=4,cost=50},--Helios Jacket/Skillchain Damage
[1435]={trade={26895,8950,{65535,1}},base=26895,aug1=35,aug1MAX=24,cost=50},--Helios Jacket/Magic Accuracy
[1436]={trade={26895,8950,{65535,2}},base=26895,aug1=133,aug1MAX=24,cost=50},--Helios Jacket/Magic Attack Bonus
[1437]={trade={26895,8950,{65535,3}},base=26895,aug1=108,aug1MAX=19,cost=50},--Helios Jacket/Magic Accuracy and Magic Attack Bonus
[1438]={trade={26895,8950,{65535,4}},base=26895,aug1=37,aug1MAX=24,cost=50},--Helios Jacket/Magic Evasion
[1439]={trade={26895,8953,{65535,1}},base=26895,aug2=57,aug2MAX=7,cost=50},--Helios Jacket/Magic Critical Hit Rate
[1440]={trade={26895,8953,{65535,2}},base=26895,aug2=140,aug2MAX=4,cost=50},--Helios Jacket/Fast Cast
[1441]={trade={26895,8953,{65535,3}},base=26895,aug2=141,aug2MAX=4,cost=50},--Helios Jacket/Conserve MP
[1442]={trade={26895,8953,{65535,4}},base=26895,aug2=343,aug2MAX=9,cost=50},--Helios Jacket/"Drain" and "Aspir" potency
[1443]={trade={26895,8953,{65535,5}},base=26895,aug2=53,aug2MAX=-9,cost=50},--Helios Jacket/Spell Interruption Rate
[1444]={trade={26895,8953,{65535,6}},base=26895,aug2=237,aug2MAX=9,cost=50},--Helios Jacket/Occult Acumen
[1445]={trade={26895,8956,{65535,1}},base=26895,aug3=516,aug3MAX=9,cost=50},--Helios Jacket/INT
[1446]={trade={26895,8956,{65535,2}},base=26895,aug3=554,aug3MAX=6,cost=50},--Helios Jacket/INT and MND
[1447]={trade={26895,8956,{65535,3}},base=26895,aug3=335,aug3MAX=9,cost=50},--Helios Jacket/Magic Critical Hit Damage
[1448]={trade={26895,8956,{65535,4}},base=26895,aug3=334,aug3MAX=9,cost=50},--Helios Jacket/Magic Burst Damage
[1449]={trade={26895,8956,{65535,5}},base=26895,aug3=9,aug3MAX=49,cost=50},--Helios Jacket/MP
[1450]={trade={26895,8956,{65535,6}},base=26895,aug3=517,aug3MAX=9,cost=50},--Helios Jacket/MND
[1451]={trade={26895,8959,{65535,1}},base=26895,aug1=96,aug1MAX=29,cost=50},--Helios Jacket/Pet: Accuracy and Pet: Ranged Accuracy
[1452]={trade={26895,8959,{65535,2}},base=26895,aug1=97,aug1MAX=29,cost=50},--Helios Jacket/Pet: Attack and Pet: Ranged Attack
[1453]={trade={26895,8959,{65535,3}},base=26895,aug1=100,aug1MAX=29,cost=50},--Helios Jacket/Pet: Magic Accuracy
[1454]={trade={26895,8959,{65535,4}},base=26895,aug1=101,aug1MAX=29,cost=50},--Helios Jacket/Pet: Magic Attack Bonus
[1455]={trade={26895,8959,{65535,5}},base=26895,aug1=99,aug1MAX=29,cost=50},--Helios Jacket/Pet: Defense
[1456]={trade={26895,8959,{65535,6}},base=26895,aug1=98,aug1MAX=29,cost=50},--Helios Jacket/Pet: Evasion
[1457]={trade={26895,8959,{65535,7}},base=26895,aug1=117,aug1MAX=29,cost=50},--Helios Jacket/Pet: Magic Evasion
[1458]={trade={26895,8962,{65535,1}},base=26895,aug2=110,aug2MAX=2,cost=50},--Helios Jacket/Pet: Regen
[1459]={trade={26895,8962,{65535,2}},base=26895,aug2=Change,aug2MAX=3,cost=50},--Helios Jacket/Pet: Critical Hit Rate
[1460]={trade={26895,8962,{65535,3}},base=26895,aug2=123,aug2MAX=7,cost=50},--Helios Jacket/Pet: Double Attack
[1461]={trade={26895,8962,{65535,4}},base=26895,aug2=321,aug2MAX=-3,cost=50},--Helios Jacket/Avatar Perpetuation Cost
[1462]={trade={26895,8962,{65535,5}},base=26895,aug2=320,aug2MAX=-4,cost=50},--Helios Jacket/Blood Pact Ability Delay
[1463]={trade={26895,8962,{65535,6}},base=26895,aug2=233,aug2MAX=6,cost=50},--Helios Jacket/Blood Boon
[1464]={trade={26895,8965,{65535,1}},base=26895,aug3=517,aug3MAX=9,cost=50},--Helios Jacket/MND
[1465]={trade={26895,8965,{65535,2}},base=26895,aug3=518,aug3MAX=9,cost=50},--Helios Jacket/CHR
[1466]={trade={26895,8965,{65535,3}},base=26895,aug3=555,aug3MAX=6,cost=50},--Helios Jacket/MND and CHR
[1467]={trade={26895,8965,{65535,4}},base=26895,aug3=369,aug3MAX=6,cost=50},--Helios Jacket/Blood Pact Damage
[1468]={trade={26895,8965,{65535,5}},base=26895,aug3=294,aug3MAX=7,cost=50},--Helios Jacket/Summoning Magic Skill
[1469]={trade={26895,8965,{65535,6}},base=26895,aug3=111,aug3MAX=5,cost=50},--Helios Jacket/Pet: Haste
[1470]={trade={27049,8932,{65535,1}},base=27049,aug1=23,aug1MAX=9,cost=50},--Helios Gloves/Accuracy
[1471]={trade={27049,8932,{65535,2}},base=27049,aug1=25,aug1MAX=9,cost=50},--Helios Gloves/Attack
[1472]={trade={27049,8932,{65535,3}},base=27049,aug1=68,aug1MAX=4,cost=50},--Helios Gloves/Accuracy and Attack
[1473]={trade={27049,8932,{65535,4}},base=27049,aug1=33,aug1MAX=19,cost=50},--Helios Gloves/Defense
[1474]={trade={27049,8935,{65535,1}},base=27049,aug2=115,aug2MAX=2,cost=50},--Helios Gloves/Store TP
[1475]={trade={27049,8935,{65535,2}},base=27049,aug2=143,aug2MAX=1,cost=50},--Helios Gloves/Double Attack
[1476]={trade={27049,8935,{65535,3}},base=27049,aug2=356,aug2MAX=6,cost=50},--Helios Gloves/Cure Potency Received
[1477]={trade={27049,8935,{65535,4}},base=27049,aug2=326,aug2MAX=9,cost=50},--Helios Gloves/Weapon Skill Accuracy
[1478]={trade={27049,8935,{65535,5}},base=27049,aug2=330,aug2MAX=4,cost=50},--Helios Gloves/Waltz Potency
[1479]={trade={27049,8935,{65535,6}},base=27049,aug2=103,aug2MAX=-3,cost=50},--Helios Gloves/Enemy Critical Hit Rate
[1480]={trade={27049,8938,{65535,1}},base=27049,aug3=512,aug3MAX=9,cost=50},--Helios Gloves/STR
[1481]={trade={27049,8938,{65535,2}},base=27049,aug3=514,aug3MAX=9,cost=50},--Helios Gloves/VIT
[1482]={trade={27049,8938,{65535,3}},base=27049,aug3=551,aug3MAX=6,cost=50},--Helios Gloves/STR and VIT
[1483]={trade={27049,8938,{65535,4}},base=27049,aug3=559,aug3MAX=6,cost=50},--Helios Gloves/STR and MND
[1484]={trade={27049,8938,{65535,5}},base=27049,aug3=327,aug3MAX=2,cost=50},--Helios Gloves/Weapon Skill Damage
[1485]={trade={27049,8938,{65535,6}},base=27049,aug3=1,aug3MAX=49,cost=50},--Helios Gloves/HP
[1486]={trade={27049,8941,{65535,1}},base=27049,aug1=27,aug1MAX=9,cost=50},--Helios Gloves/Ranged Accuracy
[1487]={trade={27049,8941,{65535,2}},base=27049,aug1=29,aug1MAX=9,cost=50},--Helios Gloves/Ranged Attack
[1488]={trade={27049,8941,{65535,3}},base=27049,aug1=69,aug1MAX=4,cost=50},--Helios Gloves/Ranged Accuracy and Ranged Attack
[1489]={trade={27049,8941,{65535,4}},base=27049,aug1=31,aug1MAX=19,cost=50},--Helios Gloves/Evasion
[1490]={trade={27049,8944,{65535,1}},base=27049,aug2=330,aug2MAX=4,cost=50},--Helios Gloves/Waltz Potency
[1491]={trade={27049,8944,{65535,2}},base=27049,aug2=103,aug2MAX=-3,cost=50},--Helios Gloves/Enemy Critical Hit Rate
[1492]={trade={27049,8944,{65535,3}},base=27049,aug2=116,aug2MAX=2,cost=50},--Helios Gloves/Subtle Blow
[1493]={trade={27049,8944,{65535,4}},base=27049,aug2=49,aug2MAX=1,cost=50},--Helios Gloves/Haste
[1494]={trade={27049,8944,{65535,5}},base=27049,aug2=39,aug2MAX=-4,cost=50},--Helios Gloves/Enmity
[1495]={trade={27049,8944,{65535,6}},base=27049,aug2=137,aug2MAX=0,cost=50},--Helios Gloves/Regen
[1496]={trade={27049,8947,{65535,1}},base=27049,aug3=513,aug3MAX=9,cost=50},--Helios Gloves/DEX
[1497]={trade={27049,8947,{65535,2}},base=27049,aug3=515,aug3MAX=9,cost=50},--Helios Gloves/AGI
[1498]={trade={27049,8947,{65535,3}},base=27049,aug3=550,aug3MAX=6,cost=50},--Helios Gloves/STR and DEX
[1499]={trade={27049,8947,{65535,4}},base=27049,aug3=552,aug3MAX=6,cost=50},--Helios Gloves/STR and AGI
[1500]={trade={27049,8947,{65535,5}},base=27049,aug3=211,aug3MAX=4,cost=50},--Helios Gloves/Snapshot
[1501]={trade={27049,8947,{65535,6}},base=27049,aug3=332,aug3MAX=4,cost=50},--Helios Gloves/Skillchain Damage
[1502]={trade={27049,8950,{65535,1}},base=27049,aug1=35,aug1MAX=24,cost=50},--Helios Gloves/Magic Accuracy
[1503]={trade={27049,8950,{65535,2}},base=27049,aug1=133,aug1MAX=24,cost=50},--Helios Gloves/Magic Attack Bonus
[1504]={trade={27049,8950,{65535,3}},base=27049,aug1=108,aug1MAX=19,cost=50},--Helios Gloves/Magic Accuracy and Magic Attack Bonus
[1505]={trade={27049,8950,{65535,4}},base=27049,aug1=37,aug1MAX=24,cost=50},--Helios Gloves/Magic Evasion
[1506]={trade={27049,8953,{65535,1}},base=27049,aug2=57,aug2MAX=7,cost=50},--Helios Gloves/Magic Critical Hit Rate
[1507]={trade={27049,8953,{65535,2}},base=27049,aug2=140,aug2MAX=4,cost=50},--Helios Gloves/Fast Cast
[1508]={trade={27049,8953,{65535,3}},base=27049,aug2=141,aug2MAX=4,cost=50},--Helios Gloves/Conserve MP
[1509]={trade={27049,8953,{65535,4}},base=27049,aug2=343,aug2MAX=9,cost=50},--Helios Gloves/"Drain" and "Aspir" potency
[1510]={trade={27049,8953,{65535,5}},base=27049,aug2=53,aug2MAX=-9,cost=50},--Helios Gloves/Spell Interruption Rate
[1511]={trade={27049,8953,{65535,6}},base=27049,aug2=237,aug2MAX=9,cost=50},--Helios Gloves/Occult Acumen
[1512]={trade={27049,8956,{65535,1}},base=27049,aug3=516,aug3MAX=9,cost=50},--Helios Gloves/INT
[1513]={trade={27049,8956,{65535,2}},base=27049,aug3=554,aug3MAX=6,cost=50},--Helios Gloves/INT and MND
[1514]={trade={27049,8956,{65535,3}},base=27049,aug3=335,aug3MAX=9,cost=50},--Helios Gloves/Magic Critical Hit Damage
[1515]={trade={27049,8956,{65535,4}},base=27049,aug3=334,aug3MAX=9,cost=50},--Helios Gloves/Magic Burst Damage
[1516]={trade={27049,8956,{65535,5}},base=27049,aug3=9,aug3MAX=49,cost=50},--Helios Gloves/MP
[1517]={trade={27049,8956,{65535,6}},base=27049,aug3=517,aug3MAX=9,cost=50},--Helios Gloves/MND
[1518]={trade={27049,8959,{65535,1}},base=27049,aug1=96,aug1MAX=29,cost=50},--Helios Gloves/Pet: Accuracy and Pet: Ranged Accuracy
[1519]={trade={27049,8959,{65535,2}},base=27049,aug1=97,aug1MAX=29,cost=50},--Helios Gloves/Pet: Attack and Pet: Ranged Attack
[1520]={trade={27049,8959,{65535,3}},base=27049,aug1=100,aug1MAX=29,cost=50},--Helios Gloves/Pet: Magic Accuracy
[1521]={trade={27049,8959,{65535,4}},base=27049,aug1=101,aug1MAX=29,cost=50},--Helios Gloves/Pet: Magic Attack Bonus
[1522]={trade={27049,8959,{65535,5}},base=27049,aug1=99,aug1MAX=29,cost=50},--Helios Gloves/Pet: Defense
[1523]={trade={27049,8959,{65535,6}},base=27049,aug1=98,aug1MAX=29,cost=50},--Helios Gloves/Pet: Evasion
[1524]={trade={27049,8959,{65535,7}},base=27049,aug1=117,aug1MAX=29,cost=50},--Helios Gloves/Pet: Magic Evasion
[1525]={trade={27049,8962,{65535,1}},base=27049,aug2=110,aug2MAX=2,cost=50},--Helios Gloves/Pet: Regen
[1526]={trade={27049,8962,{65535,2}},base=27049,aug2=Change,aug2MAX=3,cost=50},--Helios Gloves/Pet: Critical Hit Rate
[1527]={trade={27049,8962,{65535,3}},base=27049,aug2=123,aug2MAX=7,cost=50},--Helios Gloves/Pet: Double Attack
[1528]={trade={27049,8962,{65535,4}},base=27049,aug2=321,aug2MAX=-3,cost=50},--Helios Gloves/Avatar Perpetuation Cost
[1529]={trade={27049,8962,{65535,5}},base=27049,aug2=320,aug2MAX=-4,cost=50},--Helios Gloves/Blood Pact Ability Delay
[1530]={trade={27049,8962,{65535,6}},base=27049,aug2=233,aug2MAX=6,cost=50},--Helios Gloves/Blood Boon
[1531]={trade={27049,8965,{65535,1}},base=27049,aug3=517,aug3MAX=9,cost=50},--Helios Gloves/MND
[1532]={trade={27049,8965,{65535,2}},base=27049,aug3=518,aug3MAX=9,cost=50},--Helios Gloves/CHR
[1533]={trade={27049,8965,{65535,3}},base=27049,aug3=555,aug3MAX=6,cost=50},--Helios Gloves/MND and CHR
[1534]={trade={27049,8965,{65535,4}},base=27049,aug3=369,aug3MAX=6,cost=50},--Helios Gloves/Blood Pact Damage
[1535]={trade={27049,8965,{65535,5}},base=27049,aug3=294,aug3MAX=7,cost=50},--Helios Gloves/Summoning Magic Skill
[1536]={trade={27049,8965,{65535,6}},base=27049,aug3=111,aug3MAX=5,cost=50},--Helios Gloves/Pet: Haste
[1537]={trade={27236,8932,{65535,1}},base=27236,aug1=23,aug1MAX=9,cost=50},--Helios Spats/Accuracy
[1538]={trade={27236,8932,{65535,2}},base=27236,aug1=25,aug1MAX=9,cost=50},--Helios Spats/Attack
[1539]={trade={27236,8932,{65535,3}},base=27236,aug1=68,aug1MAX=4,cost=50},--Helios Spats/Accuracy and Attack
[1540]={trade={27236,8932,{65535,4}},base=27236,aug1=33,aug1MAX=19,cost=50},--Helios Spats/Defense
[1541]={trade={27236,8935,{65535,1}},base=27236,aug2=115,aug2MAX=2,cost=50},--Helios Spats/Store TP
[1542]={trade={27236,8935,{65535,2}},base=27236,aug2=143,aug2MAX=1,cost=50},--Helios Spats/Double Attack
[1543]={trade={27236,8935,{65535,3}},base=27236,aug2=356,aug2MAX=6,cost=50},--Helios Spats/Cure Potency Received
[1544]={trade={27236,8935,{65535,4}},base=27236,aug2=326,aug2MAX=9,cost=50},--Helios Spats/Weapon Skill Accuracy
[1545]={trade={27236,8935,{65535,5}},base=27236,aug2=330,aug2MAX=4,cost=50},--Helios Spats/Waltz Potency
[1546]={trade={27236,8935,{65535,6}},base=27236,aug2=103,aug2MAX=-3,cost=50},--Helios Spats/Enemy Critical Hit Rate
[1547]={trade={27236,8938,{65535,1}},base=27236,aug3=512,aug3MAX=9,cost=50},--Helios Spats/STR
[1548]={trade={27236,8938,{65535,2}},base=27236,aug3=514,aug3MAX=9,cost=50},--Helios Spats/VIT
[1549]={trade={27236,8938,{65535,3}},base=27236,aug3=551,aug3MAX=6,cost=50},--Helios Spats/STR and VIT
[1550]={trade={27236,8938,{65535,4}},base=27236,aug3=559,aug3MAX=6,cost=50},--Helios Spats/STR and MND
[1551]={trade={27236,8938,{65535,5}},base=27236,aug3=327,aug3MAX=2,cost=50},--Helios Spats/Weapon Skill Damage
[1552]={trade={27236,8938,{65535,6}},base=27236,aug3=1,aug3MAX=49,cost=50},--Helios Spats/HP
[1553]={trade={27236,8941,{65535,1}},base=27236,aug1=27,aug1MAX=9,cost=50},--Helios Spats/Ranged Accuracy
[1554]={trade={27236,8941,{65535,2}},base=27236,aug1=29,aug1MAX=9,cost=50},--Helios Spats/Ranged Attack
[1555]={trade={27236,8941,{65535,3}},base=27236,aug1=69,aug1MAX=4,cost=50},--Helios Spats/Ranged Accuracy and Ranged Attack
[1556]={trade={27236,8941,{65535,4}},base=27236,aug1=31,aug1MAX=19,cost=50},--Helios Spats/Evasion
[1557]={trade={27236,8944,{65535,1}},base=27236,aug2=330,aug2MAX=4,cost=50},--Helios Spats/Waltz Potency
[1558]={trade={27236,8944,{65535,2}},base=27236,aug2=103,aug2MAX=-3,cost=50},--Helios Spats/Enemy Critical Hit Rate
[1559]={trade={27236,8944,{65535,3}},base=27236,aug2=116,aug2MAX=2,cost=50},--Helios Spats/Subtle Blow
[1560]={trade={27236,8944,{65535,4}},base=27236,aug2=49,aug2MAX=1,cost=50},--Helios Spats/Haste
[1561]={trade={27236,8944,{65535,5}},base=27236,aug2=39,aug2MAX=-4,cost=50},--Helios Spats/Enmity
[1562]={trade={27236,8944,{65535,6}},base=27236,aug2=137,aug2MAX=0,cost=50},--Helios Spats/Regen
[1563]={trade={27236,8947,{65535,1}},base=27236,aug3=513,aug3MAX=9,cost=50},--Helios Spats/DEX
[1564]={trade={27236,8947,{65535,2}},base=27236,aug3=515,aug3MAX=9,cost=50},--Helios Spats/AGI
[1565]={trade={27236,8947,{65535,3}},base=27236,aug3=550,aug3MAX=6,cost=50},--Helios Spats/STR and DEX
[1566]={trade={27236,8947,{65535,4}},base=27236,aug3=552,aug3MAX=6,cost=50},--Helios Spats/STR and AGI
[1567]={trade={27236,8947,{65535,5}},base=27236,aug3=211,aug3MAX=4,cost=50},--Helios Spats/Snapshot
[1568]={trade={27236,8947,{65535,6}},base=27236,aug3=332,aug3MAX=4,cost=50},--Helios Spats/Skillchain Damage
[1569]={trade={27236,8950,{65535,1}},base=27236,aug1=35,aug1MAX=24,cost=50},--Helios Spats/Magic Accuracy
[1570]={trade={27236,8950,{65535,2}},base=27236,aug1=133,aug1MAX=24,cost=50},--Helios Spats/Magic Attack Bonus
[1571]={trade={27236,8950,{65535,3}},base=27236,aug1=108,aug1MAX=19,cost=50},--Helios Spats/Magic Accuracy and Magic Attack Bonus
[1572]={trade={27236,8950,{65535,4}},base=27236,aug1=37,aug1MAX=24,cost=50},--Helios Spats/Magic Evasion
[1573]={trade={27236,8953,{65535,1}},base=27236,aug2=57,aug2MAX=7,cost=50},--Helios Spats/Magic Critical Hit Rate
[1574]={trade={27236,8953,{65535,2}},base=27236,aug2=140,aug2MAX=4,cost=50},--Helios Spats/Fast Cast
[1575]={trade={27236,8953,{65535,3}},base=27236,aug2=141,aug2MAX=4,cost=50},--Helios Spats/Conserve MP
[1576]={trade={27236,8953,{65535,4}},base=27236,aug2=343,aug2MAX=9,cost=50},--Helios Spats/"Drain" and "Aspir" potency
[1577]={trade={27236,8953,{65535,5}},base=27236,aug2=53,aug2MAX=-9,cost=50},--Helios Spats/Spell Interruption Rate
[1578]={trade={27236,8953,{65535,6}},base=27236,aug2=237,aug2MAX=9,cost=50},--Helios Spats/Occult Acumen
[1579]={trade={27236,8956,{65535,1}},base=27236,aug3=516,aug3MAX=9,cost=50},--Helios Spats/INT
[1580]={trade={27236,8956,{65535,2}},base=27236,aug3=554,aug3MAX=6,cost=50},--Helios Spats/INT and MND
[1581]={trade={27236,8956,{65535,3}},base=27236,aug3=335,aug3MAX=9,cost=50},--Helios Spats/Magic Critical Hit Damage
[1582]={trade={27236,8956,{65535,4}},base=27236,aug3=334,aug3MAX=9,cost=50},--Helios Spats/Magic Burst Damage
[1583]={trade={27236,8956,{65535,5}},base=27236,aug3=9,aug3MAX=49,cost=50},--Helios Spats/MP
[1584]={trade={27236,8956,{65535,6}},base=27236,aug3=517,aug3MAX=9,cost=50},--Helios Spats/MND
[1585]={trade={27236,8959,{65535,1}},base=27236,aug1=96,aug1MAX=29,cost=50},--Helios Spats/Pet: Accuracy and Pet: Ranged Accuracy
[1586]={trade={27236,8959,{65535,2}},base=27236,aug1=97,aug1MAX=29,cost=50},--Helios Spats/Pet: Attack and Pet: Ranged Attack
[1587]={trade={27236,8959,{65535,3}},base=27236,aug1=100,aug1MAX=29,cost=50},--Helios Spats/Pet: Magic Accuracy
[1588]={trade={27236,8959,{65535,4}},base=27236,aug1=101,aug1MAX=29,cost=50},--Helios Spats/Pet: Magic Attack Bonus
[1589]={trade={27236,8959,{65535,5}},base=27236,aug1=99,aug1MAX=29,cost=50},--Helios Spats/Pet: Defense
[1590]={trade={27236,8959,{65535,6}},base=27236,aug1=98,aug1MAX=29,cost=50},--Helios Spats/Pet: Evasion
[1591]={trade={27236,8959,{65535,7}},base=27236,aug1=117,aug1MAX=29,cost=50},--Helios Spats/Pet: Magic Evasion
[1592]={trade={27236,8962,{65535,1}},base=27236,aug2=110,aug2MAX=2,cost=50},--Helios Spats/Pet: Regen
[1593]={trade={27236,8962,{65535,2}},base=27236,aug2=Change,aug2MAX=3,cost=50},--Helios Spats/Pet: Critical Hit Rate
[1594]={trade={27236,8962,{65535,3}},base=27236,aug2=123,aug2MAX=7,cost=50},--Helios Spats/Pet: Double Attack
[1595]={trade={27236,8962,{65535,4}},base=27236,aug2=321,aug2MAX=-3,cost=50},--Helios Spats/Avatar Perpetuation Cost
[1596]={trade={27236,8962,{65535,5}},base=27236,aug2=320,aug2MAX=-4,cost=50},--Helios Spats/Blood Pact Ability Delay
[1597]={trade={27236,8962,{65535,6}},base=27236,aug2=233,aug2MAX=6,cost=50},--Helios Spats/Blood Boon
[1598]={trade={27236,8965,{65535,1}},base=27236,aug3=517,aug3MAX=9,cost=50},--Helios Spats/MND
[1599]={trade={27236,8965,{65535,2}},base=27236,aug3=518,aug3MAX=9,cost=50},--Helios Spats/CHR
[1600]={trade={27236,8965,{65535,3}},base=27236,aug3=555,aug3MAX=6,cost=50},--Helios Spats/MND and CHR
[1601]={trade={27236,8965,{65535,4}},base=27236,aug3=369,aug3MAX=6,cost=50},--Helios Spats/Blood Pact Damage
[1602]={trade={27236,8965,{65535,5}},base=27236,aug3=294,aug3MAX=7,cost=50},--Helios Spats/Summoning Magic Skill
[1603]={trade={27236,8965,{65535,6}},base=27236,aug3=111,aug3MAX=5,cost=50},--Helios Spats/Pet: Haste
[1604]={trade={27406,8932,{65535,1}},base=27406,aug1=23,aug1MAX=9,aug2 = 0, aug2MAX = 0, aug3 = 0, aug3MAX = 0, cost=50},--Helios Boots/Accuracy
[1605]={trade={27406,8932,{65535,2}},base=27406,aug1=25,aug1MAX=9,cost=50},--Helios Boots/Attack
[1606]={trade={27406,8932,{65535,3}},base=27406,aug1=68,aug1MAX=4,cost=50},--Helios Boots/Accuracy and Attack
[1607]={trade={27406,8932,{65535,4}},base=27406,aug1=33,aug1MAX=19,cost=50},--Helios Boots/Defense
[1608]={trade={27406,8935,{65535,1}},base=27406,aug2=115,aug2MAX=2,cost=50},--Helios Boots/Store TP
[1609]={trade={27406,8935,{65535,2}},base=27406,aug2=143,aug2MAX=1,cost=50},--Helios Boots/Double Attack
[1610]={trade={27406,8935,{65535,3}},base=27406,aug2=356,aug2MAX=6,cost=50},--Helios Boots/Cure Potency Received
[1611]={trade={27406,8935,{65535,4}},base=27406,aug2=326,aug2MAX=9,cost=50},--Helios Boots/Weapon Skill Accuracy
[1612]={trade={27406,8935,{65535,5}},base=27406,aug2=330,aug2MAX=4,cost=50},--Helios Boots/Waltz Potency
[1613]={trade={27406,8935,{65535,6}},base=27406,aug2=103,aug2MAX=-3,cost=50},--Helios Boots/Enemy Critical Hit Rate
[1614]={trade={27406,8938,{65535,1}},base=27406,aug3=512,aug3MAX=9,cost=50},--Helios Boots/STR
[1615]={trade={27406,8938,{65535,2}},base=27406,aug3=514,aug3MAX=9,cost=50},--Helios Boots/VIT
[1616]={trade={27406,8938,{65535,3}},base=27406,aug3=551,aug3MAX=6,cost=50},--Helios Boots/STR and VIT
[1617]={trade={27406,8938,{65535,4}},base=27406,aug3=559,aug3MAX=6,cost=50},--Helios Boots/STR and MND
[1618]={trade={27406,8938,{65535,5}},base=27406,aug3=327,aug3MAX=2,cost=50},--Helios Boots/Weapon Skill Damage
[1619]={trade={27406,8938,{65535,6}},base=27406,aug3=1,aug3MAX=49,cost=50},--Helios Boots/HP
[1620]={trade={27406,8941,{65535,1}},base=27406,aug1=27,aug1MAX=9,cost=50},--Helios Boots/Ranged Accuracy
[1621]={trade={27406,8941,{65535,2}},base=27406,aug1=29,aug1MAX=9,cost=50},--Helios Boots/Ranged Attack
[1622]={trade={27406,8941,{65535,3}},base=27406,aug1=69,aug1MAX=4,cost=50},--Helios Boots/Ranged Accuracy and Ranged Attack
[1623]={trade={27406,8941,{65535,4}},base=27406,aug1=31,aug1MAX=19,cost=50},--Helios Boots/Evasion
[1624]={trade={27406,8944,{65535,1}},base=27406,aug2=330,aug2MAX=4,cost=50},--Helios Boots/Waltz Potency
[1625]={trade={27406,8944,{65535,2}},base=27406,aug2=103,aug2MAX=-3,cost=50},--Helios Boots/Enemy Critical Hit Rate
[1626]={trade={27406,8944,{65535,3}},base=27406,aug2=116,aug2MAX=2,cost=50},--Helios Boots/Subtle Blow
[1627]={trade={27406,8944,{65535,4}},base=27406,aug2=49,aug2MAX=1,cost=50},--Helios Boots/Haste
[1628]={trade={27406,8944,{65535,5}},base=27406,aug2=39,aug2MAX=-4,cost=50},--Helios Boots/Enmity
[1629]={trade={27406,8944,{65535,6}},base=27406,aug2=137,aug2MAX=0,cost=50},--Helios Boots/Regen
[1630]={trade={27406,8947,{65535,1}},base=27406,aug3=513,aug3MAX=9,cost=50},--Helios Boots/DEX
[1631]={trade={27406,8947,{65535,2}},base=27406,aug3=515,aug3MAX=9,cost=50},--Helios Boots/AGI
[1632]={trade={27406,8947,{65535,3}},base=27406,aug3=550,aug3MAX=6,cost=50},--Helios Boots/STR and DEX
[1633]={trade={27406,8947,{65535,4}},base=27406,aug3=552,aug3MAX=6,cost=50},--Helios Boots/STR and AGI
[1634]={trade={27406,8947,{65535,5}},base=27406,aug3=211,aug3MAX=4,cost=50},--Helios Boots/Snapshot
[1635]={trade={27406,8947,{65535,6}},base=27406,aug3=332,aug3MAX=4,cost=50},--Helios Boots/Skillchain Damage
[1636]={trade={27406,8950,{65535,1}},base=27406,aug1=35,aug1MAX=24,cost=50},--Helios Boots/Magic Accuracy
[1637]={trade={27406,8950,{65535,2}},base=27406,aug1=133,aug1MAX=24,cost=50},--Helios Boots/Magic Attack Bonus
[1638]={trade={27406,8950,{65535,3}},base=27406,aug1=108,aug1MAX=19,cost=50},--Helios Boots/Magic Accuracy and Magic Attack Bonus
[1639]={trade={27406,8950,{65535,4}},base=27406,aug1=37,aug1MAX=24,cost=50},--Helios Boots/Magic Evasion
[1640]={trade={27406,8953,{65535,1}},base=27406,aug2=57,aug2MAX=7,cost=50},--Helios Boots/Magic Critical Hit Rate
[1641]={trade={27406,8953,{65535,2}},base=27406,aug2=140,aug2MAX=4,cost=50},--Helios Boots/Fast Cast
[1642]={trade={27406,8953,{65535,3}},base=27406,aug2=141,aug2MAX=4,cost=50},--Helios Boots/Conserve MP
[1643]={trade={27406,8953,{65535,4}},base=27406,aug2=343,aug2MAX=9,cost=50},--Helios Boots/"Drain" and "Aspir" potency
[1644]={trade={27406,8953,{65535,5}},base=27406,aug2=53,aug2MAX=-9,cost=50},--Helios Boots/Spell Interruption Rate
[1645]={trade={27406,8953,{65535,6}},base=27406,aug2=237,aug2MAX=9,cost=50},--Helios Boots/Occult Acumen
[1646]={trade={27406,8956,{65535,1}},base=27406,aug3=516,aug3MAX=9,cost=50},--Helios Boots/INT
[1647]={trade={27406,8956,{65535,2}},base=27406,aug3=554,aug3MAX=6,cost=50},--Helios Boots/INT and MND
[1648]={trade={27406,8956,{65535,3}},base=27406,aug3=335,aug3MAX=9,cost=50},--Helios Boots/Magic Critical Hit Damage
[1649]={trade={27406,8956,{65535,4}},base=27406,aug3=334,aug3MAX=9,cost=50},--Helios Boots/Magic Burst Damage
[1650]={trade={27406,8956,{65535,5}},base=27406,aug3=9,aug3MAX=49,cost=50},--Helios Boots/MP
[1651]={trade={27406,8956,{65535,6}},base=27406,aug3=517,aug3MAX=9,cost=50},--Helios Boots/MND
[1652]={trade={27406,8959,{65535,1}},base=27406,aug1=96,aug1MAX=29,cost=50},--Helios Boots/Pet: Accuracy and Pet: Ranged Accuracy
[1653]={trade={27406,8959,{65535,2}},base=27406,aug1=97,aug1MAX=29,cost=50},--Helios Boots/Pet: Attack and Pet: Ranged Attack
[1654]={trade={27406,8959,{65535,3}},base=27406,aug1=100,aug1MAX=29,cost=50},--Helios Boots/Pet: Magic Accuracy
[1655]={trade={27406,8959,{65535,4}},base=27406,aug1=101,aug1MAX=29,cost=50},--Helios Boots/Pet: Magic Attack Bonus
[1656]={trade={27406,8959,{65535,5}},base=27406,aug1=99,aug1MAX=29,cost=50},--Helios Boots/Pet: Defense
[1657]={trade={27406,8959,{65535,6}},base=27406,aug1=98,aug1MAX=29,cost=50},--Helios Boots/Pet: Evasion
[1658]={trade={27406,8959,{65535,7}},base=27406,aug1=117,aug1MAX=29,cost=50},--Helios Boots/Pet: Magic Evasion
[1659]={trade={27406,8962,{65535,1}},base=27406,aug2=110,aug2MAX=2,cost=50},--Helios Boots/Pet: Regen
[1660]={trade={27406,8962,{65535,2}},base=27406,aug2=Change,aug2MAX=3,cost=50},--Helios Boots/Pet: Critical Hit Rate
[1661]={trade={27406,8962,{65535,3}},base=27406,aug2=123,aug2MAX=7,cost=50},--Helios Boots/Pet: Double Attack
[1662]={trade={27406,8962,{65535,4}},base=27406,aug2=321,aug2MAX=-3,cost=50},--Helios Boots/Avatar Perpetuation Cost
[1663]={trade={27406,8962,{65535,5}},base=27406,aug2=320,aug2MAX=-4,cost=50},--Helios Boots/Blood Pact Ability Delay
[1664]={trade={27406,8962,{65535,6}},base=27406,aug2=233,aug2MAX=6,cost=50},--Helios Boots/Blood Boon
[1665]={trade={27406,8965,{65535,1}},base=27406,aug3=517,aug3MAX=9,cost=50},--Helios Boots/MND
[1666]={trade={27406,8965,{65535,2}},base=27406,aug3=518,aug3MAX=9,cost=50},--Helios Boots/CHR
[1667]={trade={27406,8965,{65535,3}},base=27406,aug3=555,aug3MAX=6,cost=50},--Helios Boots/MND and CHR
[1668]={trade={27406,8965,{65535,4}},base=27406,aug3=369,aug3MAX=6,cost=50},--Helios Boots/Blood Pact Damage
[1669]={trade={27406,8965,{65535,5}},base=27406,aug3=294,aug3MAX=7,cost=50},--Helios Boots/Summoning Magic Skill
[1670]={trade={27406,8965,{65535,6}},base=27406,aug3=111,aug3MAX=5,cost=50},--Helios Boots/Pet: Haste
[1671]={trade={20616,8932,{65535,1}},base=20616,aug1=23,aug1MAX=19,cost=50},--Ipetam /Accuracy
[1672]={trade={20616,8932,{65535,2}},base=20616,aug1=25,aug1MAX=19,cost=50},--Ipetam /Attack
[1673]={trade={20616,8932,{65535,3}},base=20616,aug1=68,aug1MAX=14,cost=50},--Ipetam /Accuracy and Attack
[1674]={trade={20616,8932,{65535,4}},base=20616,aug1=33,aug1MAX=14,cost=50},--Ipetam /Defense
[1675]={trade={20616,8932,{65535,5}},base=20616,aug1=31,aug1MAX=14,cost=50},--Ipetam /Evasion
[1676]={trade={20616,8932,{65535,6}},base=20616,aug1=37,aug1MAX=14,cost=50},--Ipetam /Magic Evasion
[1677]={trade={20616,8941,{65535,1}},base=20616,aug1=27,aug1MAX=19,cost=50},--Ipetam /Ranged Accuracy
[1678]={trade={20616,8941,{65535,2}},base=20616,aug1=29,aug1MAX=19,cost=50},--Ipetam /Ranged Attack
[1679]={trade={20616,8941,{65535,3}},base=20616,aug1=69,aug1MAX=14,cost=50},--Ipetam /Ranged Accuracy and Ranged Attack
[1680]={trade={20616,8941,{65535,4}},base=20616,aug1=33,aug1MAX=14,cost=50},--Ipetam /Defense
[1681]={trade={20616,8941,{65535,5}},base=20616,aug1=31,aug1MAX=14,cost=50},--Ipetam /Evasion
[1682]={trade={20616,8941,{65535,6}},base=20616,aug1=37,aug1MAX=14,cost=50},--Ipetam /Magic Evasion
[1683]={trade={20616,8950,{65535,1}},base=20616,aug1=35,aug1MAX=19,cost=50},--Ipetam /Magic Accuracy
[1684]={trade={20616,8950,{65535,2}},base=20616,aug1=133,aug1MAX=19,cost=50},--Ipetam /Magic Attack Bonus
[1685]={trade={20616,8950,{65535,3}},base=20616,aug1=108,aug1MAX=14,cost=50},--Ipetam /Magic Accuracy and Magic Attack Bonus
[1686]={trade={20616,8950,{65535,4}},base=20616,aug1=33,aug1MAX=14,cost=50},--Ipetam /Defense
[1687]={trade={20616,8950,{65535,5}},base=20616,aug1=31,aug1MAX=14,cost=50},--Ipetam /Evasion
[1688]={trade={20616,8950,{65535,6}},base=20616,aug1=37,aug1MAX=14,cost=50},--Ipetam /Magic Evasion
[1689]={trade={20616,8959,{65535,1}},base=20616,aug1=96,aug1MAX=24,cost=50},--Ipetam /Pet: Accuracy and Pet: Ranged Accuracy
[1690]={trade={20616,8959,{65535,2}},base=20616,aug1=97,aug1MAX=24,cost=50},--Ipetam /Pet: Attack and Pet: Ranged Attack
[1691]={trade={20616,8959,{65535,3}},base=20616,aug1=100,aug1MAX=24,cost=50},--Ipetam /Pet: Magic Accuracy
[1692]={trade={20616,8959,{65535,4}},base=20616,aug1=101,aug1MAX=24,cost=50},--Ipetam /Pet: Magic Attack Bonus
[1693]={trade={20616,8959,{65535,5}},base=20616,aug1=99,aug1MAX=24,cost=50},--Ipetam /Pet: Defense
[1694]={trade={20616,8959,{65535,6}},base=20616,aug1=98,aug1MAX=24,cost=50},--Ipetam /Pet: Evasion
[1695]={trade={20616,8959,{65535,7}},base=20616,aug1=117,aug1MAX=24,cost=50},--Ipetam /Pet: Magic Evasion
[1696]={trade={20809,8932,{65535,1}},base=20809,aug1=23,aug1MAX=19,cost=50},--Kumbhakarna /Accuracy
[1697]={trade={20809,8932,{65535,2}},base=20809,aug1=25,aug1MAX=19,cost=50},--Kumbhakarna /Attack
[1698]={trade={20809,8932,{65535,3}},base=20809,aug1=68,aug1MAX=14,cost=50},--Kumbhakarna /Accuracy and Attack
[1699]={trade={20809,8932,{65535,4}},base=20809,aug1=33,aug1MAX=14,cost=50},--Kumbhakarna /Defense
[1700]={trade={20809,8932,{65535,5}},base=20809,aug1=31,aug1MAX=14,cost=50},--Kumbhakarna /Evasion
[1701]={trade={20809,8932,{65535,6}},base=20809,aug1=37,aug1MAX=14,cost=50},--Kumbhakarna /Magic Evasion
[1702]={trade={20809,8941,{65535,1}},base=20809,aug1=27,aug1MAX=19,cost=50},--Kumbhakarna /Ranged Accuracy
[1703]={trade={20809,8941,{65535,2}},base=20809,aug1=29,aug1MAX=19,cost=50},--Kumbhakarna /Ranged Attack
[1704]={trade={20809,8941,{65535,3}},base=20809,aug1=69,aug1MAX=14,cost=50},--Kumbhakarna /Ranged Accuracy and Ranged Attack
[1705]={trade={20809,8941,{65535,4}},base=20809,aug1=33,aug1MAX=14,cost=50},--Kumbhakarna /Defense
[1706]={trade={20809,8941,{65535,5}},base=20809,aug1=31,aug1MAX=14,cost=50},--Kumbhakarna /Evasion
[1707]={trade={20809,8941,{65535,6}},base=20809,aug1=37,aug1MAX=14,cost=50},--Kumbhakarna /Magic Evasion
[1708]={trade={20809,8950,{65535,1}},base=20809,aug1=35,aug1MAX=19,cost=50},--Kumbhakarna /Magic Accuracy
[1709]={trade={20809,8950,{65535,2}},base=20809,aug1=133,aug1MAX=19,cost=50},--Kumbhakarna /Magic Attack Bonus
[1710]={trade={20809,8950,{65535,3}},base=20809,aug1=108,aug1MAX=14,cost=50},--Kumbhakarna /Magic Accuracy and Magic Attack Bonus
[1711]={trade={20809,8950,{65535,4}},base=20809,aug1=33,aug1MAX=14,cost=50},--Kumbhakarna /Defense
[1712]={trade={20809,8950,{65535,5}},base=20809,aug1=31,aug1MAX=14,cost=50},--Kumbhakarna /Evasion
[1713]={trade={20809,8950,{65535,6}},base=20809,aug1=37,aug1MAX=14,cost=50},--Kumbhakarna /Magic Evasion
[1714]={trade={20809,8959,{65535,1}},base=20809,aug1=96,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Accuracy and Pet: Ranged Accuracy
[1715]={trade={20809,8959,{65535,2}},base=20809,aug1=97,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Attack and Pet: Ranged Attack
[1716]={trade={20809,8959,{65535,3}},base=20809,aug1=100,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Magic Accuracy
[1717]={trade={20809,8959,{65535,4}},base=20809,aug1=101,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Magic Attack Bonus
[1718]={trade={20809,8959,{65535,5}},base=20809,aug1=99,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Defense
[1719]={trade={20809,8959,{65535,6}},base=20809,aug1=98,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Evasion
[1720]={trade={20809,8959,{65535,7}},base=20809,aug1=117,aug1MAX=24,cost=50},--Kumbhakarna /Pet: Magic Evasion
[1721]={trade={20718,8932,{65535,1}},base=20718,aug1=23,aug1MAX=19,cost=50},--Claidheamh Soluis/Accuracy
[1722]={trade={20718,8932,{65535,2}},base=20718,aug1=25,aug1MAX=19,cost=50},--Claidheamh Soluis/Attack
[1723]={trade={20718,8932,{65535,3}},base=20718,aug1=68,aug1MAX=14,cost=50},--Claidheamh Soluis/Accuracy and Attack
[1724]={trade={20718,8932,{65535,4}},base=20718,aug1=33,aug1MAX=14,cost=50},--Claidheamh Soluis/Defense
[1725]={trade={20718,8932,{65535,5}},base=20718,aug1=31,aug1MAX=14,cost=50},--Claidheamh Soluis/Evasion
[1726]={trade={20718,8932,{65535,6}},base=20718,aug1=37,aug1MAX=14,cost=50},--Claidheamh Soluis/Magic Evasion
[1727]={trade={20718,8941,{65535,1}},base=20718,aug1=27,aug1MAX=19,cost=50},--Claidheamh Soluis/Ranged Accuracy
[1728]={trade={20718,8941,{65535,2}},base=20718,aug1=29,aug1MAX=19,cost=50},--Claidheamh Soluis/Ranged Attack
[1729]={trade={20718,8941,{65535,3}},base=20718,aug1=69,aug1MAX=14,cost=50},--Claidheamh Soluis/Ranged Accuracy and Ranged Attack
[1730]={trade={20718,8941,{65535,4}},base=20718,aug1=33,aug1MAX=14,cost=50},--Claidheamh Soluis/Defense
[1731]={trade={20718,8941,{65535,5}},base=20718,aug1=31,aug1MAX=14,cost=50},--Claidheamh Soluis/Evasion
[1732]={trade={20718,8941,{65535,6}},base=20718,aug1=37,aug1MAX=14,cost=50},--Claidheamh Soluis/Magic Evasion
[1733]={trade={20718,8950,{65535,1}},base=20718,aug1=35,aug1MAX=19,cost=50},--Claidheamh Soluis/Magic Accuracy
[1734]={trade={20718,8950,{65535,2}},base=20718,aug1=133,aug1MAX=19,cost=50},--Claidheamh Soluis/Magic Attack Bonus
[1735]={trade={20718,8950,{65535,3}},base=20718,aug1=108,aug1MAX=14,cost=50},--Claidheamh Soluis/Magic Accuracy and Magic Attack Bonus
[1736]={trade={20718,8950,{65535,4}},base=20718,aug1=33,aug1MAX=14,cost=50},--Claidheamh Soluis/Defense
[1737]={trade={20718,8950,{65535,5}},base=20718,aug1=31,aug1MAX=14,cost=50},--Claidheamh Soluis/Evasion
[1738]={trade={20718,8950,{65535,6}},base=20718,aug1=37,aug1MAX=14,cost=50},--Claidheamh Soluis/Magic Evasion
[1739]={trade={20718,8959,{65535,1}},base=20718,aug1=96,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Accuracy and Pet: Ranged Accuracy
[1740]={trade={20718,8959,{65535,2}},base=20718,aug1=97,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Attack and Pet: Ranged Attack
[1741]={trade={20718,8959,{65535,3}},base=20718,aug1=100,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Magic Accuracy
[1742]={trade={20718,8959,{65535,4}},base=20718,aug1=101,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Magic Attack Bonus
[1743]={trade={20718,8959,{65535,5}},base=20718,aug1=99,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Defense
[1744]={trade={20718,8959,{65535,6}},base=20718,aug1=98,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Evasion
[1745]={trade={20718,8959,{65535,7}},base=20718,aug1=117,aug1MAX=24,cost=50},--Claidheamh Soluis/Pet: Magic Evasion
[1746]={trade={21105,8932,{65535,1}},base=21105,aug1=23,aug1MAX=19,cost=50},--Nehushtan /Accuracy
[1747]={trade={21105,8932,{65535,2}},base=21105,aug1=25,aug1MAX=19,cost=50},--Nehushtan /Attack
[1748]={trade={21105,8932,{65535,3}},base=21105,aug1=68,aug1MAX=14,cost=50},--Nehushtan /Accuracy and Attack
[1749]={trade={21105,8932,{65535,4}},base=21105,aug1=33,aug1MAX=14,cost=50},--Nehushtan /Defense
[1750]={trade={21105,8932,{65535,5}},base=21105,aug1=31,aug1MAX=14,cost=50},--Nehushtan /Evasion
[1751]={trade={21105,8932,{65535,6}},base=21105,aug1=37,aug1MAX=14,cost=50},--Nehushtan /Magic Evasion
[1752]={trade={21105,8941,{65535,1}},base=21105,aug1=27,aug1MAX=19,cost=50},--Nehushtan /Ranged Accuracy
[1753]={trade={21105,8941,{65535,2}},base=21105,aug1=29,aug1MAX=19,cost=50},--Nehushtan /Ranged Attack
[1754]={trade={21105,8941,{65535,3}},base=21105,aug1=69,aug1MAX=14,cost=50},--Nehushtan /Ranged Accuracy and Ranged Attack
[1755]={trade={21105,8941,{65535,4}},base=21105,aug1=33,aug1MAX=14,cost=50},--Nehushtan /Defense
[1756]={trade={21105,8941,{65535,5}},base=21105,aug1=31,aug1MAX=14,cost=50},--Nehushtan /Evasion
[1757]={trade={21105,8941,{65535,6}},base=21105,aug1=37,aug1MAX=14,cost=50},--Nehushtan /Magic Evasion
[1758]={trade={21105,8950,{65535,1}},base=21105,aug1=35,aug1MAX=19,cost=50},--Nehushtan /Magic Accuracy
[1759]={trade={21105,8950,{65535,2}},base=21105,aug1=133,aug1MAX=19,cost=50},--Nehushtan /Magic Attack Bonus
[1760]={trade={21105,8950,{65535,3}},base=21105,aug1=108,aug1MAX=14,cost=50},--Nehushtan /Magic Accuracy and Magic Attack Bonus
[1761]={trade={21105,8950,{65535,4}},base=21105,aug1=33,aug1MAX=14,cost=50},--Nehushtan /Defense
[1762]={trade={21105,8950,{65535,5}},base=21105,aug1=31,aug1MAX=14,cost=50},--Nehushtan /Evasion
[1763]={trade={21105,8950,{65535,6}},base=21105,aug1=37,aug1MAX=14,cost=50},--Nehushtan /Magic Evasion
[1764]={trade={21105,8959,{65535,1}},base=21105,aug1=96,aug1MAX=24,cost=50},--Nehushtan /Pet: Accuracy and Pet: Ranged Accuracy
[1765]={trade={21105,8959,{65535,2}},base=21105,aug1=97,aug1MAX=24,cost=50},--Nehushtan /Pet: Attack and Pet: Ranged Attack
[1766]={trade={21105,8959,{65535,3}},base=21105,aug1=100,aug1MAX=24,cost=50},--Nehushtan /Pet: Magic Accuracy
[1767]={trade={21105,8959,{65535,4}},base=21105,aug1=101,aug1MAX=24,cost=50},--Nehushtan /Pet: Magic Attack Bonus
[1768]={trade={21105,8959,{65535,5}},base=21105,aug1=99,aug1MAX=24,cost=50},--Nehushtan /Pet: Defense
[1769]={trade={21105,8959,{65535,6}},base=21105,aug1=98,aug1MAX=24,cost=50},--Nehushtan /Pet: Evasion
[1770]={trade={21105,8959,{65535,7}},base=21105,aug1=117,aug1MAX=24,cost=50},--Nehushtan /Pet: Magic Evasion
[1771]={trade={20989,8932,{65535,1}},base=20989,aug1=23,aug1MAX=19,cost=50},--Izuna /Accuracy
[1772]={trade={20989,8932,{65535,2}},base=20989,aug1=25,aug1MAX=19,cost=50},--Izuna /Attack
[1773]={trade={20989,8932,{65535,3}},base=20989,aug1=68,aug1MAX=14,cost=50},--Izuna /Accuracy and Attack
[1774]={trade={20989,8932,{65535,4}},base=20989,aug1=33,aug1MAX=14,cost=50},--Izuna /Defense
[1775]={trade={20989,8932,{65535,5}},base=20989,aug1=31,aug1MAX=14,cost=50},--Izuna /Evasion
[1776]={trade={20989,8932,{65535,6}},base=20989,aug1=37,aug1MAX=14,cost=50},--Izuna /Magic Evasion
[1777]={trade={20989,8941,{65535,1}},base=20989,aug1=27,aug1MAX=19,cost=50},--Izuna /Ranged Accuracy
[1778]={trade={20989,8941,{65535,2}},base=20989,aug1=29,aug1MAX=19,cost=50},--Izuna /Ranged Attack
[1779]={trade={20989,8941,{65535,3}},base=20989,aug1=69,aug1MAX=14,cost=50},--Izuna /Ranged Accuracy and Ranged Attack
[1780]={trade={20989,8941,{65535,4}},base=20989,aug1=33,aug1MAX=14,cost=50},--Izuna /Defense
[1781]={trade={20989,8941,{65535,5}},base=20989,aug1=31,aug1MAX=14,cost=50},--Izuna /Evasion
[1782]={trade={20989,8941,{65535,6}},base=20989,aug1=37,aug1MAX=14,cost=50},--Izuna /Magic Evasion
[1783]={trade={20989,8950,{65535,1}},base=20989,aug1=35,aug1MAX=19,cost=50},--Izuna /Magic Accuracy
[1784]={trade={20989,8950,{65535,2}},base=20989,aug1=133,aug1MAX=19,cost=50},--Izuna /Magic Attack Bonus
[1785]={trade={20989,8950,{65535,3}},base=20989,aug1=108,aug1MAX=14,cost=50},--Izuna /Magic Accuracy and Magic Attack Bonus
[1786]={trade={20989,8950,{65535,4}},base=20989,aug1=33,aug1MAX=14,cost=50},--Izuna /Defense
[1787]={trade={20989,8950,{65535,5}},base=20989,aug1=31,aug1MAX=14,cost=50},--Izuna /Evasion
[1788]={trade={20989,8950,{65535,6}},base=20989,aug1=37,aug1MAX=14,cost=50},--Izuna /Magic Evasion
[1789]={trade={20989,8959,{65535,1}},base=20989,aug1=96,aug1MAX=24,cost=50},--Izuna /Pet: Accuracy and Pet: Ranged Accuracy
[1790]={trade={20989,8959,{65535,2}},base=20989,aug1=97,aug1MAX=24,cost=50},--Izuna /Pet: Attack and Pet: Ranged Attack
[1791]={trade={20989,8959,{65535,3}},base=20989,aug1=100,aug1MAX=24,cost=50},--Izuna /Pet: Magic Accuracy
[1792]={trade={20989,8959,{65535,4}},base=20989,aug1=101,aug1MAX=24,cost=50},--Izuna /Pet: Magic Attack Bonus
[1793]={trade={20989,8959,{65535,5}},base=20989,aug1=99,aug1MAX=24,cost=50},--Izuna /Pet: Defense
[1794]={trade={20989,8959,{65535,6}},base=20989,aug1=98,aug1MAX=24,cost=50},--Izuna /Pet: Evasion
[1795]={trade={20989,8959,{65535,7}},base=20989,aug1=117,aug1MAX=24,cost=50},--Izuna /Pet: Magic Evasion
[1796]={trade={20530,8932,{65535,1}},base=20530,aug1=23,aug1MAX=24,cost=50},--Ohrmazd /Accuracy
[1797]={trade={20530,8932,{65535,2}},base=20530,aug1=25,aug1MAX=24,cost=50},--Ohrmazd /Attack
[1798]={trade={20530,8932,{65535,3}},base=20530,aug1=68,aug1MAX=19,cost=50},--Ohrmazd /Accuracy and Attack
[1799]={trade={20530,8932,{65535,4}},base=20530,aug1=33,aug1MAX=19,cost=50},--Ohrmazd /Defense
[1800]={trade={20530,8932,{65535,5}},base=20530,aug1=31,aug1MAX=19,cost=50},--Ohrmazd /Evasion
[1801]={trade={20530,8932,{65535,6}},base=20530,aug1=37,aug1MAX=19,cost=50},--Ohrmazd /Magic Evasion
[1802]={trade={20530,8941,{65535,1}},base=20530,aug1=27,aug1MAX=24,cost=50},--Ohrmazd /Ranged Accuracy
[1803]={trade={20530,8941,{65535,2}},base=20530,aug1=29,aug1MAX=24,cost=50},--Ohrmazd /Ranged Attack
[1804]={trade={20530,8941,{65535,3}},base=20530,aug1=69,aug1MAX=19,cost=50},--Ohrmazd /Ranged Accuracy and Ranged Attack
[1805]={trade={20530,8941,{65535,4}},base=20530,aug1=33,aug1MAX=19,cost=50},--Ohrmazd /Defense
[1806]={trade={20530,8941,{65535,5}},base=20530,aug1=31,aug1MAX=19,cost=50},--Ohrmazd /Evasion
[1807]={trade={20530,8941,{65535,6}},base=20530,aug1=37,aug1MAX=19,cost=50},--Ohrmazd /Magic Evasion
[1808]={trade={20530,8950,{65535,1}},base=20530,aug1=35,aug1MAX=24,cost=50},--Ohrmazd /Magic Accuracy
[1809]={trade={20530,8950,{65535,2}},base=20530,aug1=133,aug1MAX=24,cost=50},--Ohrmazd /Magic Attack Bonus
[1810]={trade={20530,8950,{65535,3}},base=20530,aug1=108,aug1MAX=19,cost=50},--Ohrmazd /Magic Accuracy and Magic Attack Bonus
[1811]={trade={20530,8950,{65535,4}},base=20530,aug1=33,aug1MAX=19,cost=50},--Ohrmazd /Defense
[1812]={trade={20530,8950,{65535,5}},base=20530,aug1=31,aug1MAX=19,cost=50},--Ohrmazd /Evasion
[1813]={trade={20530,8950,{65535,6}},base=20530,aug1=37,aug1MAX=19,cost=50},--Ohrmazd /Magic Evasion
[1814]={trade={20530,8959,{65535,1}},base=20530,aug1=96,aug1MAX=24,cost=50},--Ohrmazd /Pet: Accuracy and Pet: Ranged Accuracy
[1815]={trade={20530,8959,{65535,2}},base=20530,aug1=97,aug1MAX=24,cost=50},--Ohrmazd /Pet: Attack and Pet: Ranged Attack
[1816]={trade={20530,8959,{65535,3}},base=20530,aug1=100,aug1MAX=24,cost=50},--Ohrmazd /Pet: Magic Accuracy
[1817]={trade={20530,8959,{65535,4}},base=20530,aug1=101,aug1MAX=24,cost=50},--Ohrmazd /Pet: Magic Attack Bonus
[1818]={trade={20530,8959,{65535,5}},base=20530,aug1=99,aug1MAX=24,cost=50},--Ohrmazd /Pet: Defense
[1819]={trade={20530,8959,{65535,6}},base=20530,aug1=98,aug1MAX=24,cost=50},--Ohrmazd /Pet: Evasion
[1820]={trade={20530,8959,{65535,7}},base=20530,aug1=117,aug1MAX=24,cost=50},--Ohrmazd /Pet: Magic Evasion
[1821]={trade={20759,8932,{65535,1}},base=20759,aug1=23,aug1MAX=24,cost=50},--Macbain /Accuracy
[1822]={trade={20759,8932,{65535,2}},base=20759,aug1=25,aug1MAX=24,cost=50},--Macbain /Attack
[1823]={trade={20759,8932,{65535,3}},base=20759,aug1=68,aug1MAX=19,cost=50},--Macbain /Accuracy and Attack
[1824]={trade={20759,8932,{65535,4}},base=20759,aug1=33,aug1MAX=19,cost=50},--Macbain /Defense
[1825]={trade={20759,8932,{65535,5}},base=20759,aug1=31,aug1MAX=19,cost=50},--Macbain /Evasion
[1826]={trade={20759,8932,{65535,6}},base=20759,aug1=37,aug1MAX=19,cost=50},--Macbain /Magic Evasion
[1827]={trade={20759,8941,{65535,1}},base=20759,aug1=27,aug1MAX=24,cost=50},--Macbain /Ranged Accuracy
[1828]={trade={20759,8941,{65535,2}},base=20759,aug1=29,aug1MAX=24,cost=50},--Macbain /Ranged Attack
[1829]={trade={20759,8941,{65535,3}},base=20759,aug1=69,aug1MAX=19,cost=50},--Macbain /Ranged Accuracy and Ranged Attack
[1830]={trade={20759,8941,{65535,4}},base=20759,aug1=33,aug1MAX=19,cost=50},--Macbain /Defense
[1831]={trade={20759,8941,{65535,5}},base=20759,aug1=31,aug1MAX=19,cost=50},--Macbain /Evasion
[1832]={trade={20759,8941,{65535,6}},base=20759,aug1=37,aug1MAX=19,cost=50},--Macbain /Magic Evasion
[1833]={trade={20759,8950,{65535,1}},base=20759,aug1=35,aug1MAX=24,cost=50},--Macbain /Magic Accuracy
[1834]={trade={20759,8950,{65535,2}},base=20759,aug1=133,aug1MAX=24,cost=50},--Macbain /Magic Attack Bonus
[1835]={trade={20759,8950,{65535,3}},base=20759,aug1=108,aug1MAX=19,cost=50},--Macbain /Magic Accuracy and Magic Attack Bonus
[1836]={trade={20759,8950,{65535,4}},base=20759,aug1=33,aug1MAX=19,cost=50},--Macbain /Defense
[1837]={trade={20759,8950,{65535,5}},base=20759,aug1=31,aug1MAX=19,cost=50},--Macbain /Evasion
[1838]={trade={20759,8950,{65535,6}},base=20759,aug1=37,aug1MAX=19,cost=50},--Macbain /Magic Evasion
[1839]={trade={20759,8959,{65535,1}},base=20759,aug1=96,aug1MAX=24,cost=50},--Macbain /Pet: Accuracy and Pet: Ranged Accuracy
[1840]={trade={20759,8959,{65535,2}},base=20759,aug1=97,aug1MAX=24,cost=50},--Macbain /Pet: Attack and Pet: Ranged Attack
[1841]={trade={20759,8959,{65535,3}},base=20759,aug1=100,aug1MAX=24,cost=50},--Macbain /Pet: Magic Accuracy
[1842]={trade={20759,8959,{65535,4}},base=20759,aug1=101,aug1MAX=24,cost=50},--Macbain /Pet: Magic Attack Bonus
[1843]={trade={20759,8959,{65535,5}},base=20759,aug1=99,aug1MAX=24,cost=50},--Macbain /Pet: Defense
[1844]={trade={20759,8959,{65535,6}},base=20759,aug1=98,aug1MAX=24,cost=50},--Macbain /Pet: Evasion
[1845]={trade={20759,8959,{65535,7}},base=20759,aug1=117,aug1MAX=24,cost=50},--Macbain /Pet: Magic Evasion
[1846]={trade={20901,8932,{65535,1}},base=20901,aug1=23,aug1MAX=24,cost=50},--Inanna /Accuracy
[1847]={trade={20901,8932,{65535,2}},base=20901,aug1=25,aug1MAX=24,cost=50},--Inanna /Attack
[1848]={trade={20901,8932,{65535,3}},base=20901,aug1=68,aug1MAX=19,cost=50},--Inanna /Accuracy and Attack
[1849]={trade={20901,8932,{65535,4}},base=20901,aug1=33,aug1MAX=19,cost=50},--Inanna /Defense
[1850]={trade={20901,8932,{65535,5}},base=20901,aug1=31,aug1MAX=19,cost=50},--Inanna /Evasion
[1851]={trade={20901,8932,{65535,6}},base=20901,aug1=37,aug1MAX=19,cost=50},--Inanna /Magic Evasion
[1852]={trade={20901,8941,{65535,1}},base=20901,aug1=27,aug1MAX=24,cost=50},--Inanna /Ranged Accuracy
[1853]={trade={20901,8941,{65535,2}},base=20901,aug1=29,aug1MAX=24,cost=50},--Inanna /Ranged Attack
[1854]={trade={20901,8941,{65535,3}},base=20901,aug1=69,aug1MAX=19,cost=50},--Inanna /Ranged Accuracy and Ranged Attack
[1855]={trade={20901,8941,{65535,4}},base=20901,aug1=33,aug1MAX=19,cost=50},--Inanna /Defense
[1856]={trade={20901,8941,{65535,5}},base=20901,aug1=31,aug1MAX=19,cost=50},--Inanna /Evasion
[1857]={trade={20901,8941,{65535,6}},base=20901,aug1=37,aug1MAX=19,cost=50},--Inanna /Magic Evasion
[1858]={trade={20901,8950,{65535,1}},base=20901,aug1=35,aug1MAX=24,cost=50},--Inanna /Magic Accuracy
[1859]={trade={20901,8950,{65535,2}},base=20901,aug1=133,aug1MAX=24,cost=50},--Inanna /Magic Attack Bonus
[1860]={trade={20901,8950,{65535,3}},base=20901,aug1=108,aug1MAX=19,cost=50},--Inanna /Magic Accuracy and Magic Attack Bonus
[1861]={trade={20901,8950,{65535,4}},base=20901,aug1=33,aug1MAX=19,cost=50},--Inanna /Defense
[1862]={trade={20901,8950,{65535,5}},base=20901,aug1=31,aug1MAX=19,cost=50},--Inanna /Evasion
[1863]={trade={20901,8950,{65535,6}},base=20901,aug1=37,aug1MAX=19,cost=50},--Inanna /Magic Evasion
[1864]={trade={20901,8959,{65535,1}},base=20901,aug1=96,aug1MAX=24,cost=50},--Inanna /Pet: Accuracy and Pet: Ranged Accuracy
[1865]={trade={20901,8959,{65535,2}},base=20901,aug1=97,aug1MAX=24,cost=50},--Inanna /Pet: Attack and Pet: Ranged Attack
[1866]={trade={20901,8959,{65535,3}},base=20901,aug1=100,aug1MAX=24,cost=50},--Inanna /Pet: Magic Accuracy
[1867]={trade={20901,8959,{65535,4}},base=20901,aug1=101,aug1MAX=24,cost=50},--Inanna /Pet: Magic Attack Bonus
[1868]={trade={20901,8959,{65535,5}},base=20901,aug1=99,aug1MAX=24,cost=50},--Inanna /Pet: Defense
[1869]={trade={20901,8959,{65535,6}},base=20901,aug1=98,aug1MAX=24,cost=50},--Inanna /Pet: Evasion
[1870]={trade={20901,8959,{65535,7}},base=20901,aug1=117,aug1MAX=24,cost=50},--Inanna /Pet: Magic Evasion
[1871]={trade={20857,8932,{65535,1}},base=20857,aug1=23,aug1MAX=24,cost=50},--Svarga /Accuracy
[1872]={trade={20857,8932,{65535,2}},base=20857,aug1=25,aug1MAX=24,cost=50},--Svarga /Attack
[1873]={trade={20857,8932,{65535,3}},base=20857,aug1=68,aug1MAX=19,cost=50},--Svarga /Accuracy and Attack
[1874]={trade={20857,8932,{65535,4}},base=20857,aug1=33,aug1MAX=19,cost=50},--Svarga /Defense
[1875]={trade={20857,8932,{65535,5}},base=20857,aug1=31,aug1MAX=19,cost=50},--Svarga /Evasion
[1876]={trade={20857,8932,{65535,6}},base=20857,aug1=37,aug1MAX=19,cost=50},--Svarga /Magic Evasion
[1877]={trade={20857,8941,{65535,1}},base=20857,aug1=27,aug1MAX=24,cost=50},--Svarga /Ranged Accuracy
[1878]={trade={20857,8941,{65535,2}},base=20857,aug1=29,aug1MAX=24,cost=50},--Svarga /Ranged Attack
[1879]={trade={20857,8941,{65535,3}},base=20857,aug1=69,aug1MAX=19,cost=50},--Svarga /Ranged Accuracy and Ranged Attack
[1880]={trade={20857,8941,{65535,4}},base=20857,aug1=33,aug1MAX=19,cost=50},--Svarga /Defense
[1881]={trade={20857,8941,{65535,5}},base=20857,aug1=31,aug1MAX=19,cost=50},--Svarga /Evasion
[1882]={trade={20857,8941,{65535,6}},base=20857,aug1=37,aug1MAX=19,cost=50},--Svarga /Magic Evasion
[1883]={trade={20857,8950,{65535,1}},base=20857,aug1=35,aug1MAX=24,cost=50},--Svarga /Magic Accuracy
[1884]={trade={20857,8950,{65535,2}},base=20857,aug1=133,aug1MAX=24,cost=50},--Svarga /Magic Attack Bonus
[1885]={trade={20857,8950,{65535,3}},base=20857,aug1=108,aug1MAX=19,cost=50},--Svarga /Magic Accuracy and Magic Attack Bonus
[1886]={trade={20857,8950,{65535,4}},base=20857,aug1=33,aug1MAX=19,cost=50},--Svarga /Defense
[1887]={trade={20857,8950,{65535,5}},base=20857,aug1=31,aug1MAX=19,cost=50},--Svarga /Evasion
[1888]={trade={20857,8950,{65535,6}},base=20857,aug1=37,aug1MAX=19,cost=50},--Svarga /Magic Evasion
[1889]={trade={20857,8959,{65535,1}},base=20857,aug1=96,aug1MAX=24,cost=50},--Svarga /Pet: Accuracy and Pet: Ranged Accuracy
[1890]={trade={20857,8959,{65535,2}},base=20857,aug1=97,aug1MAX=24,cost=50},--Svarga /Pet: Attack and Pet: Ranged Attack
[1891]={trade={20857,8959,{65535,3}},base=20857,aug1=100,aug1MAX=24,cost=50},--Svarga /Pet: Magic Accuracy
[1892]={trade={20857,8959,{65535,4}},base=20857,aug1=101,aug1MAX=24,cost=50},--Svarga /Pet: Magic Attack Bonus
[1893]={trade={20857,8959,{65535,5}},base=20857,aug1=99,aug1MAX=24,cost=50},--Svarga /Pet: Defense
[1894]={trade={20857,8959,{65535,6}},base=20857,aug1=98,aug1MAX=24,cost=50},--Svarga /Pet: Evasion
[1895]={trade={20857,8959,{65535,7}},base=20857,aug1=117,aug1MAX=24,cost=50},--Svarga /Pet: Magic Evasion
[1896]={trade={21169,8932,{65535,1}},base=21169,aug1=23,aug1MAX=24,cost=50},--Keraunos /Accuracy
[1897]={trade={21169,8932,{65535,2}},base=21169,aug1=25,aug1MAX=24,cost=50},--Keraunos /Attack
[1898]={trade={21169,8932,{65535,3}},base=21169,aug1=68,aug1MAX=19,cost=50},--Keraunos /Accuracy and Attack
[1899]={trade={21169,8932,{65535,4}},base=21169,aug1=33,aug1MAX=19,cost=50},--Keraunos /Defense
[1900]={trade={21169,8932,{65535,5}},base=21169,aug1=31,aug1MAX=19,cost=50},--Keraunos /Evasion
[1901]={trade={21169,8932,{65535,6}},base=21169,aug1=37,aug1MAX=19,cost=50},--Keraunos /Magic Evasion
[1902]={trade={21169,8941,{65535,1}},base=21169,aug1=27,aug1MAX=24,cost=50},--Keraunos /Ranged Accuracy
[1903]={trade={21169,8941,{65535,2}},base=21169,aug1=29,aug1MAX=24,cost=50},--Keraunos /Ranged Attack
[1904]={trade={21169,8941,{65535,3}},base=21169,aug1=69,aug1MAX=19,cost=50},--Keraunos /Ranged Accuracy and Ranged Attack
[1905]={trade={21169,8941,{65535,4}},base=21169,aug1=33,aug1MAX=19,cost=50},--Keraunos /Defense
[1906]={trade={21169,8941,{65535,5}},base=21169,aug1=31,aug1MAX=19,cost=50},--Keraunos /Evasion
[1907]={trade={21169,8941,{65535,6}},base=21169,aug1=37,aug1MAX=19,cost=50},--Keraunos /Magic Evasion
[1908]={trade={21169,8950,{65535,1}},base=21169,aug1=35,aug1MAX=24,cost=50},--Keraunos /Magic Accuracy
[1909]={trade={21169,8950,{65535,2}},base=21169,aug1=133,aug1MAX=24,cost=50},--Keraunos /Magic Attack Bonus
[1910]={trade={21169,8950,{65535,3}},base=21169,aug1=108,aug1MAX=19,cost=50},--Keraunos /Magic Accuracy and Magic Attack Bonus
[1911]={trade={21169,8950,{65535,4}},base=21169,aug1=33,aug1MAX=19,cost=50},--Keraunos /Defense
[1912]={trade={21169,8950,{65535,5}},base=21169,aug1=31,aug1MAX=19,cost=50},--Keraunos /Evasion
[1913]={trade={21169,8950,{65535,6}},base=21169,aug1=37,aug1MAX=19,cost=50},--Keraunos /Magic Evasion
[1914]={trade={21169,8959,{65535,1}},base=21169,aug1=96,aug1MAX=24,cost=50},--Keraunos /Pet: Accuracy and Pet: Ranged Accuracy
[1915]={trade={21169,8959,{65535,2}},base=21169,aug1=97,aug1MAX=24,cost=50},--Keraunos /Pet: Attack and Pet: Ranged Attack
[1916]={trade={21169,8959,{65535,3}},base=21169,aug1=100,aug1MAX=24,cost=50},--Keraunos /Pet: Magic Accuracy
[1917]={trade={21169,8959,{65535,4}},base=21169,aug1=101,aug1MAX=24,cost=50},--Keraunos /Pet: Magic Attack Bonus
[1918]={trade={21169,8959,{65535,5}},base=21169,aug1=99,aug1MAX=24,cost=50},--Keraunos /Pet: Defense
[1919]={trade={21169,8959,{65535,6}},base=21169,aug1=98,aug1MAX=24,cost=50},--Keraunos /Pet: Evasion
[1920]={trade={21169,8959,{65535,7}},base=21169,aug1=117,aug1MAX=24,cost=50},--Keraunos /Pet: Magic Evasion
[1921]={trade={20946,8932,{65535,1}},base=20946,aug1=23,aug1MAX=24,cost=50},--Olyndicus /Accuracy
[1922]={trade={20946,8932,{65535,2}},base=20946,aug1=25,aug1MAX=24,cost=50},--Olyndicus /Attack
[1923]={trade={20946,8932,{65535,3}},base=20946,aug1=68,aug1MAX=19,cost=50},--Olyndicus /Accuracy and Attack
[1924]={trade={20946,8932,{65535,4}},base=20946,aug1=33,aug1MAX=19,cost=50},--Olyndicus /Defense
[1925]={trade={20946,8932,{65535,5}},base=20946,aug1=31,aug1MAX=19,cost=50},--Olyndicus /Evasion
[1926]={trade={20946,8932,{65535,6}},base=20946,aug1=37,aug1MAX=19,cost=50},--Olyndicus /Magic Evasion
[1927]={trade={20946,8941,{65535,1}},base=20946,aug1=27,aug1MAX=24,cost=50},--Olyndicus /Ranged Accuracy
[1928]={trade={20946,8941,{65535,2}},base=20946,aug1=29,aug1MAX=24,cost=50},--Olyndicus /Ranged Attack
[1929]={trade={20946,8941,{65535,3}},base=20946,aug1=69,aug1MAX=19,cost=50},--Olyndicus /Ranged Accuracy and Ranged Attack
[1930]={trade={20946,8941,{65535,4}},base=20946,aug1=33,aug1MAX=19,cost=50},--Olyndicus /Defense
[1931]={trade={20946,8941,{65535,5}},base=20946,aug1=31,aug1MAX=19,cost=50},--Olyndicus /Evasion
[1932]={trade={20946,8941,{65535,6}},base=20946,aug1=37,aug1MAX=19,cost=50},--Olyndicus /Magic Evasion
[1933]={trade={20946,8950,{65535,1}},base=20946,aug1=35,aug1MAX=24,cost=50},--Olyndicus /Magic Accuracy
[1934]={trade={20946,8950,{65535,2}},base=20946,aug1=133,aug1MAX=24,cost=50},--Olyndicus /Magic Attack Bonus
[1935]={trade={20946,8950,{65535,3}},base=20946,aug1=108,aug1MAX=19,cost=50},--Olyndicus /Magic Accuracy and Magic Attack Bonus
[1936]={trade={20946,8950,{65535,4}},base=20946,aug1=33,aug1MAX=19,cost=50},--Olyndicus /Defense
[1937]={trade={20946,8950,{65535,5}},base=20946,aug1=31,aug1MAX=19,cost=50},--Olyndicus /Evasion
[1938]={trade={20946,8950,{65535,6}},base=20946,aug1=37,aug1MAX=19,cost=50},--Olyndicus /Magic Evasion
[1939]={trade={20946,8959,{65535,1}},base=20946,aug1=96,aug1MAX=24,cost=50},--Olyndicus /Pet: Accuracy and Pet: Ranged Accuracy
[1940]={trade={20946,8959,{65535,2}},base=20946,aug1=97,aug1MAX=24,cost=50},--Olyndicus /Pet: Attack and Pet: Ranged Attack
[1941]={trade={20946,8959,{65535,3}},base=20946,aug1=100,aug1MAX=24,cost=50},--Olyndicus /Pet: Magic Accuracy
[1942]={trade={20946,8959,{65535,4}},base=20946,aug1=101,aug1MAX=24,cost=50},--Olyndicus /Pet: Magic Attack Bonus
[1943]={trade={20946,8959,{65535,5}},base=20946,aug1=99,aug1MAX=24,cost=50},--Olyndicus /Pet: Defense
[1944]={trade={20946,8959,{65535,6}},base=20946,aug1=98,aug1MAX=24,cost=50},--Olyndicus /Pet: Evasion
[1945]={trade={20946,8959,{65535,7}},base=20946,aug1=117,aug1MAX=24,cost=50},--Olyndicus /Pet: Magic Evasion
[1946]={trade={21037,8932,{65535,1}},base=21037,aug1=23,aug1MAX=24,cost=50},--Nenekirimaru /Accuracy
[1947]={trade={21037,8932,{65535,2}},base=21037,aug1=25,aug1MAX=24,cost=50},--Nenekirimaru /Attack
[1948]={trade={21037,8932,{65535,3}},base=21037,aug1=68,aug1MAX=19,cost=50},--Nenekirimaru /Accuracy and Attack
[1949]={trade={21037,8932,{65535,4}},base=21037,aug1=33,aug1MAX=19,cost=50},--Nenekirimaru /Defense
[1950]={trade={21037,8932,{65535,5}},base=21037,aug1=31,aug1MAX=19,cost=50},--Nenekirimaru /Evasion
[1951]={trade={21037,8932,{65535,6}},base=21037,aug1=37,aug1MAX=19,cost=50},--Nenekirimaru /Magic Evasion
[1952]={trade={21037,8941,{65535,1}},base=21037,aug1=27,aug1MAX=24,cost=50},--Nenekirimaru /Ranged Accuracy
[1953]={trade={21037,8941,{65535,2}},base=21037,aug1=29,aug1MAX=24,cost=50},--Nenekirimaru /Ranged Attack
[1954]={trade={21037,8941,{65535,3}},base=21037,aug1=69,aug1MAX=19,cost=50},--Nenekirimaru /Ranged Accuracy and Ranged Attack
[1955]={trade={21037,8941,{65535,4}},base=21037,aug1=33,aug1MAX=19,cost=50},--Nenekirimaru /Defense
[1956]={trade={21037,8941,{65535,5}},base=21037,aug1=31,aug1MAX=19,cost=50},--Nenekirimaru /Evasion
[1957]={trade={21037,8941,{65535,6}},base=21037,aug1=37,aug1MAX=19,cost=50},--Nenekirimaru /Magic Evasion
[1958]={trade={21037,8950,{65535,1}},base=21037,aug1=35,aug1MAX=24,cost=50},--Nenekirimaru /Magic Accuracy
[1959]={trade={21037,8950,{65535,2}},base=21037,aug1=133,aug1MAX=24,cost=50},--Nenekirimaru /Magic Attack Bonus
[1960]={trade={21037,8950,{65535,3}},base=21037,aug1=108,aug1MAX=19,cost=50},--Nenekirimaru /Magic Accuracy and Magic Attack Bonus
[1961]={trade={21037,8950,{65535,4}},base=21037,aug1=33,aug1MAX=19,cost=50},--Nenekirimaru /Defense
[1962]={trade={21037,8950,{65535,5}},base=21037,aug1=31,aug1MAX=19,cost=50},--Nenekirimaru /Evasion
[1963]={trade={21037,8950,{65535,6}},base=21037,aug1=37,aug1MAX=19,cost=50},--Nenekirimaru /Magic Evasion
[1964]={trade={21037,8959,{65535,1}},base=21037,aug1=96,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Accuracy and Pet: Ranged Accuracy
[1965]={trade={21037,8959,{65535,2}},base=21037,aug1=97,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Attack and Pet: Ranged Attack
[1966]={trade={21037,8959,{65535,3}},base=21037,aug1=100,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Magic Accuracy
[1967]={trade={21037,8959,{65535,4}},base=21037,aug1=101,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Magic Attack Bonus
[1968]={trade={21037,8959,{65535,5}},base=21037,aug1=99,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Defense
[1969]={trade={21037,8959,{65535,6}},base=21037,aug1=98,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Evasion
[1970]={trade={21037,8959,{65535,7}},base=21037,aug1=117,aug1MAX=24,cost=50},--Nenekirimaru /Pet: Magic Evasion
[1971]={trade={21224,8932,{65535,1}},base=21224,aug1=23,aug1MAX=24,cost=50},--Phaosphaelia /Accuracy
[1972]={trade={21224,8932,{65535,2}},base=21224,aug1=25,aug1MAX=24,cost=50},--Phaosphaelia /Attack
[1973]={trade={21224,8932,{65535,3}},base=21224,aug1=68,aug1MAX=19,cost=50},--Phaosphaelia /Accuracy and Attack
[1974]={trade={21224,8932,{65535,4}},base=21224,aug1=33,aug1MAX=19,cost=50},--Phaosphaelia /Defense
[1975]={trade={21224,8932,{65535,5}},base=21224,aug1=31,aug1MAX=19,cost=50},--Phaosphaelia /Evasion
[1976]={trade={21224,8932,{65535,6}},base=21224,aug1=37,aug1MAX=19,cost=50},--Phaosphaelia /Magic Evasion
[1977]={trade={21224,8941,{65535,1}},base=21224,aug1=27,aug1MAX=24,cost=50},--Phaosphaelia /Ranged Accuracy
[1978]={trade={21224,8941,{65535,2}},base=21224,aug1=29,aug1MAX=24,cost=50},--Phaosphaelia /Ranged Attack
[1979]={trade={21224,8941,{65535,3}},base=21224,aug1=69,aug1MAX=19,cost=50},--Phaosphaelia /Ranged Accuracy and Ranged Attack
[1980]={trade={21224,8941,{65535,4}},base=21224,aug1=33,aug1MAX=19,cost=50},--Phaosphaelia /Defense
[1981]={trade={21224,8941,{65535,5}},base=21224,aug1=31,aug1MAX=19,cost=50},--Phaosphaelia /Evasion
[1982]={trade={21224,8941,{65535,6}},base=21224,aug1=37,aug1MAX=19,cost=50},--Phaosphaelia /Magic Evasion
[1983]={trade={21224,8950,{65535,1}},base=21224,aug1=35,aug1MAX=24,cost=50},--Phaosphaelia /Magic Accuracy
[1984]={trade={21224,8950,{65535,2}},base=21224,aug1=133,aug1MAX=24,cost=50},--Phaosphaelia /Magic Attack Bonus
[1985]={trade={21224,8950,{65535,3}},base=21224,aug1=108,aug1MAX=19,cost=50},--Phaosphaelia /Magic Accuracy and Magic Attack Bonus
[1986]={trade={21224,8950,{65535,4}},base=21224,aug1=33,aug1MAX=19,cost=50},--Phaosphaelia /Defense
[1987]={trade={21224,8950,{65535,5}},base=21224,aug1=31,aug1MAX=19,cost=50},--Phaosphaelia /Evasion
[1988]={trade={21224,8950,{65535,6}},base=21224,aug1=37,aug1MAX=19,cost=50},--Phaosphaelia /Magic Evasion
[1989]={trade={21224,8959,{65535,1}},base=21224,aug1=96,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Accuracy and Pet: Ranged Accuracy
[1990]={trade={21224,8959,{65535,2}},base=21224,aug1=97,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Attack and Pet: Ranged Attack
[1991]={trade={21224,8959,{65535,3}},base=21224,aug1=100,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Magic Accuracy
[1992]={trade={21224,8959,{65535,4}},base=21224,aug1=101,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Magic Attack Bonus
[1993]={trade={21224,8959,{65535,5}},base=21224,aug1=99,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Defense
[1994]={trade={21224,8959,{65535,6}},base=21224,aug1=98,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Evasion
[1995]={trade={21224,8959,{65535,7}},base=21224,aug1=117,aug1MAX=24,cost=50},--Phaosphaelia /Pet: Magic Evasion
[1996]={trade={21476,8932,{65535,1}},base=21476,aug1=23,aug1MAX=24,cost=50},--Doomsday /Accuracy
[1997]={trade={21476,8932,{65535,2}},base=21476,aug1=25,aug1MAX=24,cost=50},--Doomsday /Attack
[1998]={trade={21476,8932,{65535,3}},base=21476,aug1=68,aug1MAX=19,cost=50},--Doomsday /Accuracy and Attack
[1999]={trade={21476,8932,{65535,4}},base=21476,aug1=33,aug1MAX=19,cost=50},--Doomsday /Defense
[2000]={trade={21476,8932,{65535,5}},base=21476,aug1=31,aug1MAX=19,cost=50},--Doomsday /Evasion
[2001]={trade={21476,8932,{65535,6}},base=21476,aug1=37,aug1MAX=19,cost=50},--Doomsday /Magic Evasion
[2002]={trade={21476,8941,{65535,1}},base=21476,aug1=27,aug1MAX=24,cost=50},--Doomsday /Ranged Accuracy
[2003]={trade={21476,8941,{65535,2}},base=21476,aug1=29,aug1MAX=24,cost=50},--Doomsday /Ranged Attack
[2004]={trade={21476,8941,{65535,3}},base=21476,aug1=69,aug1MAX=19,cost=50},--Doomsday /Ranged Accuracy and Ranged Attack
[2005]={trade={21476,8941,{65535,4}},base=21476,aug1=33,aug1MAX=19,cost=50},--Doomsday /Defense
[2006]={trade={21476,8941,{65535,5}},base=21476,aug1=31,aug1MAX=19,cost=50},--Doomsday /Evasion
[2007]={trade={21476,8941,{65535,6}},base=21476,aug1=37,aug1MAX=19,cost=50},--Doomsday /Magic Evasion
[2008]={trade={21476,8950,{65535,1}},base=21476,aug1=35,aug1MAX=24,cost=50},--Doomsday /Magic Accuracy
[2009]={trade={21476,8950,{65535,2}},base=21476,aug1=133,aug1MAX=24,cost=50},--Doomsday /Magic Attack Bonus
[2010]={trade={21476,8950,{65535,3}},base=21476,aug1=108,aug1MAX=19,cost=50},--Doomsday /Magic Accuracy and Magic Attack Bonus
[2011]={trade={21476,8950,{65535,4}},base=21476,aug1=33,aug1MAX=19,cost=50},--Doomsday /Defense
[2012]={trade={21476,8950,{65535,5}},base=21476,aug1=31,aug1MAX=19,cost=50},--Doomsday /Evasion
[2013]={trade={21476,8950,{65535,6}},base=21476,aug1=37,aug1MAX=19,cost=50},--Doomsday /Magic Evasion
[2014]={trade={21476,8959,{65535,1}},base=21476,aug1=96,aug1MAX=24,cost=50},--Doomsday /Pet: Accuracy and Pet: Ranged Accuracy
[2015]={trade={21476,8959,{65535,2}},base=21476,aug1=97,aug1MAX=24,cost=50},--Doomsday /Pet: Attack and Pet: Ranged Attack
[2016]={trade={21476,8959,{65535,3}},base=21476,aug1=100,aug1MAX=24,cost=50},--Doomsday /Pet: Magic Accuracy
[2017]={trade={21476,8959,{65535,4}},base=21476,aug1=101,aug1MAX=24,cost=50},--Doomsday /Pet: Magic Attack Bonus
[2018]={trade={21476,8959,{65535,5}},base=21476,aug1=99,aug1MAX=24,cost=50},--Doomsday /Pet: Defense
[2019]={trade={21476,8959,{65535,6}},base=21476,aug1=98,aug1MAX=24,cost=50},--Doomsday /Pet: Evasion
[2020]={trade={21476,8959,{65535,7}},base=21476,aug1=117,aug1MAX=24,cost=50},--Doomsday /Pet: Magic Evasion
[2021]={trade={21404,8932,{65535,1}},base=21404,aug1=23,aug1MAX=19,cost=50},--Linos/Accuracy
[2022]={trade={21404,8932,{65535,2}},base=21404,aug1=25,aug1MAX=19,cost=50},--Linos/Attack
[2023]={trade={21404,8932,{65535,3}},base=21404,aug1=35,aug1MAX=14,cost=50},--Linos/Magic Accuracy
[2024]={trade={21404,8932,{65535,4}},base=21404,aug1=133,aug1MAX=14,cost=50},--Linos/Magic Attack Bonus
[2025]={trade={21404,8932,{65535,5}},base=21404,aug1=33,aug1MAX=14,cost=50},--Linos/Defense
[2026]={trade={21404,8932,{65535,6}},base=21404,aug1=31,aug1MAX=14,cost=50},--Linos/Evasion
[2027]={trade={21404,8932,{65535,7}},base=21404,aug1=37,aug1MAX=14,cost=50},--Linos/Magic Evasion
[2028]={trade={21404,8932,{65535,8}},base=21404,aug1=68,aug1MAX=14,cost=50},--Linos/Accuracy / Attack
[2029]={trade={21404,8941,{65535,1}},base=21404,aug1=23,aug1MAX=14,cost=50},--Linos/Accuracy
[2030]={trade={21404,8941,{65535,2}},base=21404,aug1=25,aug1MAX=14,cost=50},--Linos/Attack
[2031]={trade={21404,8941,{65535,3}},base=21404,aug1=35,aug1MAX=14,cost=50},--Linos/Magic Accuracy
[2032]={trade={21404,8941,{65535,4}},base=21404,aug1=133,aug1MAX=14,cost=50},--Linos/Magic Attack Bonus
[2033]={trade={21404,8941,{65535,5}},base=21404,aug1=33,aug1MAX=14,cost=50},--Linos/Defense
[2034]={trade={21404,8941,{65535,6}},base=21404,aug1=31,aug1MAX=14,cost=50},--Linos/Evasion
[2035]={trade={21404,8941,{65535,7}},base=21404,aug1=37,aug1MAX=14,cost=50},--Linos/Magic Evasion
[2036]={trade={21404,8950,{65535,1}},base=21404,aug1=23,aug1MAX=14,cost=50},--Linos/Accuracy
[2037]={trade={21404,8950,{65535,2}},base=21404,aug1=25,aug1MAX=14,cost=50},--Linos/Attack
[2038]={trade={21404,8950,{65535,3}},base=21404,aug1=35,aug1MAX=19,cost=50},--Linos/Magic Accuracy
[2039]={trade={21404,8950,{65535,4}},base=21404,aug1=133,aug1MAX=19,cost=50},--Linos/Magic Attack Bonus
[2040]={trade={21404,8950,{65535,5}},base=21404,aug1=33,aug1MAX=14,cost=50},--Linos/Defense
[2041]={trade={21404,8950,{65535,6}},base=21404,aug1=31,aug1MAX=14,cost=50},--Linos/Evasion
[2042]={trade={21404,8950,{65535,7}},base=21404,aug1=37,aug1MAX=14,cost=50},--Linos/Magic Evasion
[2043]={trade={21404,8950,{65535,8}},base=21404,aug1=67,aug1MAX=1,cost=50},--Linos/All Songs
[2044]={trade={21404,8959,{65535,1}},base=21404,aug1=23,aug1MAX=14,cost=50},--Linos/Accuracy
[2045]={trade={21404,8959,{65535,2}},base=21404,aug1=25,aug1MAX=14,cost=50},--Linos/Attack
[2046]={trade={21404,8959,{65535,3}},base=21404,aug1=35,aug1MAX=14,cost=50},--Linos/Magic Accuracy
[2047]={trade={21404,8959,{65535,4}},base=21404,aug1=133,aug1MAX=14,cost=50},--Linos/Magic Attack Bonus
[2048]={trade={21404,8959,{65535,5}},base=21404,aug1=33,aug1MAX=14,cost=50},--Linos/Defense
[2049]={trade={21404,8959,{65535,6}},base=21404,aug1=31,aug1MAX=14,cost=50},--Linos/Evasion
[2050]={trade={21404,8959,{65535,7}},base=21404,aug1=37,aug1MAX=14,cost=50},--Linos/Magic Evasion
[2051]={trade={27627,8932,{65535,1}},base=27627,aug1=23,aug1MAX=19,cost=50},--Svalinn/Accuracy
[2052]={trade={27627,8932,{65535,2}},base=27627,aug1=25,aug1MAX=19,cost=50},--Svalinn/Attack
[2053]={trade={27627,8932,{65535,3}},base=27627,aug1=68,aug1MAX=14,cost=50},--Svalinn/Accuracy and Attack
[2054]={trade={27627,8932,{65535,4}},base=27627,aug1=27,aug1MAX=14,cost=50},--Svalinn/Ranged Accuracy
[2055]={trade={27627,8932,{65535,5}},base=27627,aug1=29,aug1MAX=14,cost=50},--Svalinn/Ranged Attack
[2056]={trade={27627,8932,{65535,6}},base=27627,aug1=35,aug1MAX=14,cost=50},--Svalinn/Magic Accuracy
[2057]={trade={27627,8932,{65535,7}},base=27627,aug1=133,aug1MAX=14,cost=50},--Svalinn/Magic Attack Bonus
[2058]={trade={27627,8932,{65535,8}},base=27627,aug1=33,aug1MAX=14,cost=50},--Svalinn/Defense
[2059]={trade={27627,8932,{65535,9}},base=27627,aug1=31,aug1MAX=14,cost=50},--Svalinn/Evasion
[2060]={trade={27627,8932,{65535,10}},base=27627,aug1=37,aug1MAX=14,cost=50},--Svalinn/Magic Evasion
[2061]={trade={27627,8932,{65535,11}},base=27627,aug1=363,aug1MAX=9,cost=50},--Svalinn/Chance of Successful Block
[2062]={trade={27627,8941,{65535,1}},base=27627,aug1=23,aug1MAX=14,cost=50},--Svalinn/Accuracy
[2063]={trade={27627,8941,{65535,2}},base=27627,aug1=25,aug1MAX=14,cost=50},--Svalinn/Attack
[2064]={trade={27627,8941,{65535,3}},base=27627,aug1=27,aug1MAX=19,cost=50},--Svalinn/Ranged Accuracy
[2065]={trade={27627,8941,{65535,4}},base=27627,aug1=29,aug1MAX=19,cost=50},--Svalinn/Ranged Attack
[2066]={trade={27627,8941,{65535,5}},base=27627,aug1=69,aug1MAX=14,cost=50},--Svalinn/Ranged Accuracy and Ranged Attack
[2067]={trade={27627,8941,{65535,6}},base=27627,aug1=35,aug1MAX=14,cost=50},--Svalinn/Magic Accuracy
[2068]={trade={27627,8941,{65535,7}},base=27627,aug1=133,aug1MAX=14,cost=50},--Svalinn/Magic Attack Bonus
[2069]={trade={27627,8941,{65535,8}},base=27627,aug1=33,aug1MAX=14,cost=50},--Svalinn/Defense
[2070]={trade={27627,8941,{65535,9}},base=27627,aug1=31,aug1MAX=14,cost=50},--Svalinn/Evasion
[2071]={trade={27627,8941,{65535,10}},base=27627,aug1=37,aug1MAX=14,cost=50},--Svalinn/Magic Evasion
[2072]={trade={27627,8950,{65535,1}},base=27627,aug1=23,aug1MAX=14,cost=50},--Svalinn/Accuracy
[2073]={trade={27627,8950,{65535,2}},base=27627,aug1=25,aug1MAX=14,cost=50},--Svalinn/Attack
[2074]={trade={27627,8950,{65535,3}},base=27627,aug1=27,aug1MAX=14,cost=50},--Svalinn/Ranged Accuracy
[2075]={trade={27627,8950,{65535,4}},base=27627,aug1=29,aug1MAX=14,cost=50},--Svalinn/Ranged Attack
[2076]={trade={27627,8950,{65535,5}},base=27627,aug1=35,aug1MAX=19,cost=50},--Svalinn/Magic Accuracy
[2077]={trade={27627,8950,{65535,6}},base=27627,aug1=133,aug1MAX=19,cost=50},--Svalinn/Magic Attack Bonus
[2078]={trade={27627,8950,{65535,7}},base=27627,aug1=108,aug1MAX=14,cost=50},--Svalinn/Magic Accuracy and Magic Attack Bonus
[2079]={trade={27627,8950,{65535,8}},base=27627,aug1=33,aug1MAX=14,cost=50},--Svalinn/Defense
[2080]={trade={27627,8950,{65535,9}},base=27627,aug1=31,aug1MAX=14,cost=50},--Svalinn/Evasion
[2081]={trade={27627,8950,{65535,10}},base=27627,aug1=37,aug1MAX=14,cost=50},--Svalinn/Magic Evasion
[2082]={trade={27627,8959,{65535,1}},base=27627,aug1=23,aug1MAX=14,cost=50},--Svalinn/Accuracy
[2083]={trade={27627,8959,{65535,2}},base=27627,aug1=25,aug1MAX=14,cost=50},--Svalinn/Attack
[2084]={trade={27627,8959,{65535,3}},base=27627,aug1=27,aug1MAX=14,cost=50},--Svalinn/Ranged Accuracy
[2085]={trade={27627,8959,{65535,4}},base=27627,aug1=29,aug1MAX=14,cost=50},--Svalinn/Ranged Attack
[2086]={trade={27627,8959,{65535,5}},base=27627,aug1=35,aug1MAX=14,cost=50},--Svalinn/Magic Accuracy
[2087]={trade={27627,8959,{65535,6}},base=27627,aug1=133,aug1MAX=14,cost=50},--Svalinn/Magic Attack Bonus
[2088]={trade={27627,8959,{65535,7}},base=27627,aug1=33,aug1MAX=14,cost=50},--Svalinn/Defense
[2089]={trade={27627,8959,{65535,8}},base=27627,aug1=31,aug1MAX=14,cost=50},--Svalinn/Evasion
[2090]={trade={27627,8959,{65535,9}},base=27627,aug1=37,aug1MAX=14,cost=50},--Svalinn/Magic Evasion
[2091]={trade={20616,8935,{65535,1}},base=20616,aug2=54,aug2MAX=-4,cost=50},--Ipetam /Physical Damage Taken
[2092]={trade={20616,8935,{65535,2}},base=20616,aug2=143,aug2MAX=3,cost=50},--Ipetam /Double Attack
[2093]={trade={20616,8935,{65535,3}},base=20616,aug2=49,aug2MAX=2,cost=50},--Ipetam /Haste
[2094]={trade={20616,8935,{65535,4}},base=20616,aug2=330,aug2MAX=5,cost=50},--Ipetam /Waltz Potency
[2095]={trade={20616,8935,{65535,5}},base=20616,aug2=115,aug2MAX=5,cost=50},--Ipetam /Store TP
[2096]={trade={20616,8935,{65535,6}},base=20616,aug2=327,aug2MAX=3,cost=50},--Ipetam /Weapon Skill Damage
[2097]={trade={20616,8935,{65535,7}},base=20616,aug2=41,aug2MAX=3,cost=50},--Ipetam /Critical Hit Rate
[2098]={trade={20616,8944,{65535,1}},base=20616,aug2=115,aug2MAX=5,cost=50},--Ipetam /Store TP
[2099]={trade={20616,8944,{65535,2}},base=20616,aug2=327,aug2MAX=3,cost=50},--Ipetam /Weapon Skill Damage
[2100]={trade={20616,8944,{65535,3}},base=20616,aug2=41,aug2MAX=3,cost=50},--Ipetam /Critical Hit Rate
[2101]={trade={20616,8944,{65535,4}},base=20616,aug2=328,aug2MAX=4,cost=50},--Ipetam /Critical Hit Damage
[2102]={trade={20616,8944,{65535,5}},base=20616,aug2=116,aug2MAX=3,cost=50},--Ipetam /Subtle Blow
[2103]={trade={20616,8944,{65535,6}},base=20616,aug2=56,aug2MAX=-4,cost=50},--Ipetam /Breath Damage Taken
[2104]={trade={20616,8944,{65535,7}},base=20616,aug2=211,aug2MAX=4,cost=50},--Ipetam /Snapshot
[2105]={trade={20616,8944,{65535,8}},base=20616,aug2=139,aug2MAX=4,cost=50},--Ipetam /Rapid Shot
[2106]={trade={20616,8953,{65535,1}},base=20616,aug2=55,aug2MAX=-4,cost=50},--Ipetam /Magic Damage Taken
[2107]={trade={20616,8953,{65535,2}},base=20616,aug2=140,aug2MAX=5,cost=50},--Ipetam /Fast Cast
[2108]={trade={20616,8953,{65535,3}},base=20616,aug2=138,aug2MAX=0,cost=50},--Ipetam /Refresh
[2109]={trade={20616,8953,{65535,4}},base=20616,aug2=329,aug2MAX=14,cost=50},--Ipetam /Cure Potency
[2110]={trade={20616,8953,{65535,5}},base=20616,aug2=323,aug2MAX=-7,cost=50},--Ipetam /Cure Spellcasting Time
[2111]={trade={20616,8953,{65535,6}},base=20616,aug2=322,aug2MAX=-4,cost=50},--Ipetam /Song Spellcasting Time
[2112]={trade={20616,8953,{65535,7}},base=20616,aug2=141,aug2MAX=6,cost=50},--Ipetam /Conserve MP
[2113]={trade={20616,8953,{65535,8}},base=20616,aug2=334,aug2MAX=5,cost=50},--Ipetam /Magic Burst Damage
[2114]={trade={20616,8962,{65535,1}},base=20616,aug2=118,aug2MAX=-4,cost=50},--Ipetam /Pet: Physical Damage Taken
[2115]={trade={20616,8962,{65535,2}},base=20616,aug2=112,aug2MAX=-3,cost=50},--Ipetam /Pet: Damage Taken
[2116]={trade={20616,8962,{65535,3}},base=20616,aug2=110,aug2MAX=2,cost=50},--Ipetam /Pet: Regen
[2117]={trade={20616,8962,{65535,4}},base=20616,aug2=111,aug2MAX=2,cost=50},--Ipetam /Pet: Haste
[2118]={trade={20616,8962,{65535,5}},base=20616,aug2=Change,aug2MAX=3,cost=50},--Ipetam /Pet: Critical Hit Rate
[2119]={trade={20616,8962,{65535,6}},base=20616,aug2=Change,aug2MAX=3,cost=50},--Ipetam /Pet: Double Attack and Critical Hit Rate
[2120]={trade={20616,8962,{65535,7}},base=20616,aug2=341,aug2MAX=6,cost=50},--Ipetam /Repair Potency
[2121]={trade={20616,8962,{65535,8}},base=20616,aug2=321,aug2MAX=-3,cost=50},--Ipetam /Avatar Perpetuation Cost
[2122]={trade={20809,8935,{65535,1}},base=20809,aug2=54,aug2MAX=-4,cost=50},--Kumbhakarna /Physical Damage Taken
[2123]={trade={20809,8935,{65535,2}},base=20809,aug2=143,aug2MAX=3,cost=50},--Kumbhakarna /Double Attack
[2124]={trade={20809,8935,{65535,3}},base=20809,aug2=49,aug2MAX=2,cost=50},--Kumbhakarna /Haste
[2125]={trade={20809,8935,{65535,4}},base=20809,aug2=330,aug2MAX=5,cost=50},--Kumbhakarna /Waltz Potency
[2126]={trade={20809,8935,{65535,5}},base=20809,aug2=115,aug2MAX=5,cost=50},--Kumbhakarna /Store TP
[2127]={trade={20809,8935,{65535,6}},base=20809,aug2=327,aug2MAX=3,cost=50},--Kumbhakarna /Weapon Skill Damage
[2128]={trade={20809,8935,{65535,7}},base=20809,aug2=41,aug2MAX=3,cost=50},--Kumbhakarna /Critical Hit Rate
[2129]={trade={20809,8944,{65535,1}},base=20809,aug2=115,aug2MAX=5,cost=50},--Kumbhakarna /Store TP
[2130]={trade={20809,8944,{65535,2}},base=20809,aug2=327,aug2MAX=3,cost=50},--Kumbhakarna /Weapon Skill Damage
[2131]={trade={20809,8944,{65535,3}},base=20809,aug2=41,aug2MAX=3,cost=50},--Kumbhakarna /Critical Hit Rate
[2132]={trade={20809,8944,{65535,4}},base=20809,aug2=328,aug2MAX=4,cost=50},--Kumbhakarna /Critical Hit Damage
[2133]={trade={20809,8944,{65535,5}},base=20809,aug2=116,aug2MAX=3,cost=50},--Kumbhakarna /Subtle Blow
[2134]={trade={20809,8944,{65535,6}},base=20809,aug2=56,aug2MAX=-4,cost=50},--Kumbhakarna /Breath Damage Taken
[2135]={trade={20809,8944,{65535,7}},base=20809,aug2=211,aug2MAX=4,cost=50},--Kumbhakarna /Snapshot
[2136]={trade={20809,8944,{65535,8}},base=20809,aug2=139,aug2MAX=4,cost=50},--Kumbhakarna /Rapid Shot
[2137]={trade={20809,8953,{65535,1}},base=20809,aug2=55,aug2MAX=-4,cost=50},--Kumbhakarna /Magic Damage Taken
[2138]={trade={20809,8953,{65535,2}},base=20809,aug2=140,aug2MAX=5,cost=50},--Kumbhakarna /Fast Cast
[2139]={trade={20809,8953,{65535,3}},base=20809,aug2=138,aug2MAX=0,cost=50},--Kumbhakarna /Refresh
[2140]={trade={20809,8953,{65535,4}},base=20809,aug2=329,aug2MAX=14,cost=50},--Kumbhakarna /Cure Potency
[2141]={trade={20809,8953,{65535,5}},base=20809,aug2=323,aug2MAX=-7,cost=50},--Kumbhakarna /Cure Spellcasting Time
[2142]={trade={20809,8953,{65535,6}},base=20809,aug2=322,aug2MAX=-4,cost=50},--Kumbhakarna /Song Spellcasting Time
[2143]={trade={20809,8953,{65535,7}},base=20809,aug2=141,aug2MAX=6,cost=50},--Kumbhakarna /Conserve MP
[2144]={trade={20809,8953,{65535,8}},base=20809,aug2=334,aug2MAX=5,cost=50},--Kumbhakarna /Magic Burst Damage
[2145]={trade={20809,8962,{65535,1}},base=20809,aug2=118,aug2MAX=-4,cost=50},--Kumbhakarna /Pet: Physical Damage Taken
[2146]={trade={20809,8962,{65535,2}},base=20809,aug2=112,aug2MAX=-3,cost=50},--Kumbhakarna /Pet: Damage Taken
[2147]={trade={20809,8962,{65535,3}},base=20809,aug2=110,aug2MAX=2,cost=50},--Kumbhakarna /Pet: Regen
[2148]={trade={20809,8962,{65535,4}},base=20809,aug2=111,aug2MAX=2,cost=50},--Kumbhakarna /Pet: Haste
[2149]={trade={20809,8962,{65535,5}},base=20809,aug2=Change,aug2MAX=3,cost=50},--Kumbhakarna /Pet: Critical Hit Rate
[2150]={trade={20809,8962,{65535,6}},base=20809,aug2=Change,aug2MAX=3,cost=50},--Kumbhakarna /Pet: Double Attack and Critical Hit Rate
[2151]={trade={20809,8962,{65535,7}},base=20809,aug2=341,aug2MAX=6,cost=50},--Kumbhakarna /Repair Potency
[2152]={trade={20809,8962,{65535,8}},base=20809,aug2=321,aug2MAX=-3,cost=50},--Kumbhakarna /Avatar Perpetuation Cost
[2153]={trade={20718,8935,{65535,1}},base=20718,aug2=54,aug2MAX=-4,cost=50},--Claidheamh Soluis/Physical Damage Taken
[2154]={trade={20718,8935,{65535,2}},base=20718,aug2=143,aug2MAX=3,cost=50},--Claidheamh Soluis/Double Attack
[2155]={trade={20718,8935,{65535,3}},base=20718,aug2=49,aug2MAX=2,cost=50},--Claidheamh Soluis/Haste
[2156]={trade={20718,8935,{65535,4}},base=20718,aug2=330,aug2MAX=5,cost=50},--Claidheamh Soluis/Waltz Potency
[2157]={trade={20718,8935,{65535,5}},base=20718,aug2=115,aug2MAX=5,cost=50},--Claidheamh Soluis/Store TP
[2158]={trade={20718,8935,{65535,6}},base=20718,aug2=327,aug2MAX=3,cost=50},--Claidheamh Soluis/Weapon Skill Damage
[2159]={trade={20718,8935,{65535,7}},base=20718,aug2=41,aug2MAX=3,cost=50},--Claidheamh Soluis/Critical Hit Rate
[2160]={trade={20718,8944,{65535,1}},base=20718,aug2=115,aug2MAX=5,cost=50},--Claidheamh Soluis/Store TP
[2161]={trade={20718,8944,{65535,2}},base=20718,aug2=327,aug2MAX=3,cost=50},--Claidheamh Soluis/Weapon Skill Damage
[2162]={trade={20718,8944,{65535,3}},base=20718,aug2=41,aug2MAX=3,cost=50},--Claidheamh Soluis/Critical Hit Rate
[2163]={trade={20718,8944,{65535,4}},base=20718,aug2=328,aug2MAX=4,cost=50},--Claidheamh Soluis/Critical Hit Damage
[2164]={trade={20718,8944,{65535,5}},base=20718,aug2=116,aug2MAX=3,cost=50},--Claidheamh Soluis/Subtle Blow
[2165]={trade={20718,8944,{65535,6}},base=20718,aug2=56,aug2MAX=-4,cost=50},--Claidheamh Soluis/Breath Damage Taken
[2166]={trade={20718,8944,{65535,7}},base=20718,aug2=211,aug2MAX=4,cost=50},--Claidheamh Soluis/Snapshot
[2167]={trade={20718,8944,{65535,8}},base=20718,aug2=139,aug2MAX=4,cost=50},--Claidheamh Soluis/Rapid Shot
[2168]={trade={20718,8953,{65535,1}},base=20718,aug2=55,aug2MAX=-4,cost=50},--Claidheamh Soluis/Magic Damage Taken
[2169]={trade={20718,8953,{65535,2}},base=20718,aug2=140,aug2MAX=5,cost=50},--Claidheamh Soluis/Fast Cast
[2170]={trade={20718,8953,{65535,3}},base=20718,aug2=138,aug2MAX=0,cost=50},--Claidheamh Soluis/Refresh
[2171]={trade={20718,8953,{65535,4}},base=20718,aug2=329,aug2MAX=14,cost=50},--Claidheamh Soluis/Cure Potency
[2172]={trade={20718,8953,{65535,5}},base=20718,aug2=323,aug2MAX=-7,cost=50},--Claidheamh Soluis/Cure Spellcasting Time
[2173]={trade={20718,8953,{65535,6}},base=20718,aug2=322,aug2MAX=-4,cost=50},--Claidheamh Soluis/Song Spellcasting Time
[2174]={trade={20718,8953,{65535,7}},base=20718,aug2=141,aug2MAX=6,cost=50},--Claidheamh Soluis/Conserve MP
[2175]={trade={20718,8953,{65535,8}},base=20718,aug2=334,aug2MAX=5,cost=50},--Claidheamh Soluis/Magic Burst Damage
[2176]={trade={20718,8962,{65535,1}},base=20718,aug2=118,aug2MAX=-4,cost=50},--Claidheamh Soluis/Pet: Physical Damage Taken
[2177]={trade={20718,8962,{65535,2}},base=20718,aug2=112,aug2MAX=-3,cost=50},--Claidheamh Soluis/Pet: Damage Taken
[2178]={trade={20718,8962,{65535,3}},base=20718,aug2=110,aug2MAX=2,cost=50},--Claidheamh Soluis/Pet: Regen
[2179]={trade={20718,8962,{65535,4}},base=20718,aug2=111,aug2MAX=2,cost=50},--Claidheamh Soluis/Pet: Haste
[2180]={trade={20718,8962,{65535,5}},base=20718,aug2=Change,aug2MAX=3,cost=50},--Claidheamh Soluis/Pet: Critical Hit Rate
[2181]={trade={20718,8962,{65535,6}},base=20718,aug2=Change,aug2MAX=3,cost=50},--Claidheamh Soluis/Pet: Double Attack and Critical Hit Rate
[2182]={trade={20718,8962,{65535,7}},base=20718,aug2=341,aug2MAX=6,cost=50},--Claidheamh Soluis/Repair Potency
[2183]={trade={20718,8962,{65535,8}},base=20718,aug2=321,aug2MAX=-3,cost=50},--Claidheamh Soluis/Avatar Perpetuation Cost
[2184]={trade={21105,8935,{65535,1}},base=21105,aug2=54,aug2MAX=-4,cost=50},--Nehushtan /Physical Damage Taken
[2185]={trade={21105,8935,{65535,2}},base=21105,aug2=143,aug2MAX=3,cost=50},--Nehushtan /Double Attack
[2186]={trade={21105,8935,{65535,3}},base=21105,aug2=49,aug2MAX=2,cost=50},--Nehushtan /Haste
[2187]={trade={21105,8935,{65535,4}},base=21105,aug2=330,aug2MAX=5,cost=50},--Nehushtan /Waltz Potency
[2188]={trade={21105,8935,{65535,5}},base=21105,aug2=115,aug2MAX=5,cost=50},--Nehushtan /Store TP
[2189]={trade={21105,8935,{65535,6}},base=21105,aug2=327,aug2MAX=3,cost=50},--Nehushtan /Weapon Skill Damage
[2190]={trade={21105,8935,{65535,7}},base=21105,aug2=41,aug2MAX=3,cost=50},--Nehushtan /Critical Hit Rate
[2191]={trade={21105,8944,{65535,1}},base=21105,aug2=115,aug2MAX=5,cost=50},--Nehushtan /Store TP
[2192]={trade={21105,8944,{65535,2}},base=21105,aug2=327,aug2MAX=3,cost=50},--Nehushtan /Weapon Skill Damage
[2193]={trade={21105,8944,{65535,3}},base=21105,aug2=41,aug2MAX=3,cost=50},--Nehushtan /Critical Hit Rate
[2194]={trade={21105,8944,{65535,4}},base=21105,aug2=328,aug2MAX=4,cost=50},--Nehushtan /Critical Hit Damage
[2195]={trade={21105,8944,{65535,5}},base=21105,aug2=116,aug2MAX=3,cost=50},--Nehushtan /Subtle Blow
[2196]={trade={21105,8944,{65535,6}},base=21105,aug2=56,aug2MAX=-4,cost=50},--Nehushtan /Breath Damage Taken
[2197]={trade={21105,8944,{65535,7}},base=21105,aug2=211,aug2MAX=4,cost=50},--Nehushtan /Snapshot
[2198]={trade={21105,8944,{65535,8}},base=21105,aug2=139,aug2MAX=4,cost=50},--Nehushtan /Rapid Shot
[2199]={trade={21105,8953,{65535,1}},base=21105,aug2=55,aug2MAX=-4,cost=50},--Nehushtan /Magic Damage Taken
[2200]={trade={21105,8953,{65535,2}},base=21105,aug2=140,aug2MAX=5,cost=50},--Nehushtan /Fast Cast
[2201]={trade={21105,8953,{65535,3}},base=21105,aug2=138,aug2MAX=0,cost=50},--Nehushtan /Refresh
[2202]={trade={21105,8953,{65535,4}},base=21105,aug2=329,aug2MAX=14,cost=50},--Nehushtan /Cure Potency
[2203]={trade={21105,8953,{65535,5}},base=21105,aug2=323,aug2MAX=-7,cost=50},--Nehushtan /Cure Spellcasting Time
[2204]={trade={21105,8953,{65535,6}},base=21105,aug2=322,aug2MAX=-4,cost=50},--Nehushtan /Song Spellcasting Time
[2205]={trade={21105,8953,{65535,7}},base=21105,aug2=141,aug2MAX=6,cost=50},--Nehushtan /Conserve MP
[2206]={trade={21105,8953,{65535,8}},base=21105,aug2=334,aug2MAX=5,cost=50},--Nehushtan /Magic Burst Damage
[2207]={trade={21105,8962,{65535,1}},base=21105,aug2=118,aug2MAX=-4,cost=50},--Nehushtan /Pet: Physical Damage Taken
[2208]={trade={21105,8962,{65535,2}},base=21105,aug2=112,aug2MAX=-3,cost=50},--Nehushtan /Pet: Damage Taken
[2209]={trade={21105,8962,{65535,3}},base=21105,aug2=110,aug2MAX=2,cost=50},--Nehushtan /Pet: Regen
[2210]={trade={21105,8962,{65535,4}},base=21105,aug2=111,aug2MAX=2,cost=50},--Nehushtan /Pet: Haste
[2211]={trade={21105,8962,{65535,5}},base=21105,aug2=Change,aug2MAX=3,cost=50},--Nehushtan /Pet: Critical Hit Rate
[2212]={trade={21105,8962,{65535,6}},base=21105,aug2=Change,aug2MAX=3,cost=50},--Nehushtan /Pet: Double Attack and Critical Hit Rate
[2213]={trade={21105,8962,{65535,7}},base=21105,aug2=341,aug2MAX=6,cost=50},--Nehushtan /Repair Potency
[2214]={trade={21105,8962,{65535,8}},base=21105,aug2=321,aug2MAX=-3,cost=50},--Nehushtan /Avatar Perpetuation Cost
[2215]={trade={20989,8935,{65535,1}},base=20989,aug2=54,aug2MAX=-4,cost=50},--Izuna /Physical Damage Taken
[2216]={trade={20989,8935,{65535,2}},base=20989,aug2=143,aug2MAX=3,cost=50},--Izuna /Double Attack
[2217]={trade={20989,8935,{65535,3}},base=20989,aug2=49,aug2MAX=2,cost=50},--Izuna /Haste
[2218]={trade={20989,8935,{65535,4}},base=20989,aug2=330,aug2MAX=5,cost=50},--Izuna /Waltz Potency
[2219]={trade={20989,8935,{65535,5}},base=20989,aug2=115,aug2MAX=5,cost=50},--Izuna /Store TP
[2220]={trade={20989,8935,{65535,6}},base=20989,aug2=327,aug2MAX=3,cost=50},--Izuna /Weapon Skill Damage
[2221]={trade={20989,8935,{65535,7}},base=20989,aug2=41,aug2MAX=3,cost=50},--Izuna /Critical Hit Rate
[2222]={trade={20989,8944,{65535,1}},base=20989,aug2=115,aug2MAX=5,cost=50},--Izuna /Store TP
[2223]={trade={20989,8944,{65535,2}},base=20989,aug2=327,aug2MAX=3,cost=50},--Izuna /Weapon Skill Damage
[2224]={trade={20989,8944,{65535,3}},base=20989,aug2=41,aug2MAX=3,cost=50},--Izuna /Critical Hit Rate
[2225]={trade={20989,8944,{65535,4}},base=20989,aug2=328,aug2MAX=4,cost=50},--Izuna /Critical Hit Damage
[2226]={trade={20989,8944,{65535,5}},base=20989,aug2=116,aug2MAX=3,cost=50},--Izuna /Subtle Blow
[2227]={trade={20989,8944,{65535,6}},base=20989,aug2=56,aug2MAX=-4,cost=50},--Izuna /Breath Damage Taken
[2228]={trade={20989,8944,{65535,7}},base=20989,aug2=211,aug2MAX=4,cost=50},--Izuna /Snapshot
[2229]={trade={20989,8944,{65535,8}},base=20989,aug2=139,aug2MAX=4,cost=50},--Izuna /Rapid Shot
[2230]={trade={20989,8953,{65535,1}},base=20989,aug2=55,aug2MAX=-4,cost=50},--Izuna /Magic Damage Taken
[2231]={trade={20989,8953,{65535,2}},base=20989,aug2=140,aug2MAX=5,cost=50},--Izuna /Fast Cast
[2232]={trade={20989,8953,{65535,3}},base=20989,aug2=138,aug2MAX=0,cost=50},--Izuna /Refresh
[2233]={trade={20989,8953,{65535,4}},base=20989,aug2=329,aug2MAX=14,cost=50},--Izuna /Cure Potency
[2234]={trade={20989,8953,{65535,5}},base=20989,aug2=323,aug2MAX=-7,cost=50},--Izuna /Cure Spellcasting Time
[2235]={trade={20989,8953,{65535,6}},base=20989,aug2=322,aug2MAX=-4,cost=50},--Izuna /Song Spellcasting Time
[2236]={trade={20989,8953,{65535,7}},base=20989,aug2=141,aug2MAX=6,cost=50},--Izuna /Conserve MP
[2237]={trade={20989,8953,{65535,8}},base=20989,aug2=334,aug2MAX=5,cost=50},--Izuna /Magic Burst Damage
[2238]={trade={20989,8962,{65535,1}},base=20989,aug2=118,aug2MAX=-4,cost=50},--Izuna /Pet: Physical Damage Taken
[2239]={trade={20989,8962,{65535,2}},base=20989,aug2=112,aug2MAX=-3,cost=50},--Izuna /Pet: Damage Taken
[2240]={trade={20989,8962,{65535,3}},base=20989,aug2=110,aug2MAX=2,cost=50},--Izuna /Pet: Regen
[2241]={trade={20989,8962,{65535,4}},base=20989,aug2=111,aug2MAX=2,cost=50},--Izuna /Pet: Haste
[2242]={trade={20989,8962,{65535,5}},base=20989,aug2=Change,aug2MAX=3,cost=50},--Izuna /Pet: Critical Hit Rate
[2243]={trade={20989,8962,{65535,6}},base=20989,aug2=Change,aug2MAX=3,cost=50},--Izuna /Pet: Double Attack and Critical Hit Rate
[2244]={trade={20989,8962,{65535,7}},base=20989,aug2=341,aug2MAX=6,cost=50},--Izuna /Repair Potency
[2245]={trade={20989,8962,{65535,8}},base=20989,aug2=321,aug2MAX=-3,cost=50},--Izuna /Avatar Perpetuation Cost
[2246]={trade={20530,8935,{65535,1}},base=20530,aug2=54,aug2MAX=-4,cost=50},--Ohrmazd /Physical Damage Taken
[2247]={trade={20530,8935,{65535,2}},base=20530,aug2=143,aug2MAX=5,cost=50},--Ohrmazd /Double Attack
[2248]={trade={20530,8935,{65535,3}},base=20530,aug2=49,aug2MAX=4,cost=50},--Ohrmazd /Haste
[2249]={trade={20530,8935,{65535,4}},base=20530,aug2=330,aug2MAX=7,cost=50},--Ohrmazd /Waltz Potency
[2250]={trade={20530,8935,{65535,5}},base=20530,aug2=115,aug2MAX=7,cost=50},--Ohrmazd /Store TP
[2251]={trade={20530,8935,{65535,6}},base=20530,aug2=327,aug2MAX=6,cost=50},--Ohrmazd /Weapon Skill Damage
[2252]={trade={20530,8935,{65535,7}},base=20530,aug2=41,aug2MAX=3,cost=50},--Ohrmazd /Critical Hit Rate
[2253]={trade={20530,8944,{65535,1}},base=20530,aug2=115,aug2MAX=7,cost=50},--Ohrmazd /Store TP
[2254]={trade={20530,8944,{65535,2}},base=20530,aug2=327,aug2MAX=6,cost=50},--Ohrmazd /Weapon Skill Damage
[2255]={trade={20530,8944,{65535,3}},base=20530,aug2=41,aug2MAX=4,cost=50},--Ohrmazd /Critical Hit Rate
[2256]={trade={20530,8944,{65535,4}},base=20530,aug2=328,aug2MAX=5,cost=50},--Ohrmazd /Critical Hit Damage
[2257]={trade={20530,8944,{65535,5}},base=20530,aug2=116,aug2MAX=5,cost=50},--Ohrmazd /Subtle Blow
[2258]={trade={20530,8944,{65535,6}},base=20530,aug2=56,aug2MAX=-4,cost=50},--Ohrmazd /Breath Damage Taken
[2259]={trade={20530,8944,{65535,7}},base=20530,aug2=211,aug2MAX=6,cost=50},--Ohrmazd /Snapshot
[2260]={trade={20530,8944,{65535,8}},base=20530,aug2=139,aug2MAX=6,cost=50},--Ohrmazd /Rapid Shot
[2261]={trade={20530,8953,{65535,1}},base=20530,aug2=55,aug2MAX=-4,cost=50},--Ohrmazd /Magic Damage Taken
[2262]={trade={20530,8953,{65535,2}},base=20530,aug2=140,aug2MAX=5,cost=50},--Ohrmazd /Fast Cast
[2263]={trade={20530,8953,{65535,3}},base=20530,aug2=138,aug2MAX=0,cost=50},--Ohrmazd /Refresh
[2264]={trade={20530,8953,{65535,4}},base=20530,aug2=329,aug2MAX=19,cost=50},--Ohrmazd /Cure Potency
[2265]={trade={20530,8953,{65535,5}},base=20530,aug2=323,aug2MAX=-9,cost=50},--Ohrmazd /Cure Spellcasting Time
[2266]={trade={20530,8953,{65535,6}},base=20530,aug2=339,aug2MAX=24,cost=50},--Ohrmazd /Elemental Siphon
[2267]={trade={20530,8953,{65535,7}},base=20530,aug2=141,aug2MAX=8,cost=50},--Ohrmazd /Conserve MP
[2268]={trade={20530,8953,{65535,8}},base=20530,aug2=334,aug2MAX=5,cost=50},--Ohrmazd /Magic Burst Damage
[2269]={trade={20530,8962,{65535,1}},base=20530,aug2=118,aug2MAX=-4,cost=50},--Ohrmazd /Pet: Physical Damage Taken
[2270]={trade={20530,8962,{65535,2}},base=20530,aug2=112,aug2MAX=-4,cost=50},--Ohrmazd /Pet: Damage Taken
[2271]={trade={20530,8962,{65535,3}},base=20530,aug2=110,aug2MAX=2,cost=50},--Ohrmazd /Pet: Regen
[2272]={trade={20530,8962,{65535,4}},base=20530,aug2=111,aug2MAX=4,cost=50},--Ohrmazd /Pet: Haste
[2273]={trade={20530,8962,{65535,5}},base=20530,aug2=Change,aug2MAX=3,cost=50},--Ohrmazd /Pet: Critical Hit Rate
[2274]={trade={20530,8962,{65535,6}},base=20530,aug2=Change,aug2MAX=5,cost=50},--Ohrmazd /Pet: Double Attack and Critical Hit Rate
[2275]={trade={20530,8962,{65535,7}},base=20530,aug2=115,aug2MAX=3,cost=50},--Ohrmazd /Pet Store TP
[2276]={trade={20530,8962,{65535,8}},base=20530,aug2=320,aug2MAX=-5,cost=50},--Ohrmazd /Blood Pact Delay
[2277]={trade={20530,8962,{65535,9}},base=20530,aug2=321,aug2MAX=-5,cost=50},--Ohrmazd /Avatar Perpetuation Cost
[2278]={trade={20759,8935,{65535,1}},base=20759,aug2=54,aug2MAX=-4,cost=50},--Macbain /Physical Damage Taken
[2279]={trade={20759,8935,{65535,2}},base=20759,aug2=143,aug2MAX=5,cost=50},--Macbain /Double Attack
[2280]={trade={20759,8935,{65535,3}},base=20759,aug2=49,aug2MAX=4,cost=50},--Macbain /Haste
[2281]={trade={20759,8935,{65535,4}},base=20759,aug2=330,aug2MAX=7,cost=50},--Macbain /Waltz Potency
[2282]={trade={20759,8935,{65535,5}},base=20759,aug2=115,aug2MAX=7,cost=50},--Macbain /Store TP
[2283]={trade={20759,8935,{65535,6}},base=20759,aug2=327,aug2MAX=6,cost=50},--Macbain /Weapon Skill Damage
[2284]={trade={20759,8935,{65535,7}},base=20759,aug2=41,aug2MAX=3,cost=50},--Macbain /Critical Hit Rate
[2285]={trade={20759,8944,{65535,1}},base=20759,aug2=115,aug2MAX=7,cost=50},--Macbain /Store TP
[2286]={trade={20759,8944,{65535,2}},base=20759,aug2=327,aug2MAX=6,cost=50},--Macbain /Weapon Skill Damage
[2287]={trade={20759,8944,{65535,3}},base=20759,aug2=41,aug2MAX=4,cost=50},--Macbain /Critical Hit Rate
[2288]={trade={20759,8944,{65535,4}},base=20759,aug2=328,aug2MAX=5,cost=50},--Macbain /Critical Hit Damage
[2289]={trade={20759,8944,{65535,5}},base=20759,aug2=116,aug2MAX=5,cost=50},--Macbain /Subtle Blow
[2290]={trade={20759,8944,{65535,6}},base=20759,aug2=56,aug2MAX=-4,cost=50},--Macbain /Breath Damage Taken
[2291]={trade={20759,8944,{65535,7}},base=20759,aug2=211,aug2MAX=6,cost=50},--Macbain /Snapshot
[2292]={trade={20759,8944,{65535,8}},base=20759,aug2=139,aug2MAX=6,cost=50},--Macbain /Rapid Shot
[2293]={trade={20759,8953,{65535,1}},base=20759,aug2=55,aug2MAX=-4,cost=50},--Macbain /Magic Damage Taken
[2294]={trade={20759,8953,{65535,2}},base=20759,aug2=140,aug2MAX=5,cost=50},--Macbain /Fast Cast
[2295]={trade={20759,8953,{65535,3}},base=20759,aug2=138,aug2MAX=0,cost=50},--Macbain /Refresh
[2296]={trade={20759,8953,{65535,4}},base=20759,aug2=329,aug2MAX=19,cost=50},--Macbain /Cure Potency
[2297]={trade={20759,8953,{65535,5}},base=20759,aug2=323,aug2MAX=-9,cost=50},--Macbain /Cure Spellcasting Time
[2298]={trade={20759,8953,{65535,6}},base=20759,aug2=339,aug2MAX=24,cost=50},--Macbain /Elemental Siphon
[2299]={trade={20759,8953,{65535,7}},base=20759,aug2=141,aug2MAX=8,cost=50},--Macbain /Conserve MP
[2300]={trade={20759,8953,{65535,8}},base=20759,aug2=334,aug2MAX=5,cost=50},--Macbain /Magic Burst Damage
[2301]={trade={20759,8962,{65535,1}},base=20759,aug2=118,aug2MAX=-4,cost=50},--Macbain /Pet: Physical Damage Taken
[2302]={trade={20759,8962,{65535,2}},base=20759,aug2=112,aug2MAX=-4,cost=50},--Macbain /Pet: Damage Taken
[2303]={trade={20759,8962,{65535,3}},base=20759,aug2=110,aug2MAX=2,cost=50},--Macbain /Pet: Regen
[2304]={trade={20759,8962,{65535,4}},base=20759,aug2=111,aug2MAX=4,cost=50},--Macbain /Pet: Haste
[2305]={trade={20759,8962,{65535,5}},base=20759,aug2=Change,aug2MAX=3,cost=50},--Macbain /Pet: Critical Hit Rate
[2306]={trade={20759,8962,{65535,6}},base=20759,aug2=Change,aug2MAX=5,cost=50},--Macbain /Pet: Double Attack and Critical Hit Rate
[2307]={trade={20759,8962,{65535,7}},base=20759,aug2=115,aug2MAX=3,cost=50},--Macbain /Pet Store TP
[2308]={trade={20759,8962,{65535,8}},base=20759,aug2=320,aug2MAX=-5,cost=50},--Macbain /Blood Pact Delay
[2309]={trade={20759,8962,{65535,9}},base=20759,aug2=321,aug2MAX=-5,cost=50},--Macbain /Avatar Perpetuation Cost
[2310]={trade={20901,8935,{65535,1}},base=20901,aug2=54,aug2MAX=-4,cost=50},--Inanna /Physical Damage Taken
[2311]={trade={20901,8935,{65535,2}},base=20901,aug2=143,aug2MAX=5,cost=50},--Inanna /Double Attack
[2312]={trade={20901,8935,{65535,3}},base=20901,aug2=49,aug2MAX=4,cost=50},--Inanna /Haste
[2313]={trade={20901,8935,{65535,4}},base=20901,aug2=330,aug2MAX=7,cost=50},--Inanna /Waltz Potency
[2314]={trade={20901,8935,{65535,5}},base=20901,aug2=115,aug2MAX=7,cost=50},--Inanna /Store TP
[2315]={trade={20901,8935,{65535,6}},base=20901,aug2=327,aug2MAX=6,cost=50},--Inanna /Weapon Skill Damage
[2316]={trade={20901,8935,{65535,7}},base=20901,aug2=41,aug2MAX=3,cost=50},--Inanna /Critical Hit Rate
[2317]={trade={20901,8944,{65535,1}},base=20901,aug2=115,aug2MAX=7,cost=50},--Inanna /Store TP
[2318]={trade={20901,8944,{65535,2}},base=20901,aug2=327,aug2MAX=6,cost=50},--Inanna /Weapon Skill Damage
[2319]={trade={20901,8944,{65535,3}},base=20901,aug2=41,aug2MAX=4,cost=50},--Inanna /Critical Hit Rate
[2320]={trade={20901,8944,{65535,4}},base=20901,aug2=328,aug2MAX=5,cost=50},--Inanna /Critical Hit Damage
[2321]={trade={20901,8944,{65535,5}},base=20901,aug2=116,aug2MAX=5,cost=50},--Inanna /Subtle Blow
[2322]={trade={20901,8944,{65535,6}},base=20901,aug2=56,aug2MAX=-4,cost=50},--Inanna /Breath Damage Taken
[2323]={trade={20901,8944,{65535,7}},base=20901,aug2=211,aug2MAX=6,cost=50},--Inanna /Snapshot
[2324]={trade={20901,8944,{65535,8}},base=20901,aug2=139,aug2MAX=6,cost=50},--Inanna /Rapid Shot
[2325]={trade={20901,8953,{65535,1}},base=20901,aug2=55,aug2MAX=-4,cost=50},--Inanna /Magic Damage Taken
[2326]={trade={20901,8953,{65535,2}},base=20901,aug2=140,aug2MAX=5,cost=50},--Inanna /Fast Cast
[2327]={trade={20901,8953,{65535,3}},base=20901,aug2=138,aug2MAX=0,cost=50},--Inanna /Refresh
[2328]={trade={20901,8953,{65535,4}},base=20901,aug2=329,aug2MAX=19,cost=50},--Inanna /Cure Potency
[2329]={trade={20901,8953,{65535,5}},base=20901,aug2=323,aug2MAX=-9,cost=50},--Inanna /Cure Spellcasting Time
[2330]={trade={20901,8953,{65535,6}},base=20901,aug2=339,aug2MAX=24,cost=50},--Inanna /Elemental Siphon
[2331]={trade={20901,8953,{65535,7}},base=20901,aug2=141,aug2MAX=8,cost=50},--Inanna /Conserve MP
[2332]={trade={20901,8953,{65535,8}},base=20901,aug2=334,aug2MAX=5,cost=50},--Inanna /Magic Burst Damage
[2333]={trade={20901,8962,{65535,1}},base=20901,aug2=118,aug2MAX=-4,cost=50},--Inanna /Pet: Physical Damage Taken
[2334]={trade={20901,8962,{65535,2}},base=20901,aug2=112,aug2MAX=-4,cost=50},--Inanna /Pet: Damage Taken
[2335]={trade={20901,8962,{65535,3}},base=20901,aug2=110,aug2MAX=2,cost=50},--Inanna /Pet: Regen
[2336]={trade={20901,8962,{65535,4}},base=20901,aug2=111,aug2MAX=4,cost=50},--Inanna /Pet: Haste
[2337]={trade={20901,8962,{65535,5}},base=20901,aug2=Change,aug2MAX=3,cost=50},--Inanna /Pet: Critical Hit Rate
[2338]={trade={20901,8962,{65535,6}},base=20901,aug2=Change,aug2MAX=5,cost=50},--Inanna /Pet: Double Attack and Critical Hit Rate
[2339]={trade={20901,8962,{65535,7}},base=20901,aug2=115,aug2MAX=3,cost=50},--Inanna /Pet Store TP
[2340]={trade={20901,8962,{65535,8}},base=20901,aug2=320,aug2MAX=-5,cost=50},--Inanna /Blood Pact Delay
[2341]={trade={20901,8962,{65535,9}},base=20901,aug2=321,aug2MAX=-5,cost=50},--Inanna /Avatar Perpetuation Cost
[2342]={trade={20857,8935,{65535,1}},base=20857,aug2=54,aug2MAX=-4,cost=50},--Svarga /Physical Damage Taken
[2343]={trade={20857,8935,{65535,2}},base=20857,aug2=143,aug2MAX=5,cost=50},--Svarga /Double Attack
[2344]={trade={20857,8935,{65535,3}},base=20857,aug2=49,aug2MAX=4,cost=50},--Svarga /Haste
[2345]={trade={20857,8935,{65535,4}},base=20857,aug2=330,aug2MAX=7,cost=50},--Svarga /Waltz Potency
[2346]={trade={20857,8935,{65535,5}},base=20857,aug2=115,aug2MAX=7,cost=50},--Svarga /Store TP
[2347]={trade={20857,8935,{65535,6}},base=20857,aug2=327,aug2MAX=6,cost=50},--Svarga /Weapon Skill Damage
[2348]={trade={20857,8935,{65535,7}},base=20857,aug2=41,aug2MAX=3,cost=50},--Svarga /Critical Hit Rate
[2349]={trade={20857,8944,{65535,1}},base=20857,aug2=115,aug2MAX=7,cost=50},--Svarga /Store TP
[2350]={trade={20857,8944,{65535,2}},base=20857,aug2=327,aug2MAX=6,cost=50},--Svarga /Weapon Skill Damage
[2351]={trade={20857,8944,{65535,3}},base=20857,aug2=41,aug2MAX=4,cost=50},--Svarga /Critical Hit Rate
[2352]={trade={20857,8944,{65535,4}},base=20857,aug2=328,aug2MAX=5,cost=50},--Svarga /Critical Hit Damage
[2353]={trade={20857,8944,{65535,5}},base=20857,aug2=116,aug2MAX=5,cost=50},--Svarga /Subtle Blow
[2354]={trade={20857,8944,{65535,6}},base=20857,aug2=56,aug2MAX=-4,cost=50},--Svarga /Breath Damage Taken
[2355]={trade={20857,8944,{65535,7}},base=20857,aug2=211,aug2MAX=6,cost=50},--Svarga /Snapshot
[2356]={trade={20857,8944,{65535,8}},base=20857,aug2=139,aug2MAX=6,cost=50},--Svarga /Rapid Shot
[2357]={trade={20857,8953,{65535,1}},base=20857,aug2=55,aug2MAX=-4,cost=50},--Svarga /Magic Damage Taken
[2358]={trade={20857,8953,{65535,2}},base=20857,aug2=140,aug2MAX=5,cost=50},--Svarga /Fast Cast
[2359]={trade={20857,8953,{65535,3}},base=20857,aug2=138,aug2MAX=0,cost=50},--Svarga /Refresh
[2360]={trade={20857,8953,{65535,4}},base=20857,aug2=329,aug2MAX=19,cost=50},--Svarga /Cure Potency
[2361]={trade={20857,8953,{65535,5}},base=20857,aug2=323,aug2MAX=-9,cost=50},--Svarga /Cure Spellcasting Time
[2362]={trade={20857,8953,{65535,6}},base=20857,aug2=339,aug2MAX=24,cost=50},--Svarga /Elemental Siphon
[2363]={trade={20857,8953,{65535,7}},base=20857,aug2=141,aug2MAX=8,cost=50},--Svarga /Conserve MP
[2364]={trade={20857,8953,{65535,8}},base=20857,aug2=334,aug2MAX=5,cost=50},--Svarga /Magic Burst Damage
[2365]={trade={20857,8962,{65535,1}},base=20857,aug2=118,aug2MAX=-4,cost=50},--Svarga /Pet: Physical Damage Taken
[2366]={trade={20857,8962,{65535,2}},base=20857,aug2=112,aug2MAX=-4,cost=50},--Svarga /Pet: Damage Taken
[2367]={trade={20857,8962,{65535,3}},base=20857,aug2=110,aug2MAX=2,cost=50},--Svarga /Pet: Regen
[2368]={trade={20857,8962,{65535,4}},base=20857,aug2=111,aug2MAX=4,cost=50},--Svarga /Pet: Haste
[2369]={trade={20857,8962,{65535,5}},base=20857,aug2=Change,aug2MAX=3,cost=50},--Svarga /Pet: Critical Hit Rate
[2370]={trade={20857,8962,{65535,6}},base=20857,aug2=Change,aug2MAX=5,cost=50},--Svarga /Pet: Double Attack and Critical Hit Rate
[2371]={trade={20857,8962,{65535,7}},base=20857,aug2=115,aug2MAX=3,cost=50},--Svarga /Pet Store TP
[2372]={trade={20857,8962,{65535,8}},base=20857,aug2=320,aug2MAX=-5,cost=50},--Svarga /Blood Pact Delay
[2373]={trade={20857,8962,{65535,9}},base=20857,aug2=321,aug2MAX=-5,cost=50},--Svarga /Avatar Perpetuation Cost
[2374]={trade={21169,8935,{65535,1}},base=21169,aug2=54,aug2MAX=-4,cost=50},--Keraunos /Physical Damage Taken
[2375]={trade={21169,8935,{65535,2}},base=21169,aug2=143,aug2MAX=5,cost=50},--Keraunos /Double Attack
[2376]={trade={21169,8935,{65535,3}},base=21169,aug2=49,aug2MAX=4,cost=50},--Keraunos /Haste
[2377]={trade={21169,8935,{65535,4}},base=21169,aug2=330,aug2MAX=7,cost=50},--Keraunos /Waltz Potency
[2378]={trade={21169,8935,{65535,5}},base=21169,aug2=115,aug2MAX=7,cost=50},--Keraunos /Store TP
[2379]={trade={21169,8935,{65535,6}},base=21169,aug2=327,aug2MAX=6,cost=50},--Keraunos /Weapon Skill Damage
[2380]={trade={21169,8935,{65535,7}},base=21169,aug2=41,aug2MAX=3,cost=50},--Keraunos /Critical Hit Rate
[2381]={trade={21169,8944,{65535,1}},base=21169,aug2=115,aug2MAX=7,cost=50},--Keraunos /Store TP
[2382]={trade={21169,8944,{65535,2}},base=21169,aug2=327,aug2MAX=6,cost=50},--Keraunos /Weapon Skill Damage
[2383]={trade={21169,8944,{65535,3}},base=21169,aug2=41,aug2MAX=4,cost=50},--Keraunos /Critical Hit Rate
[2384]={trade={21169,8944,{65535,4}},base=21169,aug2=328,aug2MAX=5,cost=50},--Keraunos /Critical Hit Damage
[2385]={trade={21169,8944,{65535,5}},base=21169,aug2=116,aug2MAX=5,cost=50},--Keraunos /Subtle Blow
[2386]={trade={21169,8944,{65535,6}},base=21169,aug2=56,aug2MAX=-4,cost=50},--Keraunos /Breath Damage Taken
[2387]={trade={21169,8944,{65535,7}},base=21169,aug2=211,aug2MAX=6,cost=50},--Keraunos /Snapshot
[2388]={trade={21169,8944,{65535,8}},base=21169,aug2=139,aug2MAX=6,cost=50},--Keraunos /Rapid Shot
[2389]={trade={21169,8953,{65535,1}},base=21169,aug2=55,aug2MAX=-4,cost=50},--Keraunos /Magic Damage Taken
[2390]={trade={21169,8953,{65535,2}},base=21169,aug2=140,aug2MAX=5,cost=50},--Keraunos /Fast Cast
[2391]={trade={21169,8953,{65535,3}},base=21169,aug2=138,aug2MAX=0,cost=50},--Keraunos /Refresh
[2392]={trade={21169,8953,{65535,4}},base=21169,aug2=329,aug2MAX=19,cost=50},--Keraunos /Cure Potency
[2393]={trade={21169,8953,{65535,5}},base=21169,aug2=323,aug2MAX=-9,cost=50},--Keraunos /Cure Spellcasting Time
[2394]={trade={21169,8953,{65535,6}},base=21169,aug2=339,aug2MAX=24,cost=50},--Keraunos /Elemental Siphon
[2395]={trade={21169,8953,{65535,7}},base=21169,aug2=141,aug2MAX=8,cost=50},--Keraunos /Conserve MP
[2396]={trade={21169,8953,{65535,8}},base=21169,aug2=334,aug2MAX=5,cost=50},--Keraunos /Magic Burst Damage
[2397]={trade={21169,8962,{65535,1}},base=21169,aug2=118,aug2MAX=-4,cost=50},--Keraunos /Pet: Physical Damage Taken
[2398]={trade={21169,8962,{65535,2}},base=21169,aug2=112,aug2MAX=-4,cost=50},--Keraunos /Pet: Damage Taken
[2399]={trade={21169,8962,{65535,3}},base=21169,aug2=110,aug2MAX=2,cost=50},--Keraunos /Pet: Regen
[2400]={trade={21169,8962,{65535,4}},base=21169,aug2=111,aug2MAX=4,cost=50},--Keraunos /Pet: Haste
[2401]={trade={21169,8962,{65535,5}},base=21169,aug2=Change,aug2MAX=3,cost=50},--Keraunos /Pet: Critical Hit Rate
[2402]={trade={21169,8962,{65535,6}},base=21169,aug2=Change,aug2MAX=5,cost=50},--Keraunos /Pet: Double Attack and Critical Hit Rate
[2403]={trade={21169,8962,{65535,7}},base=21169,aug2=115,aug2MAX=3,cost=50},--Keraunos /Pet Store TP
[2404]={trade={21169,8962,{65535,8}},base=21169,aug2=320,aug2MAX=-5,cost=50},--Keraunos /Blood Pact Delay
[2405]={trade={21169,8962,{65535,9}},base=21169,aug2=321,aug2MAX=-5,cost=50},--Keraunos /Avatar Perpetuation Cost
[2406]={trade={20946,8935,{65535,1}},base=20946,aug2=54,aug2MAX=-4,cost=50},--Olyndicus /Physical Damage Taken
[2407]={trade={20946,8935,{65535,2}},base=20946,aug2=143,aug2MAX=5,cost=50},--Olyndicus /Double Attack
[2408]={trade={20946,8935,{65535,3}},base=20946,aug2=49,aug2MAX=4,cost=50},--Olyndicus /Haste
[2409]={trade={20946,8935,{65535,4}},base=20946,aug2=330,aug2MAX=7,cost=50},--Olyndicus /Waltz Potency
[2410]={trade={20946,8935,{65535,5}},base=20946,aug2=115,aug2MAX=7,cost=50},--Olyndicus /Store TP
[2411]={trade={20946,8935,{65535,6}},base=20946,aug2=327,aug2MAX=6,cost=50},--Olyndicus /Weapon Skill Damage
[2412]={trade={20946,8935,{65535,7}},base=20946,aug2=41,aug2MAX=3,cost=50},--Olyndicus /Critical Hit Rate
[2413]={trade={20946,8944,{65535,1}},base=20946,aug2=115,aug2MAX=7,cost=50},--Olyndicus /Store TP
[2414]={trade={20946,8944,{65535,2}},base=20946,aug2=327,aug2MAX=6,cost=50},--Olyndicus /Weapon Skill Damage
[2415]={trade={20946,8944,{65535,3}},base=20946,aug2=41,aug2MAX=4,cost=50},--Olyndicus /Critical Hit Rate
[2416]={trade={20946,8944,{65535,4}},base=20946,aug2=328,aug2MAX=5,cost=50},--Olyndicus /Critical Hit Damage
[2417]={trade={20946,8944,{65535,5}},base=20946,aug2=116,aug2MAX=5,cost=50},--Olyndicus /Subtle Blow
[2418]={trade={20946,8944,{65535,6}},base=20946,aug2=56,aug2MAX=-4,cost=50},--Olyndicus /Breath Damage Taken
[2419]={trade={20946,8944,{65535,7}},base=20946,aug2=211,aug2MAX=6,cost=50},--Olyndicus /Snapshot
[2420]={trade={20946,8944,{65535,8}},base=20946,aug2=139,aug2MAX=6,cost=50},--Olyndicus /Rapid Shot
[2421]={trade={20946,8953,{65535,1}},base=20946,aug2=55,aug2MAX=-4,cost=50},--Olyndicus /Magic Damage Taken
[2422]={trade={20946,8953,{65535,2}},base=20946,aug2=140,aug2MAX=5,cost=50},--Olyndicus /Fast Cast
[2423]={trade={20946,8953,{65535,3}},base=20946,aug2=138,aug2MAX=0,cost=50},--Olyndicus /Refresh
[2424]={trade={20946,8953,{65535,4}},base=20946,aug2=329,aug2MAX=19,cost=50},--Olyndicus /Cure Potency
[2425]={trade={20946,8953,{65535,5}},base=20946,aug2=323,aug2MAX=-9,cost=50},--Olyndicus /Cure Spellcasting Time
[2426]={trade={20946,8953,{65535,6}},base=20946,aug2=339,aug2MAX=24,cost=50},--Olyndicus /Elemental Siphon
[2427]={trade={20946,8953,{65535,7}},base=20946,aug2=141,aug2MAX=8,cost=50},--Olyndicus /Conserve MP
[2428]={trade={20946,8953,{65535,8}},base=20946,aug2=334,aug2MAX=5,cost=50},--Olyndicus /Magic Burst Damage
[2429]={trade={20946,8962,{65535,1}},base=20946,aug2=118,aug2MAX=-4,cost=50},--Olyndicus /Pet: Physical Damage Taken
[2430]={trade={20946,8962,{65535,2}},base=20946,aug2=112,aug2MAX=-4,cost=50},--Olyndicus /Pet: Damage Taken
[2431]={trade={20946,8962,{65535,3}},base=20946,aug2=110,aug2MAX=2,cost=50},--Olyndicus /Pet: Regen
[2432]={trade={20946,8962,{65535,4}},base=20946,aug2=111,aug2MAX=4,cost=50},--Olyndicus /Pet: Haste
[2433]={trade={20946,8962,{65535,5}},base=20946,aug2=Change,aug2MAX=3,cost=50},--Olyndicus /Pet: Critical Hit Rate
[2434]={trade={20946,8962,{65535,6}},base=20946,aug2=Change,aug2MAX=5,cost=50},--Olyndicus /Pet: Double Attack and Critical Hit Rate
[2435]={trade={20946,8962,{65535,7}},base=20946,aug2=115,aug2MAX=3,cost=50},--Olyndicus /Pet Store TP
[2436]={trade={20946,8962,{65535,8}},base=20946,aug2=320,aug2MAX=-5,cost=50},--Olyndicus /Blood Pact Delay
[2437]={trade={20946,8962,{65535,9}},base=20946,aug2=321,aug2MAX=-5,cost=50},--Olyndicus /Avatar Perpetuation Cost
[2438]={trade={21037,8935,{65535,1}},base=21037,aug2=54,aug2MAX=-4,cost=50},--Nenekirimaru /Physical Damage Taken
[2439]={trade={21037,8935,{65535,2}},base=21037,aug2=143,aug2MAX=5,cost=50},--Nenekirimaru /Double Attack
[2440]={trade={21037,8935,{65535,3}},base=21037,aug2=49,aug2MAX=4,cost=50},--Nenekirimaru /Haste
[2441]={trade={21037,8935,{65535,4}},base=21037,aug2=330,aug2MAX=7,cost=50},--Nenekirimaru /Waltz Potency
[2442]={trade={21037,8935,{65535,5}},base=21037,aug2=115,aug2MAX=7,cost=50},--Nenekirimaru /Store TP
[2443]={trade={21037,8935,{65535,6}},base=21037,aug2=327,aug2MAX=6,cost=50},--Nenekirimaru /Weapon Skill Damage
[2444]={trade={21037,8935,{65535,7}},base=21037,aug2=41,aug2MAX=3,cost=50},--Nenekirimaru /Critical Hit Rate
[2445]={trade={21037,8944,{65535,1}},base=21037,aug2=115,aug2MAX=7,cost=50},--Nenekirimaru /Store TP
[2446]={trade={21037,8944,{65535,2}},base=21037,aug2=327,aug2MAX=6,cost=50},--Nenekirimaru /Weapon Skill Damage
[2447]={trade={21037,8944,{65535,3}},base=21037,aug2=41,aug2MAX=4,cost=50},--Nenekirimaru /Critical Hit Rate
[2448]={trade={21037,8944,{65535,4}},base=21037,aug2=328,aug2MAX=5,cost=50},--Nenekirimaru /Critical Hit Damage
[2449]={trade={21037,8944,{65535,5}},base=21037,aug2=116,aug2MAX=5,cost=50},--Nenekirimaru /Subtle Blow
[2450]={trade={21037,8944,{65535,6}},base=21037,aug2=56,aug2MAX=-4,cost=50},--Nenekirimaru /Breath Damage Taken
[2451]={trade={21037,8944,{65535,7}},base=21037,aug2=211,aug2MAX=6,cost=50},--Nenekirimaru /Snapshot
[2452]={trade={21037,8944,{65535,8}},base=21037,aug2=139,aug2MAX=6,cost=50},--Nenekirimaru /Rapid Shot
[2453]={trade={21037,8953,{65535,1}},base=21037,aug2=55,aug2MAX=-4,cost=50},--Nenekirimaru /Magic Damage Taken
[2454]={trade={21037,8953,{65535,2}},base=21037,aug2=140,aug2MAX=5,cost=50},--Nenekirimaru /Fast Cast
[2455]={trade={21037,8953,{65535,3}},base=21037,aug2=138,aug2MAX=0,cost=50},--Nenekirimaru /Refresh
[2456]={trade={21037,8953,{65535,4}},base=21037,aug2=329,aug2MAX=19,cost=50},--Nenekirimaru /Cure Potency
[2457]={trade={21037,8953,{65535,5}},base=21037,aug2=323,aug2MAX=-9,cost=50},--Nenekirimaru /Cure Spellcasting Time
[2458]={trade={21037,8953,{65535,6}},base=21037,aug2=339,aug2MAX=24,cost=50},--Nenekirimaru /Elemental Siphon
[2459]={trade={21037,8953,{65535,7}},base=21037,aug2=141,aug2MAX=8,cost=50},--Nenekirimaru /Conserve MP
[2460]={trade={21037,8953,{65535,8}},base=21037,aug2=334,aug2MAX=5,cost=50},--Nenekirimaru /Magic Burst Damage
[2461]={trade={21037,8962,{65535,1}},base=21037,aug2=118,aug2MAX=-4,cost=50},--Nenekirimaru /Pet: Physical Damage Taken
[2462]={trade={21037,8962,{65535,2}},base=21037,aug2=112,aug2MAX=-4,cost=50},--Nenekirimaru /Pet: Damage Taken
[2463]={trade={21037,8962,{65535,3}},base=21037,aug2=110,aug2MAX=2,cost=50},--Nenekirimaru /Pet: Regen
[2464]={trade={21037,8962,{65535,4}},base=21037,aug2=111,aug2MAX=4,cost=50},--Nenekirimaru /Pet: Haste
[2465]={trade={21037,8962,{65535,5}},base=21037,aug2=Change,aug2MAX=3,cost=50},--Nenekirimaru /Pet: Critical Hit Rate
[2466]={trade={21037,8962,{65535,6}},base=21037,aug2=Change,aug2MAX=5,cost=50},--Nenekirimaru /Pet: Double Attack and Critical Hit Rate
[2467]={trade={21037,8962,{65535,7}},base=21037,aug2=115,aug2MAX=3,cost=50},--Nenekirimaru /Pet Store TP
[2468]={trade={21037,8962,{65535,8}},base=21037,aug2=320,aug2MAX=-5,cost=50},--Nenekirimaru /Blood Pact Delay
[2469]={trade={21037,8962,{65535,9}},base=21037,aug2=321,aug2MAX=-5,cost=50},--Nenekirimaru /Avatar Perpetuation Cost
[2470]={trade={21224,8935,{65535,1}},base=21224,aug2=54,aug2MAX=-4,cost=50},--Phaosphaelia /Physical Damage Taken
[2471]={trade={21224,8935,{65535,2}},base=21224,aug2=143,aug2MAX=5,cost=50},--Phaosphaelia /Double Attack
[2472]={trade={21224,8935,{65535,3}},base=21224,aug2=49,aug2MAX=4,cost=50},--Phaosphaelia /Haste
[2473]={trade={21224,8935,{65535,4}},base=21224,aug2=330,aug2MAX=7,cost=50},--Phaosphaelia /Waltz Potency
[2474]={trade={21224,8935,{65535,5}},base=21224,aug2=115,aug2MAX=7,cost=50},--Phaosphaelia /Store TP
[2475]={trade={21224,8935,{65535,6}},base=21224,aug2=327,aug2MAX=6,cost=50},--Phaosphaelia /Weapon Skill Damage
[2476]={trade={21224,8935,{65535,7}},base=21224,aug2=41,aug2MAX=3,cost=50},--Phaosphaelia /Critical Hit Rate
[2477]={trade={21224,8944,{65535,1}},base=21224,aug2=115,aug2MAX=7,cost=50},--Phaosphaelia /Store TP
[2478]={trade={21224,8944,{65535,2}},base=21224,aug2=327,aug2MAX=6,cost=50},--Phaosphaelia /Weapon Skill Damage
[2479]={trade={21224,8944,{65535,3}},base=21224,aug2=41,aug2MAX=4,cost=50},--Phaosphaelia /Critical Hit Rate
[2480]={trade={21224,8944,{65535,4}},base=21224,aug2=328,aug2MAX=5,cost=50},--Phaosphaelia /Critical Hit Damage
[2481]={trade={21224,8944,{65535,5}},base=21224,aug2=116,aug2MAX=5,cost=50},--Phaosphaelia /Subtle Blow
[2482]={trade={21224,8944,{65535,6}},base=21224,aug2=56,aug2MAX=-4,cost=50},--Phaosphaelia /Breath Damage Taken
[2483]={trade={21224,8944,{65535,7}},base=21224,aug2=211,aug2MAX=6,cost=50},--Phaosphaelia /Snapshot
[2484]={trade={21224,8944,{65535,8}},base=21224,aug2=139,aug2MAX=6,cost=50},--Phaosphaelia /Rapid Shot
[2485]={trade={21224,8953,{65535,1}},base=21224,aug2=55,aug2MAX=-4,cost=50},--Phaosphaelia /Magic Damage Taken
[2486]={trade={21224,8953,{65535,2}},base=21224,aug2=140,aug2MAX=5,cost=50},--Phaosphaelia /Fast Cast
[2487]={trade={21224,8953,{65535,3}},base=21224,aug2=138,aug2MAX=0,cost=50},--Phaosphaelia /Refresh
[2488]={trade={21224,8953,{65535,4}},base=21224,aug2=329,aug2MAX=19,cost=50},--Phaosphaelia /Cure Potency
[2489]={trade={21224,8953,{65535,5}},base=21224,aug2=323,aug2MAX=-9,cost=50},--Phaosphaelia /Cure Spellcasting Time
[2490]={trade={21224,8953,{65535,6}},base=21224,aug2=339,aug2MAX=24,cost=50},--Phaosphaelia /Elemental Siphon
[2491]={trade={21224,8953,{65535,7}},base=21224,aug2=141,aug2MAX=8,cost=50},--Phaosphaelia /Conserve MP
[2492]={trade={21224,8953,{65535,8}},base=21224,aug2=334,aug2MAX=5,cost=50},--Phaosphaelia /Magic Burst Damage
[2493]={trade={21224,8962,{65535,1}},base=21224,aug2=118,aug2MAX=-4,cost=50},--Phaosphaelia /Pet: Physical Damage Taken
[2494]={trade={21224,8962,{65535,2}},base=21224,aug2=112,aug2MAX=-4,cost=50},--Phaosphaelia /Pet: Damage Taken
[2495]={trade={21224,8962,{65535,3}},base=21224,aug2=110,aug2MAX=2,cost=50},--Phaosphaelia /Pet: Regen
[2496]={trade={21224,8962,{65535,4}},base=21224,aug2=111,aug2MAX=4,cost=50},--Phaosphaelia /Pet: Haste
[2497]={trade={21224,8962,{65535,5}},base=21224,aug2=Change,aug2MAX=3,cost=50},--Phaosphaelia /Pet: Critical Hit Rate
[2498]={trade={21224,8962,{65535,6}},base=21224,aug2=Change,aug2MAX=5,cost=50},--Phaosphaelia /Pet: Double Attack and Critical Hit Rate
[2499]={trade={21224,8962,{65535,7}},base=21224,aug2=115,aug2MAX=3,cost=50},--Phaosphaelia /Pet Store TP
[2500]={trade={21224,8962,{65535,8}},base=21224,aug2=320,aug2MAX=-5,cost=50},--Phaosphaelia /Blood Pact Delay
[2501]={trade={21224,8962,{65535,9}},base=21224,aug2=321,aug2MAX=-5,cost=50},--Phaosphaelia /Avatar Perpetuation Cost
[2502]={trade={21476,8935,{65535,1}},base=21476,aug2=54,aug2MAX=-4,cost=50},--Doomsday /Physical Damage Taken
[2503]={trade={21476,8935,{65535,2}},base=21476,aug2=143,aug2MAX=5,cost=50},--Doomsday /Double Attack
[2504]={trade={21476,8935,{65535,3}},base=21476,aug2=49,aug2MAX=4,cost=50},--Doomsday /Haste
[2505]={trade={21476,8935,{65535,4}},base=21476,aug2=330,aug2MAX=7,cost=50},--Doomsday /Waltz Potency
[2506]={trade={21476,8935,{65535,5}},base=21476,aug2=115,aug2MAX=7,cost=50},--Doomsday /Store TP
[2507]={trade={21476,8935,{65535,6}},base=21476,aug2=327,aug2MAX=6,cost=50},--Doomsday /Weapon Skill Damage
[2508]={trade={21476,8935,{65535,7}},base=21476,aug2=41,aug2MAX=3,cost=50},--Doomsday /Critical Hit Rate
[2509]={trade={21476,8944,{65535,1}},base=21476,aug2=115,aug2MAX=7,cost=50},--Doomsday /Store TP
[2510]={trade={21476,8944,{65535,2}},base=21476,aug2=327,aug2MAX=6,cost=50},--Doomsday /Weapon Skill Damage
[2511]={trade={21476,8944,{65535,3}},base=21476,aug2=41,aug2MAX=4,cost=50},--Doomsday /Critical Hit Rate
[2512]={trade={21476,8944,{65535,4}},base=21476,aug2=328,aug2MAX=5,cost=50},--Doomsday /Critical Hit Damage
[2513]={trade={21476,8944,{65535,5}},base=21476,aug2=116,aug2MAX=5,cost=50},--Doomsday /Subtle Blow
[2514]={trade={21476,8944,{65535,6}},base=21476,aug2=56,aug2MAX=-4,cost=50},--Doomsday /Breath Damage Taken
[2515]={trade={21476,8944,{65535,7}},base=21476,aug2=211,aug2MAX=6,cost=50},--Doomsday /Snapshot
[2516]={trade={21476,8944,{65535,8}},base=21476,aug2=139,aug2MAX=6,cost=50},--Doomsday /Rapid Shot
[2517]={trade={21476,8953,{65535,1}},base=21476,aug2=55,aug2MAX=-4,cost=50},--Doomsday /Magic Damage Taken
[2518]={trade={21476,8953,{65535,2}},base=21476,aug2=140,aug2MAX=5,cost=50},--Doomsday /Fast Cast
[2519]={trade={21476,8953,{65535,3}},base=21476,aug2=138,aug2MAX=0,cost=50},--Doomsday /Refresh
[2520]={trade={21476,8953,{65535,4}},base=21476,aug2=329,aug2MAX=19,cost=50},--Doomsday /Cure Potency
[2521]={trade={21476,8953,{65535,5}},base=21476,aug2=323,aug2MAX=-9,cost=50},--Doomsday /Cure Spellcasting Time
[2522]={trade={21476,8953,{65535,6}},base=21476,aug2=339,aug2MAX=24,cost=50},--Doomsday /Elemental Siphon
[2523]={trade={21476,8953,{65535,7}},base=21476,aug2=141,aug2MAX=8,cost=50},--Doomsday /Conserve MP
[2524]={trade={21476,8953,{65535,8}},base=21476,aug2=334,aug2MAX=5,cost=50},--Doomsday /Magic Burst Damage
[2525]={trade={21476,8962,{65535,1}},base=21476,aug2=118,aug2MAX=-4,cost=50},--Doomsday /Pet: Physical Damage Taken
[2526]={trade={21476,8962,{65535,2}},base=21476,aug2=112,aug2MAX=-4,cost=50},--Doomsday /Pet: Damage Taken
[2527]={trade={21476,8962,{65535,3}},base=21476,aug2=110,aug2MAX=2,cost=50},--Doomsday /Pet: Regen
[2528]={trade={21476,8962,{65535,4}},base=21476,aug2=111,aug2MAX=4,cost=50},--Doomsday /Pet: Haste
[2529]={trade={21476,8962,{65535,5}},base=21476,aug2=Change,aug2MAX=3,cost=50},--Doomsday /Pet: Critical Hit Rate
[2530]={trade={21476,8962,{65535,6}},base=21476,aug2=Change,aug2MAX=5,cost=50},--Doomsday /Pet: Double Attack and Critical Hit Rate
[2531]={trade={21476,8962,{65535,7}},base=21476,aug2=115,aug2MAX=3,cost=50},--Doomsday /Pet Store TP
[2532]={trade={21476,8962,{65535,8}},base=21476,aug2=320,aug2MAX=-5,cost=50},--Doomsday /Blood Pact Delay
[2533]={trade={21476,8962,{65535,9}},base=21476,aug2=321,aug2MAX=-5,cost=50},--Doomsday /Avatar Perpetuation Cost
[2534]={trade={21404,8935,{65535,1}},base=21404,aug2=54,aug2MAX=-4,cost=50},--Linos/Physical Damage Taken
[2535]={trade={21404,8935,{65535,2}},base=21404,aug2=143,aug2MAX=2,cost=50},--Linos/Double Attack
[2536]={trade={21404,8935,{65535,3}},base=21404,aug2=49,aug2MAX=2,cost=50},--Linos/Haste
[2537]={trade={21404,8935,{65535,4}},base=21404,aug2=330,aug2MAX=3,cost=50},--Linos/Waltz Potency
[2538]={trade={21404,8935,{65535,5}},base=21404,aug2=115,aug2MAX=3,cost=50},--Linos/Store TP
[2539]={trade={21404,8935,{65535,6}},base=21404,aug2=327,aug2MAX=2,cost=50},--Linos/Weapon Skill Damage
[2540]={trade={21404,8935,{65535,7}},base=21404,aug2=41,aug2MAX=2,cost=50},--Linos/Critical Hit Rate
[2541]={trade={21404,8944,{65535,1}},base=21404,aug2=115,aug2MAX=3,cost=50},--Linos/Store TP
[2542]={trade={21404,8944,{65535,2}},base=21404,aug2=327,aug2MAX=2,cost=50},--Linos/Weapon Skill Damage
[2543]={trade={21404,8944,{65535,3}},base=21404,aug2=41,aug2MAX=2,cost=50},--Linos/Critical Hit Rate
[2544]={trade={21404,8944,{65535,4}},base=21404,aug2=328,aug2MAX=2,cost=50},--Linos/Critical Hit Damage
[2545]={trade={21404,8944,{65535,5}},base=21404,aug2=116,aug2MAX=3,cost=50},--Linos/Subtle Blow
[2546]={trade={21404,8944,{65535,6}},base=21404,aug2=56,aug2MAX=-4,cost=50},--Linos/Breath Damage Taken
[2547]={trade={21404,8944,{65535,7}},base=21404,aug2=332,aug2MAX=3,cost=50},--Linos/Skillchain Damage
[2548]={trade={21404,8944,{65535,8}},base=21404,aug2=137,aug2MAX=1,cost=50},--Linos/Regen
[2549]={trade={21404,8953,{65535,1}},base=21404,aug2=55,aug2MAX=-3,cost=50},--Linos/Magic Damage Taken
[2550]={trade={21404,8953,{65535,2}},base=21404,aug2=140,aug2MAX=5,cost=50},--Linos/Fast Cast
[2551]={trade={21404,8953,{65535,3}},base=21404,aug2=351,aug2MAX=3,cost=50},--Linos/Quick Magic
[2552]={trade={21404,8953,{65535,4}},base=21404,aug2=329,aug2MAX=5,cost=50},--Linos/Cure Potency
[2553]={trade={21404,8953,{65535,5}},base=21404,aug2=337,aug2MAX=-3,cost=50},--Linos/Song Recast Delay
[2554]={trade={21404,8953,{65535,6}},base=21404,aug2=322,aug2MAX=-5,cost=50},--Linos/Song Spellcasting Time
[2555]={trade={21404,8953,{65535,7}},base=21404,aug2=323,aug2MAX=-5,cost=50},--Linos/Cure Spellcasting Time
[2556]={trade={21404,8953,{65535,8}},base=21404,aug2=141,aug2MAX=3,cost=50},--Linos/Conserve MP
[2557]={trade={21404,8962,{65535,1}},base=21404,aug2=118,aug2MAX=-4,cost=50},--Linos/Pet: Physical Damage Taken
[2558]={trade={21404,8962,{65535,2}},base=21404,aug2=112,aug2MAX=-3,cost=50},--Linos/Pet: Damage Taken
[2559]={trade={21404,8962,{65535,3}},base=21404,aug2=110,aug2MAX=2,cost=50},--Linos/Pet: Regen
[2560]={trade={21404,8962,{65535,4}},base=21404,aug2=111,aug2MAX=2,cost=50},--Linos/Pet: Haste
[2561]={trade={21404,8962,{65535,5}},base=21404,aug2=Change,aug2MAX=3,cost=50},--Linos/Pet: Critical Hit Rate
[2562]={trade={21404,8962,{65535,6}},base=21404,aug2=Change,aug2MAX=3,cost=50},--Linos/Pet: Double Attack and Critical Hit Rate
[2563]={trade={21404,8962,{65535,7}},base=21404,aug2=320,aug2MAX=-3,cost=50},--Linos/Blood Pact Delay
[2564]={trade={21404,8962,{65535,8}},base=21404,aug2=321,aug2MAX=-3,cost=50},--Linos/Avatar Perpetuation Cost
[2565]={trade={27627,8935,{65535,1}},base=27627,aug2=71,aug2MAX=-8,cost=50},--Svalinn/Damage Taken
[2566]={trade={27627,8935,{65535,2}},base=27627,aug2=115,aug2MAX=3,cost=50},--Svalinn/Store TP
[2567]={trade={27627,8935,{65535,3}},base=27627,aug2=54,aug2MAX=-9,cost=50},--Svalinn/Physical Damage Taken
[2568]={trade={27627,8935,{65535,4}},base=27627,aug2=143,aug2MAX=3,cost=50},--Svalinn/Double Attack
[2569]={trade={27627,8935,{65535,5}},base=27627,aug2=356,aug2MAX=7,cost=50},--Svalinn/Cure Potency Received
[2570]={trade={27627,8935,{65535,6}},base=27627,aug2=330,aug2MAX=5,cost=50},--Svalinn/Waltz Potency
[2571]={trade={27627,8935,{65535,7}},base=27627,aug2=153,aug2MAX=3,cost=50},--Svalinn/Shield Mastery
[2572]={trade={27627,8944,{65535,1}},base=27627,aug2=71,aug2MAX=-8,cost=50},--Svalinn/Damage Taken
[2573]={trade={27627,8944,{65535,2}},base=27627,aug2=115,aug2MAX=3,cost=50},--Svalinn/Store TP
[2574]={trade={27627,8944,{65535,3}},base=27627,aug2=56,aug2MAX=-9,cost=50},--Svalinn/Breath Damage Taken
[2575]={trade={27627,8944,{65535,4}},base=27627,aug2=332,aug2MAX=3,cost=50},--Svalinn/Skillchain Damage
[2576]={trade={27627,8944,{65535,5}},base=27627,aug2=116,aug2MAX=3,cost=50},--Svalinn/Subtle Blow
[2577]={trade={27627,8944,{65535,6}},base=27627,aug2=41,aug2MAX=2,cost=50},--Svalinn/Critical Hit Rate
[2578]={trade={27627,8944,{65535,7}},base=27627,aug2=327,aug2MAX=2,cost=50},--Svalinn/Weapon Skill Damage
[2579]={trade={27627,8944,{65535,8}},base=27627,aug2=137,aug2MAX=1,cost=50},--Svalinn/Regen
[2580]={trade={27627,8953,{65535,1}},base=27627,aug2=71,aug2MAX=-8,cost=50},--Svalinn/Damage Taken
[2581]={trade={27627,8953,{65535,2}},base=27627,aug2=55,aug2MAX=-9,cost=50},--Svalinn/Magic Damage Taken
[2582]={trade={27627,8953,{65535,3}},base=27627,aug2=140,aug2MAX=5,cost=50},--Svalinn/Fast Cast
[2583]={trade={27627,8953,{65535,4}},base=27627,aug2=329,aug2MAX=9,cost=50},--Svalinn/Cure Potency
[2584]={trade={27627,8953,{65535,5}},base=27627,aug2=323,aug2MAX=-7,cost=50},--Svalinn/Cure Spellcasting Time
[2585]={trade={27627,8953,{65535,6}},base=27627,aug2=351,aug2MAX=3,cost=50},--Svalinn/Quick Magic
[2586]={trade={27627,8953,{65535,7}},base=27627,aug2=141,aug2MAX=3,cost=50},--Svalinn/Conserve MP
[2587]={trade={27627,8953,{65535,8}},base=27627,aug2=138,aug2MAX=0,cost=50},--Svalinn/Refresh
[2588]={trade={27627,8962,{65535,1}},base=27627,aug2=112,aug2MAX=-3,cost=50},--Svalinn/Pet: Damage Taken
[2589]={trade={27627,8962,{65535,2}},base=27627,aug2=118,aug2MAX=-4,cost=50},--Svalinn/Pet: Physical Damage Taken
[2590]={trade={27627,8962,{65535,3}},base=27627,aug2=110,aug2MAX=2,cost=50},--Svalinn/Pet: Regen
[2591]={trade={27627,8962,{65535,4}},base=27627,aug2=111,aug2MAX=2,cost=50},--Svalinn/Pet: Haste
[2592]={trade={27627,8962,{65535,5}},base=27627,aug2=Change,aug2MAX=3,cost=50},--Svalinn/Pet: Double Attack and Critical Hit Rate
[2593]={trade={27627,8962,{65535,6}},base=27627,aug2=320,aug2MAX=-3,cost=50},--Svalinn/Blood Pact Delay
[2594]={trade={27627,8962,{65535,7}},base=27627,aug2=321,aug2MAX=-3,cost=50},--Svalinn/Avatar Perpetuation Cost
[2595]={trade={20616,8938,{65535,1}},base=20616,aug3=1,aug3MAX=39,cost=50},--Ipetam /HP
[2596]={trade={20616,8938,{65535,2}},base=20616,aug3=512,aug3MAX=16,cost=50},--Ipetam /STR
[2597]={trade={20616,8938,{65535,3}},base=20616,aug3=514,aug3MAX=16,cost=50},--Ipetam /VIT
[2598]={trade={20616,8938,{65535,4}},base=20616,aug3=551,aug3MAX=14,cost=50},--Ipetam /STR and VIT
[2599]={trade={20616,8938,{65535,5}},base=20616,aug3=360,aug3MAX=99,cost=50},--Ipetam /Save TP
[2600]={trade={20616,8938,{65535,6}},base=20616,aug3=513,aug3MAX=16,cost=50},--Ipetam /DEX
[2601]={trade={20616,8938,{65535,7}},base=20616,aug3=287,aug3MAX=15,cost=50},--Ipetam /Weapon Damage
[2602]={trade={20616,8947,{65535,1}},base=20616,aug3=513,aug3MAX=16,cost=50},--Ipetam /DEX
[2603]={trade={20616,8947,{65535,2}},base=20616,aug3=287,aug3MAX=15,cost=50},--Ipetam /Weapon Damage
[2604]={trade={20616,8947,{65535,3}},base=20616,aug3=47,aug3MAX=-9,cost=50},--Ipetam /Delay
[2605]={trade={20616,8947,{65535,4}},base=20616,aug3=550,aug3MAX=14,cost=50},--Ipetam /STR and DEX
[2606]={trade={20616,8947,{65535,5}},base=20616,aug3=515,aug3MAX=16,cost=50},--Ipetam /AGI
[2607]={trade={20616,8947,{65535,6}},base=20616,aug3=552,aug3MAX=14,cost=50},--Ipetam /STR and AGI
[2608]={trade={20616,8947,{65535,7}},base=20616,aug3=354,aug3MAX=1,cost=50},--Ipetam /Quadruple Attack
[2609]={trade={20616,8956,{65535,1}},base=20616,aug3=17,aug3MAX=39,cost=50},--Ipetam /HP and MP
[2610]={trade={20616,8956,{65535,2}},base=20616,aug3=516,aug3MAX=16,cost=50},--Ipetam /INT
[2611]={trade={20616,8956,{65535,3}},base=20616,aug3=517,aug3MAX=16,cost=50},--Ipetam /MND
[2612]={trade={20616,8956,{65535,4}},base=20616,aug3=554,aug3MAX=14,cost=50},--Ipetam /INT and MND
[2613]={trade={20616,8956,{65535,5}},base=20616,aug3=362,aug3MAX=9,cost=50},--Ipetam /Magic Damage
[2614]={trade={20616,8956,{65535,6}},base=20616,aug3=52,aug3MAX=9,cost=50},--Ipetam /MP Recovered While Healing
[2615]={trade={20616,8956,{65535,7}},base=20616,aug3=9,aug3MAX=49,cost=50},--Ipetam /MP
[2616]={trade={20616,8965,{65535,1}},base=20616,aug3=1,aug3MAX=39,cost=50},--Ipetam /HP
[2617]={trade={20616,8965,{65535,2}},base=20616,aug3=9,aug3MAX=59,cost=50},--Ipetam /MP
[2618]={trade={20616,8965,{65535,3}},base=20616,aug3=518,aug3MAX=16,cost=50},--Ipetam /CHR
[2619]={trade={20616,8965,{65535,4}},base=20616,aug3=557,aug3MAX=14,cost=50},--Ipetam /STR and CHR
[2620]={trade={20616,8965,{65535,5}},base=20616,aug3=43,aug3MAX=9,cost=50},--Ipetam /Charm
[2621]={trade={20616,8965,{65535,6}},base=20616,aug3=1806,aug3MAX=14,cost=50},--Ipetam /Pet: STR and VIT and DEX
[2622]={trade={20616,8965,{65535,7}},base=20616,aug3=122,aug3MAX=199,cost=50},--Ipetam /Pet: TP Bonus
[2623]={trade={20809,8938,{65535,1}},base=20809,aug3=1,aug3MAX=39,cost=50},--Kumbhakarna /HP
[2624]={trade={20809,8938,{65535,2}},base=20809,aug3=512,aug3MAX=16,cost=50},--Kumbhakarna /STR
[2625]={trade={20809,8938,{65535,3}},base=20809,aug3=514,aug3MAX=16,cost=50},--Kumbhakarna /VIT
[2626]={trade={20809,8938,{65535,4}},base=20809,aug3=551,aug3MAX=14,cost=50},--Kumbhakarna /STR and VIT
[2627]={trade={20809,8938,{65535,5}},base=20809,aug3=360,aug3MAX=99,cost=50},--Kumbhakarna /Save TP
[2628]={trade={20809,8938,{65535,6}},base=20809,aug3=513,aug3MAX=16,cost=50},--Kumbhakarna /DEX
[2629]={trade={20809,8938,{65535,7}},base=20809,aug3=287,aug3MAX=21,cost=50},--Kumbhakarna /Weapon Damage
[2630]={trade={20809,8947,{65535,1}},base=20809,aug3=513,aug3MAX=16,cost=50},--Kumbhakarna /DEX
[2631]={trade={20809,8947,{65535,2}},base=20809,aug3=287,aug3MAX=21,cost=50},--Kumbhakarna /Weapon Damage
[2632]={trade={20809,8947,{65535,3}},base=20809,aug3=47,aug3MAX=-9,cost=50},--Kumbhakarna /Delay
[2633]={trade={20809,8947,{65535,4}},base=20809,aug3=550,aug3MAX=14,cost=50},--Kumbhakarna /STR and DEX
[2634]={trade={20809,8947,{65535,5}},base=20809,aug3=515,aug3MAX=16,cost=50},--Kumbhakarna /AGI
[2635]={trade={20809,8947,{65535,6}},base=20809,aug3=552,aug3MAX=14,cost=50},--Kumbhakarna /STR and AGI
[2636]={trade={20809,8947,{65535,7}},base=20809,aug3=354,aug3MAX=1,cost=50},--Kumbhakarna /Quadruple Attack
[2637]={trade={20809,8956,{65535,1}},base=20809,aug3=17,aug3MAX=39,cost=50},--Kumbhakarna /HP and MP
[2638]={trade={20809,8956,{65535,2}},base=20809,aug3=516,aug3MAX=16,cost=50},--Kumbhakarna /INT
[2639]={trade={20809,8956,{65535,3}},base=20809,aug3=517,aug3MAX=16,cost=50},--Kumbhakarna /MND
[2640]={trade={20809,8956,{65535,4}},base=20809,aug3=554,aug3MAX=14,cost=50},--Kumbhakarna /INT and MND
[2641]={trade={20809,8956,{65535,5}},base=20809,aug3=362,aug3MAX=9,cost=50},--Kumbhakarna /Magic Damage
[2642]={trade={20809,8956,{65535,6}},base=20809,aug3=52,aug3MAX=9,cost=50},--Kumbhakarna /MP Recovered While Healing
[2643]={trade={20809,8956,{65535,7}},base=20809,aug3=9,aug3MAX=49,cost=50},--Kumbhakarna /MP
[2644]={trade={20809,8965,{65535,1}},base=20809,aug3=1,aug3MAX=39,cost=50},--Kumbhakarna /HP
[2645]={trade={20809,8965,{65535,2}},base=20809,aug3=9,aug3MAX=59,cost=50},--Kumbhakarna /MP
[2646]={trade={20809,8965,{65535,3}},base=20809,aug3=518,aug3MAX=16,cost=50},--Kumbhakarna /CHR
[2647]={trade={20809,8965,{65535,4}},base=20809,aug3=557,aug3MAX=14,cost=50},--Kumbhakarna /STR and CHR
[2648]={trade={20809,8965,{65535,5}},base=20809,aug3=43,aug3MAX=9,cost=50},--Kumbhakarna /Charm
[2649]={trade={20809,8965,{65535,6}},base=20809,aug3=1806,aug3MAX=14,cost=50},--Kumbhakarna /Pet: STR and VIT and DEX
[2650]={trade={20809,8965,{65535,7}},base=20809,aug3=122,aug3MAX=199,cost=50},--Kumbhakarna /Pet: TP Bonus
[2651]={trade={20718,8938,{65535,1}},base=20718,aug3=1,aug3MAX=39,cost=50},--Claidheamh Soluis/HP
[2652]={trade={20718,8938,{65535,2}},base=20718,aug3=512,aug3MAX=16,cost=50},--Claidheamh Soluis/STR
[2653]={trade={20718,8938,{65535,3}},base=20718,aug3=514,aug3MAX=16,cost=50},--Claidheamh Soluis/VIT
[2654]={trade={20718,8938,{65535,4}},base=20718,aug3=551,aug3MAX=14,cost=50},--Claidheamh Soluis/STR and VIT
[2655]={trade={20718,8938,{65535,5}},base=20718,aug3=360,aug3MAX=99,cost=50},--Claidheamh Soluis/Save TP
[2656]={trade={20718,8938,{65535,6}},base=20718,aug3=513,aug3MAX=16,cost=50},--Claidheamh Soluis/DEX
[2657]={trade={20718,8938,{65535,7}},base=20718,aug3=287,aug3MAX=18,cost=50},--Claidheamh Soluis/Weapon Damage
[2658]={trade={20718,8947,{65535,1}},base=20718,aug3=513,aug3MAX=16,cost=50},--Claidheamh Soluis/DEX
[2659]={trade={20718,8947,{65535,2}},base=20718,aug3=287,aug3MAX=18,cost=50},--Claidheamh Soluis/Weapon Damage
[2660]={trade={20718,8947,{65535,3}},base=20718,aug3=47,aug3MAX=-9,cost=50},--Claidheamh Soluis/Delay
[2661]={trade={20718,8947,{65535,4}},base=20718,aug3=550,aug3MAX=14,cost=50},--Claidheamh Soluis/STR and DEX
[2662]={trade={20718,8947,{65535,5}},base=20718,aug3=515,aug3MAX=16,cost=50},--Claidheamh Soluis/AGI
[2663]={trade={20718,8947,{65535,6}},base=20718,aug3=552,aug3MAX=14,cost=50},--Claidheamh Soluis/STR and AGI
[2664]={trade={20718,8947,{65535,7}},base=20718,aug3=354,aug3MAX=1,cost=50},--Claidheamh Soluis/Quadruple Attack
[2665]={trade={20718,8956,{65535,1}},base=20718,aug3=17,aug3MAX=39,cost=50},--Claidheamh Soluis/HP and MP
[2666]={trade={20718,8956,{65535,2}},base=20718,aug3=516,aug3MAX=16,cost=50},--Claidheamh Soluis/INT
[2667]={trade={20718,8956,{65535,3}},base=20718,aug3=517,aug3MAX=16,cost=50},--Claidheamh Soluis/MND
[2668]={trade={20718,8956,{65535,4}},base=20718,aug3=554,aug3MAX=14,cost=50},--Claidheamh Soluis/INT and MND
[2669]={trade={20718,8956,{65535,5}},base=20718,aug3=362,aug3MAX=9,cost=50},--Claidheamh Soluis/Magic Damage
[2670]={trade={20718,8956,{65535,6}},base=20718,aug3=52,aug3MAX=9,cost=50},--Claidheamh Soluis/MP Recovered While Healing
[2671]={trade={20718,8956,{65535,7}},base=20718,aug3=9,aug3MAX=49,cost=50},--Claidheamh Soluis/MP
[2672]={trade={20718,8965,{65535,1}},base=20718,aug3=1,aug3MAX=39,cost=50},--Claidheamh Soluis/HP
[2673]={trade={20718,8965,{65535,2}},base=20718,aug3=9,aug3MAX=59,cost=50},--Claidheamh Soluis/MP
[2674]={trade={20718,8965,{65535,3}},base=20718,aug3=518,aug3MAX=16,cost=50},--Claidheamh Soluis/CHR
[2675]={trade={20718,8965,{65535,4}},base=20718,aug3=557,aug3MAX=14,cost=50},--Claidheamh Soluis/STR and CHR
[2676]={trade={20718,8965,{65535,5}},base=20718,aug3=43,aug3MAX=9,cost=50},--Claidheamh Soluis/Charm
[2677]={trade={20718,8965,{65535,6}},base=20718,aug3=1806,aug3MAX=14,cost=50},--Claidheamh Soluis/Pet: STR and VIT and DEX
[2678]={trade={20718,8965,{65535,7}},base=20718,aug3=122,aug3MAX=199,cost=50},--Claidheamh Soluis/Pet: TP Bonus
[2679]={trade={21105,8938,{65535,1}},base=21105,aug3=1,aug3MAX=39,cost=50},--Nehushtan /HP
[2680]={trade={21105,8938,{65535,2}},base=21105,aug3=512,aug3MAX=16,cost=50},--Nehushtan /STR
[2681]={trade={21105,8938,{65535,3}},base=21105,aug3=514,aug3MAX=16,cost=50},--Nehushtan /VIT
[2682]={trade={21105,8938,{65535,4}},base=21105,aug3=551,aug3MAX=14,cost=50},--Nehushtan /STR and VIT
[2683]={trade={21105,8938,{65535,5}},base=21105,aug3=360,aug3MAX=99,cost=50},--Nehushtan /Save TP
[2684]={trade={21105,8938,{65535,6}},base=21105,aug3=513,aug3MAX=16,cost=50},--Nehushtan /DEX
[2685]={trade={21105,8938,{65535,7}},base=21105,aug3=287,aug3MAX=24,cost=50},--Nehushtan /Weapon Damage
[2686]={trade={21105,8947,{65535,1}},base=21105,aug3=513,aug3MAX=16,cost=50},--Nehushtan /DEX
[2687]={trade={21105,8947,{65535,2}},base=21105,aug3=287,aug3MAX=24,cost=50},--Nehushtan /Weapon Damage
[2688]={trade={21105,8947,{65535,3}},base=21105,aug3=47,aug3MAX=-9,cost=50},--Nehushtan /Delay
[2689]={trade={21105,8947,{65535,4}},base=21105,aug3=550,aug3MAX=14,cost=50},--Nehushtan /STR and DEX
[2690]={trade={21105,8947,{65535,5}},base=21105,aug3=515,aug3MAX=16,cost=50},--Nehushtan /AGI
[2691]={trade={21105,8947,{65535,6}},base=21105,aug3=552,aug3MAX=14,cost=50},--Nehushtan /STR and AGI
[2692]={trade={21105,8947,{65535,7}},base=21105,aug3=354,aug3MAX=1,cost=50},--Nehushtan /Quadruple Attack
[2693]={trade={21105,8956,{65535,1}},base=21105,aug3=17,aug3MAX=39,cost=50},--Nehushtan /HP and MP
[2694]={trade={21105,8956,{65535,2}},base=21105,aug3=516,aug3MAX=16,cost=50},--Nehushtan /INT
[2695]={trade={21105,8956,{65535,3}},base=21105,aug3=517,aug3MAX=16,cost=50},--Nehushtan /MND
[2696]={trade={21105,8956,{65535,4}},base=21105,aug3=554,aug3MAX=14,cost=50},--Nehushtan /INT and MND
[2697]={trade={21105,8956,{65535,5}},base=21105,aug3=362,aug3MAX=9,cost=50},--Nehushtan /Magic Damage
[2698]={trade={21105,8956,{65535,6}},base=21105,aug3=52,aug3MAX=9,cost=50},--Nehushtan /MP Recovered While Healing
[2699]={trade={21105,8956,{65535,7}},base=21105,aug3=9,aug3MAX=49,cost=50},--Nehushtan /MP
[2700]={trade={21105,8965,{65535,1}},base=21105,aug3=1,aug3MAX=39,cost=50},--Nehushtan /HP
[2701]={trade={21105,8965,{65535,2}},base=21105,aug3=9,aug3MAX=59,cost=50},--Nehushtan /MP
[2702]={trade={21105,8965,{65535,3}},base=21105,aug3=518,aug3MAX=16,cost=50},--Nehushtan /CHR
[2703]={trade={21105,8965,{65535,4}},base=21105,aug3=557,aug3MAX=14,cost=50},--Nehushtan /STR and CHR
[2704]={trade={21105,8965,{65535,5}},base=21105,aug3=43,aug3MAX=9,cost=50},--Nehushtan /Charm
[2705]={trade={21105,8965,{65535,6}},base=21105,aug3=1806,aug3MAX=14,cost=50},--Nehushtan /Pet: STR and VIT and DEX
[2706]={trade={21105,8965,{65535,7}},base=21105,aug3=122,aug3MAX=199,cost=50},--Nehushtan /Pet: TP Bonus
[2707]={trade={20989,8938,{65535,1}},base=20989,aug3=1,aug3MAX=39,cost=50},--Izuna /HP
[2708]={trade={20989,8938,{65535,2}},base=20989,aug3=512,aug3MAX=16,cost=50},--Izuna /STR
[2709]={trade={20989,8938,{65535,3}},base=20989,aug3=514,aug3MAX=16,cost=50},--Izuna /VIT
[2710]={trade={20989,8938,{65535,4}},base=20989,aug3=551,aug3MAX=14,cost=50},--Izuna /STR and VIT
[2711]={trade={20989,8938,{65535,5}},base=20989,aug3=360,aug3MAX=99,cost=50},--Izuna /Save TP
[2712]={trade={20989,8938,{65535,6}},base=20989,aug3=513,aug3MAX=16,cost=50},--Izuna /DEX
[2713]={trade={20989,8938,{65535,7}},base=20989,aug3=287,aug3MAX=16,cost=50},--Izuna /Weapon Damage
[2714]={trade={20989,8947,{65535,1}},base=20989,aug3=513,aug3MAX=16,cost=50},--Izuna /DEX
[2715]={trade={20989,8947,{65535,2}},base=20989,aug3=287,aug3MAX=16,cost=50},--Izuna /Weapon Damage
[2716]={trade={20989,8947,{65535,3}},base=20989,aug3=47,aug3MAX=-9,cost=50},--Izuna /Delay
[2717]={trade={20989,8947,{65535,4}},base=20989,aug3=550,aug3MAX=14,cost=50},--Izuna /STR and DEX
[2718]={trade={20989,8947,{65535,5}},base=20989,aug3=515,aug3MAX=16,cost=50},--Izuna /AGI
[2719]={trade={20989,8947,{65535,6}},base=20989,aug3=552,aug3MAX=14,cost=50},--Izuna /STR and AGI
[2720]={trade={20989,8947,{65535,7}},base=20989,aug3=354,aug3MAX=1,cost=50},--Izuna /Quadruple Attack
[2721]={trade={20989,8956,{65535,1}},base=20989,aug3=17,aug3MAX=39,cost=50},--Izuna /HP and MP
[2722]={trade={20989,8956,{65535,2}},base=20989,aug3=516,aug3MAX=16,cost=50},--Izuna /INT
[2723]={trade={20989,8956,{65535,3}},base=20989,aug3=517,aug3MAX=16,cost=50},--Izuna /MND
[2724]={trade={20989,8956,{65535,4}},base=20989,aug3=554,aug3MAX=14,cost=50},--Izuna /INT and MND
[2725]={trade={20989,8956,{65535,5}},base=20989,aug3=362,aug3MAX=9,cost=50},--Izuna /Magic Damage
[2726]={trade={20989,8956,{65535,6}},base=20989,aug3=52,aug3MAX=9,cost=50},--Izuna /MP Recovered While Healing
[2727]={trade={20989,8956,{65535,7}},base=20989,aug3=9,aug3MAX=49,cost=50},--Izuna /MP
[2728]={trade={20989,8965,{65535,1}},base=20989,aug3=1,aug3MAX=39,cost=50},--Izuna /HP
[2729]={trade={20989,8965,{65535,2}},base=20989,aug3=9,aug3MAX=59,cost=50},--Izuna /MP
[2730]={trade={20989,8965,{65535,3}},base=20989,aug3=518,aug3MAX=16,cost=50},--Izuna /CHR
[2731]={trade={20989,8965,{65535,4}},base=20989,aug3=557,aug3MAX=14,cost=50},--Izuna /STR and CHR
[2732]={trade={20989,8965,{65535,5}},base=20989,aug3=43,aug3MAX=9,cost=50},--Izuna /Charm
[2733]={trade={20989,8965,{65535,6}},base=20989,aug3=1806,aug3MAX=14,cost=50},--Izuna /Pet: STR and VIT and DEX
[2734]={trade={20989,8965,{65535,7}},base=20989,aug3=122,aug3MAX=199,cost=50},--Izuna /Pet: TP Bonus
[2735]={trade={20530,8938,{65535,1}},base=20530,aug3=1,aug3MAX=59,cost=50},--Ohrmazd /HP
[2736]={trade={20530,8938,{65535,2}},base=20530,aug3=512,aug3MAX=22,cost=50},--Ohrmazd /STR
[2737]={trade={20530,8938,{65535,3}},base=20530,aug3=514,aug3MAX=22,cost=50},--Ohrmazd /VIT
[2738]={trade={20530,8938,{65535,4}},base=20530,aug3=551,aug3MAX=19,cost=50},--Ohrmazd /STR and VIT
[2739]={trade={20530,8938,{65535,5}},base=20530,aug3=360,aug3MAX=149,cost=50},--Ohrmazd /Save TP
[2740]={trade={20530,8938,{65535,6}},base=20530,aug3=513,aug3MAX=22,cost=50},--Ohrmazd /DEX
[2741]={trade={20530,8938,{65535,7}},base=20530,aug3=287,aug3MAX=28,cost=50},--Ohrmazd /Weapon Damage
[2742]={trade={20530,8947,{65535,1}},base=20530,aug3=513,aug3MAX=22,cost=50},--Ohrmazd /DEX
[2743]={trade={20530,8947,{65535,2}},base=20530,aug3=287,aug3MAX=28,cost=50},--Ohrmazd /Weapon Damage
[2744]={trade={20530,8947,{65535,3}},base=20530,aug3=211,aug3MAX=-9,cost=50},--Ohrmazd /Delay* / Snapshot*
[2745]={trade={20530,8947,{65535,4}},base=20530,aug3=550,aug3MAX=19,cost=50},--Ohrmazd /STR and DEX
[2746]={trade={20530,8947,{65535,5}},base=20530,aug3=515,aug3MAX=22,cost=50},--Ohrmazd /AGI
[2747]={trade={20530,8947,{65535,6}},base=20530,aug3=552,aug3MAX=19,cost=50},--Ohrmazd /STR and AGI
[2748]={trade={20530,8947,{65535,7}},base=20530,aug3=354,aug3MAX=2,cost=50},--Ohrmazd /Quadruple Attack
[2749]={trade={20530,8956,{65535,1}},base=20530,aug3=17,aug3MAX=59,cost=50},--Ohrmazd /HP and MP
[2750]={trade={20530,8956,{65535,2}},base=20530,aug3=516,aug3MAX=22,cost=50},--Ohrmazd /INT
[2751]={trade={20530,8956,{65535,3}},base=20530,aug3=517,aug3MAX=22,cost=50},--Ohrmazd /MND
[2752]={trade={20530,8956,{65535,4}},base=20530,aug3=554,aug3MAX=19,cost=50},--Ohrmazd /INT and MND
[2753]={trade={20530,8956,{65535,5}},base=20530,aug3=362,aug3MAX=14,cost=50},--Ohrmazd /Magic Damage
[2754]={trade={20530,8956,{65535,6}},base=20530,aug3=52,aug3MAX=19,cost=50},--Ohrmazd /MP Recovered While Healing
[2755]={trade={20530,8956,{65535,7}},base=20530,aug3=9,aug3MAX=69,cost=50},--Ohrmazd /MP
[2756]={trade={20530,8965,{65535,1}},base=20530,aug3=1,aug3MAX=69,cost=50},--Ohrmazd /HP
[2757]={trade={20530,8965,{65535,2}},base=20530,aug3=9,aug3MAX=69,cost=50},--Ohrmazd /MP
[2758]={trade={20530,8965,{65535,3}},base=20530,aug3=518,aug3MAX=22,cost=50},--Ohrmazd /CHR
[2759]={trade={20530,8965,{65535,4}},base=20530,aug3=557,aug3MAX=19,cost=50},--Ohrmazd /STR and CHR
[2760]={trade={20530,8965,{65535,5}},base=20530,aug3=43,aug3MAX=14,cost=50},--Ohrmazd /Charm
[2761]={trade={20530,8965,{65535,6}},base=20530,aug3=1806,aug3MAX=19,cost=50},--Ohrmazd /Pet: STR and VIT and DEX
[2762]={trade={20530,8965,{65535,7}},base=20530,aug3=369,aug3MAX=9,cost=50},--Ohrmazd /Blood Pact Damage
[2763]={trade={20759,8938,{65535,1}},base=20759,aug3=1,aug3MAX=59,cost=50},--Macbain /HP
[2764]={trade={20759,8938,{65535,2}},base=20759,aug3=512,aug3MAX=22,cost=50},--Macbain /STR
[2765]={trade={20759,8938,{65535,3}},base=20759,aug3=514,aug3MAX=22,cost=50},--Macbain /VIT
[2766]={trade={20759,8938,{65535,4}},base=20759,aug3=551,aug3MAX=19,cost=50},--Macbain /STR and VIT
[2767]={trade={20759,8938,{65535,5}},base=20759,aug3=360,aug3MAX=149,cost=50},--Macbain /Save TP
[2768]={trade={20759,8938,{65535,6}},base=20759,aug3=513,aug3MAX=22,cost=50},--Macbain /DEX
[2769]={trade={20759,8938,{65535,7}},base=20759,aug3=287,aug3MAX=35,cost=50},--Macbain /Weapon Damage
[2770]={trade={20759,8947,{65535,1}},base=20759,aug3=513,aug3MAX=22,cost=50},--Macbain /DEX
[2771]={trade={20759,8947,{65535,2}},base=20759,aug3=287,aug3MAX=35,cost=50},--Macbain /Weapon Damage
[2772]={trade={20759,8947,{65535,3}},base=20759,aug3=211,aug3MAX=-9,cost=50},--Macbain /Delay* / Snapshot*
[2773]={trade={20759,8947,{65535,4}},base=20759,aug3=550,aug3MAX=19,cost=50},--Macbain /STR and DEX
[2774]={trade={20759,8947,{65535,5}},base=20759,aug3=515,aug3MAX=22,cost=50},--Macbain /AGI
[2775]={trade={20759,8947,{65535,6}},base=20759,aug3=552,aug3MAX=19,cost=50},--Macbain /STR and AGI
[2776]={trade={20759,8947,{65535,7}},base=20759,aug3=354,aug3MAX=2,cost=50},--Macbain /Quadruple Attack
[2777]={trade={20759,8956,{65535,1}},base=20759,aug3=17,aug3MAX=59,cost=50},--Macbain /HP and MP
[2778]={trade={20759,8956,{65535,2}},base=20759,aug3=516,aug3MAX=22,cost=50},--Macbain /INT
[2779]={trade={20759,8956,{65535,3}},base=20759,aug3=517,aug3MAX=22,cost=50},--Macbain /MND
[2780]={trade={20759,8956,{65535,4}},base=20759,aug3=554,aug3MAX=19,cost=50},--Macbain /INT and MND
[2781]={trade={20759,8956,{65535,5}},base=20759,aug3=362,aug3MAX=14,cost=50},--Macbain /Magic Damage
[2782]={trade={20759,8956,{65535,6}},base=20759,aug3=52,aug3MAX=19,cost=50},--Macbain /MP Recovered While Healing
[2783]={trade={20759,8956,{65535,7}},base=20759,aug3=9,aug3MAX=69,cost=50},--Macbain /MP
[2784]={trade={20759,8965,{65535,1}},base=20759,aug3=1,aug3MAX=69,cost=50},--Macbain /HP
[2785]={trade={20759,8965,{65535,2}},base=20759,aug3=9,aug3MAX=69,cost=50},--Macbain /MP
[2786]={trade={20759,8965,{65535,3}},base=20759,aug3=518,aug3MAX=22,cost=50},--Macbain /CHR
[2787]={trade={20759,8965,{65535,4}},base=20759,aug3=557,aug3MAX=19,cost=50},--Macbain /STR and CHR
[2788]={trade={20759,8965,{65535,5}},base=20759,aug3=43,aug3MAX=14,cost=50},--Macbain /Charm
[2789]={trade={20759,8965,{65535,6}},base=20759,aug3=1806,aug3MAX=19,cost=50},--Macbain /Pet: STR and VIT and DEX
[2790]={trade={20759,8965,{65535,7}},base=20759,aug3=369,aug3MAX=9,cost=50},--Macbain /Blood Pact Damage
[2791]={trade={20901,8938,{65535,1}},base=20901,aug3=1,aug3MAX=59,cost=50},--Inanna /HP
[2792]={trade={20901,8938,{65535,2}},base=20901,aug3=512,aug3MAX=22,cost=50},--Inanna /STR
[2793]={trade={20901,8938,{65535,3}},base=20901,aug3=514,aug3MAX=22,cost=50},--Inanna /VIT
[2794]={trade={20901,8938,{65535,4}},base=20901,aug3=551,aug3MAX=19,cost=50},--Inanna /STR and VIT
[2795]={trade={20901,8938,{65535,5}},base=20901,aug3=360,aug3MAX=149,cost=50},--Inanna /Save TP
[2796]={trade={20901,8938,{65535,6}},base=20901,aug3=513,aug3MAX=22,cost=50},--Inanna /DEX
[2797]={trade={20901,8938,{65535,7}},base=20901,aug3=287,aug3MAX=38,cost=50},--Inanna /Weapon Damage
[2798]={trade={20901,8947,{65535,1}},base=20901,aug3=513,aug3MAX=22,cost=50},--Inanna /DEX
[2799]={trade={20901,8947,{65535,2}},base=20901,aug3=287,aug3MAX=38,cost=50},--Inanna /Weapon Damage
[2800]={trade={20901,8947,{65535,3}},base=20901,aug3=211,aug3MAX=-9,cost=50},--Inanna /Delay* / Snapshot*
[2801]={trade={20901,8947,{65535,4}},base=20901,aug3=550,aug3MAX=19,cost=50},--Inanna /STR and DEX
[2802]={trade={20901,8947,{65535,5}},base=20901,aug3=515,aug3MAX=22,cost=50},--Inanna /AGI
[2803]={trade={20901,8947,{65535,6}},base=20901,aug3=552,aug3MAX=19,cost=50},--Inanna /STR and AGI
[2804]={trade={20901,8947,{65535,7}},base=20901,aug3=354,aug3MAX=2,cost=50},--Inanna /Quadruple Attack
[2805]={trade={20901,8956,{65535,1}},base=20901,aug3=17,aug3MAX=59,cost=50},--Inanna /HP and MP
[2806]={trade={20901,8956,{65535,2}},base=20901,aug3=516,aug3MAX=22,cost=50},--Inanna /INT
[2807]={trade={20901,8956,{65535,3}},base=20901,aug3=517,aug3MAX=22,cost=50},--Inanna /MND
[2808]={trade={20901,8956,{65535,4}},base=20901,aug3=554,aug3MAX=19,cost=50},--Inanna /INT and MND
[2809]={trade={20901,8956,{65535,5}},base=20901,aug3=362,aug3MAX=14,cost=50},--Inanna /Magic Damage
[2810]={trade={20901,8956,{65535,6}},base=20901,aug3=52,aug3MAX=19,cost=50},--Inanna /MP Recovered While Healing
[2811]={trade={20901,8956,{65535,7}},base=20901,aug3=9,aug3MAX=69,cost=50},--Inanna /MP
[2812]={trade={20901,8965,{65535,1}},base=20901,aug3=1,aug3MAX=69,cost=50},--Inanna /HP
[2813]={trade={20901,8965,{65535,2}},base=20901,aug3=9,aug3MAX=69,cost=50},--Inanna /MP
[2814]={trade={20901,8965,{65535,3}},base=20901,aug3=518,aug3MAX=22,cost=50},--Inanna /CHR
[2815]={trade={20901,8965,{65535,4}},base=20901,aug3=557,aug3MAX=19,cost=50},--Inanna /STR and CHR
[2816]={trade={20901,8965,{65535,5}},base=20901,aug3=43,aug3MAX=14,cost=50},--Inanna /Charm
[2817]={trade={20901,8965,{65535,6}},base=20901,aug3=1806,aug3MAX=19,cost=50},--Inanna /Pet: STR and VIT and DEX
[2818]={trade={20901,8965,{65535,7}},base=20901,aug3=369,aug3MAX=9,cost=50},--Inanna /Blood Pact Damage
[2819]={trade={20857,8938,{65535,1}},base=20857,aug3=1,aug3MAX=59,cost=50},--Svarga /HP
[2820]={trade={20857,8938,{65535,2}},base=20857,aug3=512,aug3MAX=22,cost=50},--Svarga /STR
[2821]={trade={20857,8938,{65535,3}},base=20857,aug3=514,aug3MAX=22,cost=50},--Svarga /VIT
[2822]={trade={20857,8938,{65535,4}},base=20857,aug3=551,aug3MAX=19,cost=50},--Svarga /STR and VIT
[2823]={trade={20857,8938,{65535,5}},base=20857,aug3=360,aug3MAX=149,cost=50},--Svarga /Save TP
[2824]={trade={20857,8938,{65535,6}},base=20857,aug3=513,aug3MAX=22,cost=50},--Svarga /DEX
[2825]={trade={20857,8938,{65535,7}},base=20857,aug3=287,aug3MAX=38,cost=50},--Svarga /Weapon Damage
[2826]={trade={20857,8947,{65535,1}},base=20857,aug3=513,aug3MAX=22,cost=50},--Svarga /DEX
[2827]={trade={20857,8947,{65535,2}},base=20857,aug3=287,aug3MAX=38,cost=50},--Svarga /Weapon Damage
[2828]={trade={20857,8947,{65535,3}},base=20857,aug3=211,aug3MAX=-9,cost=50},--Svarga /Delay* / Snapshot*
[2829]={trade={20857,8947,{65535,4}},base=20857,aug3=550,aug3MAX=19,cost=50},--Svarga /STR and DEX
[2830]={trade={20857,8947,{65535,5}},base=20857,aug3=515,aug3MAX=22,cost=50},--Svarga /AGI
[2831]={trade={20857,8947,{65535,6}},base=20857,aug3=552,aug3MAX=19,cost=50},--Svarga /STR and AGI
[2832]={trade={20857,8947,{65535,7}},base=20857,aug3=354,aug3MAX=2,cost=50},--Svarga /Quadruple Attack
[2833]={trade={20857,8956,{65535,1}},base=20857,aug3=17,aug3MAX=59,cost=50},--Svarga /HP and MP
[2834]={trade={20857,8956,{65535,2}},base=20857,aug3=516,aug3MAX=22,cost=50},--Svarga /INT
[2835]={trade={20857,8956,{65535,3}},base=20857,aug3=517,aug3MAX=22,cost=50},--Svarga /MND
[2836]={trade={20857,8956,{65535,4}},base=20857,aug3=554,aug3MAX=19,cost=50},--Svarga /INT and MND
[2837]={trade={20857,8956,{65535,5}},base=20857,aug3=362,aug3MAX=14,cost=50},--Svarga /Magic Damage
[2838]={trade={20857,8956,{65535,6}},base=20857,aug3=52,aug3MAX=19,cost=50},--Svarga /MP Recovered While Healing
[2839]={trade={20857,8956,{65535,7}},base=20857,aug3=9,aug3MAX=69,cost=50},--Svarga /MP
[2840]={trade={20857,8965,{65535,1}},base=20857,aug3=1,aug3MAX=69,cost=50},--Svarga /HP
[2841]={trade={20857,8965,{65535,2}},base=20857,aug3=9,aug3MAX=69,cost=50},--Svarga /MP
[2842]={trade={20857,8965,{65535,3}},base=20857,aug3=518,aug3MAX=22,cost=50},--Svarga /CHR
[2843]={trade={20857,8965,{65535,4}},base=20857,aug3=557,aug3MAX=19,cost=50},--Svarga /STR and CHR
[2844]={trade={20857,8965,{65535,5}},base=20857,aug3=43,aug3MAX=14,cost=50},--Svarga /Charm
[2845]={trade={20857,8965,{65535,6}},base=20857,aug3=1806,aug3MAX=19,cost=50},--Svarga /Pet: STR and VIT and DEX
[2846]={trade={20857,8965,{65535,7}},base=20857,aug3=369,aug3MAX=9,cost=50},--Svarga /Blood Pact Damage
[2847]={trade={21169,8938,{65535,1}},base=21169,aug3=1,aug3MAX=59,cost=50},--Keraunos /HP
[2848]={trade={21169,8938,{65535,2}},base=21169,aug3=512,aug3MAX=22,cost=50},--Keraunos /STR
[2849]={trade={21169,8938,{65535,3}},base=21169,aug3=514,aug3MAX=22,cost=50},--Keraunos /VIT
[2850]={trade={21169,8938,{65535,4}},base=21169,aug3=551,aug3MAX=19,cost=50},--Keraunos /STR and VIT
[2851]={trade={21169,8938,{65535,5}},base=21169,aug3=360,aug3MAX=149,cost=50},--Keraunos /Save TP
[2852]={trade={21169,8938,{65535,6}},base=21169,aug3=513,aug3MAX=22,cost=50},--Keraunos /DEX
[2853]={trade={21169,8938,{65535,7}},base=21169,aug3=287,aug3MAX=30,cost=50},--Keraunos /Weapon Damage
[2854]={trade={21169,8947,{65535,1}},base=21169,aug3=513,aug3MAX=22,cost=50},--Keraunos /DEX
[2855]={trade={21169,8947,{65535,2}},base=21169,aug3=287,aug3MAX=30,cost=50},--Keraunos /Weapon Damage
[2856]={trade={21169,8947,{65535,3}},base=21169,aug3=211,aug3MAX=-9,cost=50},--Keraunos /Delay* / Snapshot*
[2857]={trade={21169,8947,{65535,4}},base=21169,aug3=550,aug3MAX=19,cost=50},--Keraunos /STR and DEX
[2858]={trade={21169,8947,{65535,5}},base=21169,aug3=515,aug3MAX=22,cost=50},--Keraunos /AGI
[2859]={trade={21169,8947,{65535,6}},base=21169,aug3=552,aug3MAX=19,cost=50},--Keraunos /STR and AGI
[2860]={trade={21169,8947,{65535,7}},base=21169,aug3=354,aug3MAX=2,cost=50},--Keraunos /Quadruple Attack
[2861]={trade={21169,8956,{65535,1}},base=21169,aug3=17,aug3MAX=59,cost=50},--Keraunos /HP and MP
[2862]={trade={21169,8956,{65535,2}},base=21169,aug3=516,aug3MAX=22,cost=50},--Keraunos /INT
[2863]={trade={21169,8956,{65535,3}},base=21169,aug3=517,aug3MAX=22,cost=50},--Keraunos /MND
[2864]={trade={21169,8956,{65535,4}},base=21169,aug3=554,aug3MAX=19,cost=50},--Keraunos /INT and MND
[2865]={trade={21169,8956,{65535,5}},base=21169,aug3=362,aug3MAX=14,cost=50},--Keraunos /Magic Damage
[2866]={trade={21169,8956,{65535,6}},base=21169,aug3=52,aug3MAX=19,cost=50},--Keraunos /MP Recovered While Healing
[2867]={trade={21169,8956,{65535,7}},base=21169,aug3=9,aug3MAX=69,cost=50},--Keraunos /MP
[2868]={trade={21169,8965,{65535,1}},base=21169,aug3=1,aug3MAX=69,cost=50},--Keraunos /HP
[2869]={trade={21169,8965,{65535,2}},base=21169,aug3=9,aug3MAX=69,cost=50},--Keraunos /MP
[2870]={trade={21169,8965,{65535,3}},base=21169,aug3=518,aug3MAX=22,cost=50},--Keraunos /CHR
[2871]={trade={21169,8965,{65535,4}},base=21169,aug3=557,aug3MAX=19,cost=50},--Keraunos /STR and CHR
[2872]={trade={21169,8965,{65535,5}},base=21169,aug3=43,aug3MAX=14,cost=50},--Keraunos /Charm
[2873]={trade={21169,8965,{65535,6}},base=21169,aug3=1806,aug3MAX=19,cost=50},--Keraunos /Pet: STR and VIT and DEX
[2874]={trade={21169,8965,{65535,7}},base=21169,aug3=369,aug3MAX=9,cost=50},--Keraunos /Blood Pact Damage
[2875]={trade={20946,8938,{65535,1}},base=20946,aug3=1,aug3MAX=59,cost=50},--Olyndicus /HP
[2876]={trade={20946,8938,{65535,2}},base=20946,aug3=512,aug3MAX=22,cost=50},--Olyndicus /STR
[2877]={trade={20946,8938,{65535,3}},base=20946,aug3=514,aug3MAX=22,cost=50},--Olyndicus /VIT
[2878]={trade={20946,8938,{65535,4}},base=20946,aug3=551,aug3MAX=19,cost=50},--Olyndicus /STR and VIT
[2879]={trade={20946,8938,{65535,5}},base=20946,aug3=360,aug3MAX=149,cost=50},--Olyndicus /Save TP
[2880]={trade={20946,8938,{65535,6}},base=20946,aug3=513,aug3MAX=22,cost=50},--Olyndicus /DEX
[2881]={trade={20946,8938,{65535,7}},base=20946,aug3=287,aug3MAX=37,cost=50},--Olyndicus /Weapon Damage
[2882]={trade={20946,8947,{65535,1}},base=20946,aug3=513,aug3MAX=22,cost=50},--Olyndicus /DEX
[2883]={trade={20946,8947,{65535,2}},base=20946,aug3=287,aug3MAX=37,cost=50},--Olyndicus /Weapon Damage
[2884]={trade={20946,8947,{65535,3}},base=20946,aug3=211,aug3MAX=-9,cost=50},--Olyndicus /Delay* / Snapshot*
[2885]={trade={20946,8947,{65535,4}},base=20946,aug3=550,aug3MAX=19,cost=50},--Olyndicus /STR and DEX
[2886]={trade={20946,8947,{65535,5}},base=20946,aug3=515,aug3MAX=22,cost=50},--Olyndicus /AGI
[2887]={trade={20946,8947,{65535,6}},base=20946,aug3=552,aug3MAX=19,cost=50},--Olyndicus /STR and AGI
[2888]={trade={20946,8947,{65535,7}},base=20946,aug3=354,aug3MAX=2,cost=50},--Olyndicus /Quadruple Attack
[2889]={trade={20946,8956,{65535,1}},base=20946,aug3=17,aug3MAX=59,cost=50},--Olyndicus /HP and MP
[2890]={trade={20946,8956,{65535,2}},base=20946,aug3=516,aug3MAX=22,cost=50},--Olyndicus /INT
[2891]={trade={20946,8956,{65535,3}},base=20946,aug3=517,aug3MAX=22,cost=50},--Olyndicus /MND
[2892]={trade={20946,8956,{65535,4}},base=20946,aug3=554,aug3MAX=19,cost=50},--Olyndicus /INT and MND
[2893]={trade={20946,8956,{65535,5}},base=20946,aug3=362,aug3MAX=14,cost=50},--Olyndicus /Magic Damage
[2894]={trade={20946,8956,{65535,6}},base=20946,aug3=52,aug3MAX=19,cost=50},--Olyndicus /MP Recovered While Healing
[2895]={trade={20946,8956,{65535,7}},base=20946,aug3=9,aug3MAX=69,cost=50},--Olyndicus /MP
[2896]={trade={20946,8965,{65535,1}},base=20946,aug3=1,aug3MAX=69,cost=50},--Olyndicus /HP
[2897]={trade={20946,8965,{65535,2}},base=20946,aug3=9,aug3MAX=69,cost=50},--Olyndicus /MP
[2898]={trade={20946,8965,{65535,3}},base=20946,aug3=518,aug3MAX=22,cost=50},--Olyndicus /CHR
[2899]={trade={20946,8965,{65535,4}},base=20946,aug3=557,aug3MAX=19,cost=50},--Olyndicus /STR and CHR
[2900]={trade={20946,8965,{65535,5}},base=20946,aug3=43,aug3MAX=14,cost=50},--Olyndicus /Charm
[2901]={trade={20946,8965,{65535,6}},base=20946,aug3=1806,aug3MAX=19,cost=50},--Olyndicus /Pet: STR and VIT and DEX
[2902]={trade={20946,8965,{65535,7}},base=20946,aug3=369,aug3MAX=9,cost=50},--Olyndicus /Blood Pact Damage
[2903]={trade={21037,8938,{65535,1}},base=21037,aug3=1,aug3MAX=59,cost=50},--Nenekirimaru /HP
[2904]={trade={21037,8938,{65535,2}},base=21037,aug3=512,aug3MAX=22,cost=50},--Nenekirimaru /STR
[2905]={trade={21037,8938,{65535,3}},base=21037,aug3=514,aug3MAX=22,cost=50},--Nenekirimaru /VIT
[2906]={trade={21037,8938,{65535,4}},base=21037,aug3=551,aug3MAX=19,cost=50},--Nenekirimaru /STR and VIT
[2907]={trade={21037,8938,{65535,5}},base=21037,aug3=360,aug3MAX=149,cost=50},--Nenekirimaru /Save TP
[2908]={trade={21037,8938,{65535,6}},base=21037,aug3=513,aug3MAX=22,cost=50},--Nenekirimaru /DEX
[2909]={trade={21037,8938,{65535,7}},base=21037,aug3=287,aug3MAX=33,cost=50},--Nenekirimaru /Weapon Damage
[2910]={trade={21037,8947,{65535,1}},base=21037,aug3=513,aug3MAX=22,cost=50},--Nenekirimaru /DEX
[2911]={trade={21037,8947,{65535,2}},base=21037,aug3=287,aug3MAX=33,cost=50},--Nenekirimaru /Weapon Damage
[2912]={trade={21037,8947,{65535,3}},base=21037,aug3=211,aug3MAX=-9,cost=50},--Nenekirimaru /Delay* / Snapshot*
[2913]={trade={21037,8947,{65535,4}},base=21037,aug3=550,aug3MAX=19,cost=50},--Nenekirimaru /STR and DEX
[2914]={trade={21037,8947,{65535,5}},base=21037,aug3=515,aug3MAX=22,cost=50},--Nenekirimaru /AGI
[2915]={trade={21037,8947,{65535,6}},base=21037,aug3=552,aug3MAX=19,cost=50},--Nenekirimaru /STR and AGI
[2916]={trade={21037,8947,{65535,7}},base=21037,aug3=354,aug3MAX=2,cost=50},--Nenekirimaru /Quadruple Attack
[2917]={trade={21037,8956,{65535,1}},base=21037,aug3=17,aug3MAX=59,cost=50},--Nenekirimaru /HP and MP
[2918]={trade={21037,8956,{65535,2}},base=21037,aug3=516,aug3MAX=22,cost=50},--Nenekirimaru /INT
[2919]={trade={21037,8956,{65535,3}},base=21037,aug3=517,aug3MAX=22,cost=50},--Nenekirimaru /MND
[2920]={trade={21037,8956,{65535,4}},base=21037,aug3=554,aug3MAX=19,cost=50},--Nenekirimaru /INT and MND
[2921]={trade={21037,8956,{65535,5}},base=21037,aug3=362,aug3MAX=14,cost=50},--Nenekirimaru /Magic Damage
[2922]={trade={21037,8956,{65535,6}},base=21037,aug3=52,aug3MAX=19,cost=50},--Nenekirimaru /MP Recovered While Healing
[2923]={trade={21037,8956,{65535,7}},base=21037,aug3=9,aug3MAX=69,cost=50},--Nenekirimaru /MP
[2924]={trade={21037,8965,{65535,1}},base=21037,aug3=1,aug3MAX=69,cost=50},--Nenekirimaru /HP
[2925]={trade={21037,8965,{65535,2}},base=21037,aug3=9,aug3MAX=69,cost=50},--Nenekirimaru /MP
[2926]={trade={21037,8965,{65535,3}},base=21037,aug3=518,aug3MAX=22,cost=50},--Nenekirimaru /CHR
[2927]={trade={21037,8965,{65535,4}},base=21037,aug3=557,aug3MAX=19,cost=50},--Nenekirimaru /STR and CHR
[2928]={trade={21037,8965,{65535,5}},base=21037,aug3=43,aug3MAX=14,cost=50},--Nenekirimaru /Charm
[2929]={trade={21037,8965,{65535,6}},base=21037,aug3=1806,aug3MAX=19,cost=50},--Nenekirimaru /Pet: STR and VIT and DEX
[2930]={trade={21037,8965,{65535,7}},base=21037,aug3=369,aug3MAX=9,cost=50},--Nenekirimaru /Blood Pact Damage
[2931]={trade={21224,8938,{65535,1}},base=21224,aug3=1,aug3MAX=59,cost=50},--Phaosphaelia /HP
[2932]={trade={21224,8938,{65535,2}},base=21224,aug3=512,aug3MAX=22,cost=50},--Phaosphaelia /STR
[2933]={trade={21224,8938,{65535,3}},base=21224,aug3=514,aug3MAX=22,cost=50},--Phaosphaelia /VIT
[2934]={trade={21224,8938,{65535,4}},base=21224,aug3=551,aug3MAX=19,cost=50},--Phaosphaelia /STR and VIT
[2935]={trade={21224,8938,{65535,5}},base=21224,aug3=360,aug3MAX=149,cost=50},--Phaosphaelia /Save TP
[2936]={trade={21224,8938,{65535,6}},base=21224,aug3=513,aug3MAX=22,cost=50},--Phaosphaelia /DEX
[2937]={trade={21224,8938,{65535,7}},base=21224,aug3=287,aug3MAX=31,cost=50},--Phaosphaelia /Weapon Damage
[2938]={trade={21224,8947,{65535,1}},base=21224,aug3=513,aug3MAX=22,cost=50},--Phaosphaelia /DEX
[2939]={trade={21224,8947,{65535,2}},base=21224,aug3=287,aug3MAX=31,cost=50},--Phaosphaelia /Weapon Damage
[2940]={trade={21224,8947,{65535,3}},base=21224,aug3=211,aug3MAX=-9,cost=50},--Phaosphaelia /Delay* / Snapshot*
[2941]={trade={21224,8947,{65535,4}},base=21224,aug3=550,aug3MAX=19,cost=50},--Phaosphaelia /STR and DEX
[2942]={trade={21224,8947,{65535,5}},base=21224,aug3=515,aug3MAX=22,cost=50},--Phaosphaelia /AGI
[2943]={trade={21224,8947,{65535,6}},base=21224,aug3=552,aug3MAX=19,cost=50},--Phaosphaelia /STR and AGI
[2944]={trade={21224,8947,{65535,7}},base=21224,aug3=354,aug3MAX=2,cost=50},--Phaosphaelia /Quadruple Attack
[2945]={trade={21224,8956,{65535,1}},base=21224,aug3=17,aug3MAX=59,cost=50},--Phaosphaelia /HP and MP
[2946]={trade={21224,8956,{65535,2}},base=21224,aug3=516,aug3MAX=22,cost=50},--Phaosphaelia /INT
[2947]={trade={21224,8956,{65535,3}},base=21224,aug3=517,aug3MAX=22,cost=50},--Phaosphaelia /MND
[2948]={trade={21224,8956,{65535,4}},base=21224,aug3=554,aug3MAX=19,cost=50},--Phaosphaelia /INT and MND
[2949]={trade={21224,8956,{65535,5}},base=21224,aug3=362,aug3MAX=14,cost=50},--Phaosphaelia /Magic Damage
[2950]={trade={21224,8956,{65535,6}},base=21224,aug3=52,aug3MAX=19,cost=50},--Phaosphaelia /MP Recovered While Healing
[2951]={trade={21224,8956,{65535,7}},base=21224,aug3=9,aug3MAX=69,cost=50},--Phaosphaelia /MP
[2952]={trade={21224,8965,{65535,1}},base=21224,aug3=1,aug3MAX=69,cost=50},--Phaosphaelia /HP
[2953]={trade={21224,8965,{65535,2}},base=21224,aug3=9,aug3MAX=69,cost=50},--Phaosphaelia /MP
[2954]={trade={21224,8965,{65535,3}},base=21224,aug3=518,aug3MAX=22,cost=50},--Phaosphaelia /CHR
[2955]={trade={21224,8965,{65535,4}},base=21224,aug3=557,aug3MAX=19,cost=50},--Phaosphaelia /STR and CHR
[2956]={trade={21224,8965,{65535,5}},base=21224,aug3=43,aug3MAX=14,cost=50},--Phaosphaelia /Charm
[2957]={trade={21224,8965,{65535,6}},base=21224,aug3=1806,aug3MAX=19,cost=50},--Phaosphaelia /Pet: STR and VIT and DEX
[2958]={trade={21224,8965,{65535,7}},base=21224,aug3=369,aug3MAX=9,cost=50},--Phaosphaelia /Blood Pact Damage
[2959]={trade={21476,8938,{65535,1}},base=21476,aug3=1,aug3MAX=59,cost=50},--Doomsday /HP
[2960]={trade={21476,8938,{65535,2}},base=21476,aug3=512,aug3MAX=22,cost=50},--Doomsday /STR
[2961]={trade={21476,8938,{65535,3}},base=21476,aug3=514,aug3MAX=22,cost=50},--Doomsday /VIT
[2962]={trade={21476,8938,{65535,4}},base=21476,aug3=551,aug3MAX=19,cost=50},--Doomsday /STR and VIT
[2963]={trade={21476,8938,{65535,5}},base=21476,aug3=360,aug3MAX=149,cost=50},--Doomsday /Save TP
[2964]={trade={21476,8938,{65535,6}},base=21476,aug3=513,aug3MAX=22,cost=50},--Doomsday /DEX
[2965]={trade={21476,8938,{65535,7}},base=21476,aug3=287,aug3MAX=20,cost=50},--Doomsday /Weapon Damage
[2966]={trade={21476,8947,{65535,1}},base=21476,aug3=513,aug3MAX=22,cost=50},--Doomsday /DEX
[2967]={trade={21476,8947,{65535,2}},base=21476,aug3=287,aug3MAX=20,cost=50},--Doomsday /Weapon Damage
[2968]={trade={21476,8947,{65535,3}},base=21476,aug3=211,aug3MAX=-9,cost=50},--Doomsday /Delay* / Snapshot*
[2969]={trade={21476,8947,{65535,4}},base=21476,aug3=550,aug3MAX=19,cost=50},--Doomsday /STR and DEX
[2970]={trade={21476,8947,{65535,5}},base=21476,aug3=515,aug3MAX=22,cost=50},--Doomsday /AGI
[2971]={trade={21476,8947,{65535,6}},base=21476,aug3=552,aug3MAX=19,cost=50},--Doomsday /STR and AGI
[2972]={trade={21476,8947,{65535,7}},base=21476,aug3=354,aug3MAX=2,cost=50},--Doomsday /Quadruple Attack
[2973]={trade={21476,8956,{65535,1}},base=21476,aug3=17,aug3MAX=59,cost=50},--Doomsday /HP and MP
[2974]={trade={21476,8956,{65535,2}},base=21476,aug3=516,aug3MAX=22,cost=50},--Doomsday /INT
[2975]={trade={21476,8956,{65535,3}},base=21476,aug3=517,aug3MAX=22,cost=50},--Doomsday /MND
[2976]={trade={21476,8956,{65535,4}},base=21476,aug3=554,aug3MAX=19,cost=50},--Doomsday /INT and MND
[2977]={trade={21476,8956,{65535,5}},base=21476,aug3=362,aug3MAX=14,cost=50},--Doomsday /Magic Damage
[2978]={trade={21476,8956,{65535,6}},base=21476,aug3=52,aug3MAX=19,cost=50},--Doomsday /MP Recovered While Healing
[2979]={trade={21476,8956,{65535,7}},base=21476,aug3=9,aug3MAX=69,cost=50},--Doomsday /MP
[2980]={trade={21476,8965,{65535,1}},base=21476,aug3=1,aug3MAX=69,cost=50},--Doomsday /HP
[2981]={trade={21476,8965,{65535,2}},base=21476,aug3=9,aug3MAX=69,cost=50},--Doomsday /MP
[2982]={trade={21476,8965,{65535,3}},base=21476,aug3=518,aug3MAX=22,cost=50},--Doomsday /CHR
[2983]={trade={21476,8965,{65535,4}},base=21476,aug3=557,aug3MAX=19,cost=50},--Doomsday /STR and CHR
[2984]={trade={21476,8965,{65535,5}},base=21476,aug3=43,aug3MAX=14,cost=50},--Doomsday /Charm
[2985]={trade={21476,8965,{65535,6}},base=21476,aug3=1806,aug3MAX=19,cost=50},--Doomsday /Pet: STR and VIT and DEX
[2986]={trade={21476,8965,{65535,7}},base=21476,aug3=369,aug3MAX=9,cost=50},--Doomsday /Blood Pact Damage
[2987]={trade={21404,8938,{65535,1}},base=21404,aug3=1,aug3MAX=19,cost=50},--Linos/HP
[2988]={trade={21404,8938,{65535,2}},base=21404,aug3=512,aug3MAX=7,cost=50},--Linos/STR
[2989]={trade={21404,8938,{65535,3}},base=21404,aug3=514,aug3MAX=7,cost=50},--Linos/VIT
[2990]={trade={21404,8938,{65535,4}},base=21404,aug3=551,aug3MAX=5,cost=50},--Linos/STR and VIT
[2991]={trade={21404,8938,{65535,5}},base=21404,aug3=360,aug3MAX=29,cost=50},--Linos/Save TP
[2992]={trade={21404,8947,{65535,1}},base=21404,aug3=513,aug3MAX=7,cost=50},--Linos/DEX
[2993]={trade={21404,8947,{65535,2}},base=21404,aug3=550,aug3MAX=5,cost=50},--Linos/STR and DEX
[2994]={trade={21404,8947,{65535,3}},base=21404,aug3=515,aug3MAX=7,cost=50},--Linos/AGI
[2995]={trade={21404,8947,{65535,4}},base=21404,aug3=552,aug3MAX=5,cost=50},--Linos/STR and AGI
[2996]={trade={21404,8947,{65535,5}},base=21404,aug3=354,aug3MAX=2,cost=50},--Linos/Quadruple Attack
[2997]={trade={21404,8956,{65535,1}},base=21404,aug3=516,aug3MAX=7,cost=50},--Linos/INT
[2998]={trade={21404,8956,{65535,2}},base=21404,aug3=517,aug3MAX=7,cost=50},--Linos/MND
[2999]={trade={21404,8956,{65535,3}},base=21404,aug3=554,aug3MAX=5,cost=50},--Linos/INT and MND
[3000]={trade={21404,8956,{65535,4}},base=21404,aug3=296,aug3MAX=9,cost=50},--Linos/Singing Skill
[3001]={trade={21404,8956,{65535,5}},base=21404,aug3=9,aug3MAX=19,cost=50},--Linos/MP
[3002]={trade={21404,8965,{65535,1}},base=21404,aug3=1,aug3MAX=19,cost=50},--Linos/HP
[3003]={trade={21404,8965,{65535,2}},base=21404,aug3=9,aug3MAX=19,cost=50},--Linos/MP
[3004]={trade={21404,8965,{65535,3}},base=21404,aug3=518,aug3MAX=7,cost=50},--Linos/CHR
[3005]={trade={21404,8965,{65535,4}},base=21404,aug3=557,aug3MAX=5,cost=50},--Linos/STR and CHR
[3006]={trade={21404,8965,{65535,5}},base=21404,aug3=369,aug3MAX=9,cost=50},--Linos/Blood Pact Damage
[3007]={trade={27627,8938,{65535,1}},base=27627,aug3=1,aug3MAX=79,cost=50},--Svalinn/HP
[3008]={trade={27627,8938,{65535,2}},base=27627,aug3=514,aug3MAX=7,cost=50},--Svalinn/VIT
[3009]={trade={27627,8938,{65535,3}},base=27627,aug3=551,aug3MAX=5,cost=50},--Svalinn/STR and VIT
[3010]={trade={27627,8938,{65535,4}},base=27627,aug3=360,aug3MAX=29,cost=50},--Svalinn/Save TP
[3011]={trade={27627,8938,{65535,5}},base=27627,aug3=286,aug3MAX=9,cost=50},--Svalinn/Shield Skill
[3012]={trade={27627,8938,{65535,6}},base=27627,aug3=512,aug3MAX=7,cost=50},--Svalinn/STR
[3013]={trade={27627,8947,{65535,1}},base=27627,aug3=1,aug3MAX=79,cost=50},--Svalinn/HP
[3014]={trade={27627,8947,{65535,2}},base=27627,aug3=512,aug3MAX=7,cost=50},--Svalinn/STR
[3015]={trade={27627,8947,{65535,3}},base=27627,aug3=513,aug3MAX=7,cost=50},--Svalinn/DEX
[3016]={trade={27627,8947,{65535,4}},base=27627,aug3=515,aug3MAX=7,cost=50},--Svalinn/AGI
[3017]={trade={27627,8956,{65535,1}},base=27627,aug3=516,aug3MAX=7,cost=50},--Svalinn/INT
[3018]={trade={27627,8956,{65535,2}},base=27627,aug3=517,aug3MAX=7,cost=50},--Svalinn/MND
[3019]={trade={27627,8956,{65535,3}},base=27627,aug3=554,aug3MAX=5,cost=50},--Svalinn/INT and MND
[3020]={trade={27627,8956,{65535,4}},base=27627,aug3=362,aug3MAX=14,cost=50},--Svalinn/Magic Damage
[3021]={trade={27627,8956,{65535,5}},base=27627,aug3=9,aug3MAX=79,cost=50},--Svalinn/MP
[3022]={trade={27627,8965,{65535,1}},base=27627,aug3=1,aug3MAX=79,cost=50},--Svalinn/HP
[3023]={trade={27627,8965,{65535,2}},base=27627,aug3=9,aug3MAX=79,cost=50},--Svalinn/MP
[3024]={trade={27627,8965,{65535,3}},base=27627,aug3=518,aug3MAX=7,cost=50},--Svalinn/CHR
[3025]={trade={27627,8965,{65535,4}},base=27627,aug3=557,aug3MAX=5,cost=50},--Svalinn/STR and CHR
[3026]={trade={27627,8965,{65535,5}},base=27627,aug3=369,aug3MAX=9,cost=50},--Svalinn/Blood Pact Damage
}
-----------------------------------------------------------------------------------------------------
-- trade alluvion skirmish armor weapons
-----------------------------------------------------------------------------------------------------
		local tradeedItemx = 0
    if tradeedItemx == 0 then
--		if player:getCharVar("[DGAug]item") == 0 then
			for k, v in pairs(AskirAug) do
				if npcUtil.tradeHasExactly(trade, v.trade) then 
					tradeedItemx = k
					break
                end
			end
--		end
    end
        local itemparax = 0
		if tradeedItemx > 0 then
			local rewardItemIdx = AskirAug[tradeedItemx].base
        


-----------------------------------------------------------------------------------------------------
-- get data - trade in already augmented alluvion skirmish gear for new augments
-----------------------------------------------------------------------------------------------------
    local function packAugment(augmentTable)
          return bit.lshift(augmentTable[2], 11) + augmentTable[1]
    end
            local slots =
                  {
                  {trade:getItemId(0), trade:getSlotQty(0), trade:getItem(0)},
                  {trade:getItemId(1), trade:getSlotQty(1), trade:getItem(1)},
                  {trade:getItemId(2), trade:getSlotQty(2), trade:getItem(2)},
                  {trade:getItemId(3), trade:getSlotQty(3), trade:getItem(3)},
                  {trade:getItemId(4), trade:getSlotQty(4), trade:getItem(4)},
                  {trade:getItemId(5), trade:getSlotQty(5), trade:getItem(5)},
                  {trade:getItemId(6), trade:getSlotQty(6), trade:getItem(6)},
                  {trade:getItemId(7), trade:getSlotQty(7), trade:getItem(7)},
                  }
              local itemObjb = 0
                  if itemObjb == 0 then
                        for v, line in pairs(slots) do
                                if line[1] == rewardItemIdx then
                                   itemObj = line[3]
                                end
                        end
                  end

    local itemId     = itemObj:getID()
    local lookupKeys = { itemId, 0, 0, 0, 0 }
        for augSlot = 0, 3 do
            lookupKeys[augSlot] = packAugment(itemObj:getAugment(augSlot))
        end
    local valueone  = lookupKeys[0] / 2048
    local valuea = math.floor(valueone)
    local augone   = valuea * 2048
    local auga   = lookupKeys[0] - augone
    local valuetwo  = lookupKeys[1] / 2048
    local valueb = math.floor(valuetwo)
    local augtwo   = valueb * 2048
    local augb   = lookupKeys[1] - augtwo
    local valuethree  = lookupKeys[2] / 2048
    local valuec = math.floor(valuethree)
    local augthree   = valuec * 2048
    local augc   = lookupKeys[2] - augthree
    local valuefour  = lookupKeys[3] / 2048
    local valued = math.floor(valuefour)
    local augfour   = valued * 2048
    local augd   = lookupKeys[3] - augfour
    -- original augment 1 calculation
    local calcc = lookupKeys[0] * 65536
    local calcd = calcc + 770

    player:printToPlayer(string.format('a %s %s b %s %s c %s %s', auga,valuea, augb, valueb, augc, valuec))



            itemparax = rewardItemIdx * 65536
			player:setCharVar("[DGAug]item", rewardItemIdx) 
			npc:setLocalVar("rewardItemId", AskirAug[tradeedItemx].base)
            if AskirAug[tradeedItemx].aug1 == nil then
			npc:setLocalVar("aug1", 0)
            else
			npc:setLocalVar("aug1", AskirAug[tradeedItemx].aug1)
            end
            if AskirAug[tradeedItemx].aug2 == nil then
			npc:setLocalVar("aug2", 0)
            else
			npc:setLocalVar("aug2", AskirAug[tradeedItemx].aug2)
            end
            if AskirAug[tradeedItemx].aug3 == nil then
			npc:setLocalVar("aug3", 0)
            else
			npc:setLocalVar("aug3", AskirAug[tradeedItemx].aug3)
            end
            if AskirAug[tradeedItemx].aug1MAX == nil then
			npc:setLocalVar("aug1MAX", 0)
            else
			npc:setLocalVar("aug1MAX", AskirAug[tradeedItemx].aug1MAX)
            end
            if AskirAug[tradeedItemx].aug2MAX == nil then
			npc:setLocalVar("aug2MAX", 0)
            else
			npc:setLocalVar("aug2MAX", AskirAug[tradeedItemx].aug2MAX)
            end
            if AskirAug[tradeedItemx].aug3MAX == nil then
			npc:setLocalVar("aug3MAX", 0)
            else
			npc:setLocalVar("aug3MAX", AskirAug[tradeedItemx].aug3MAX)
            end
			npc:setLocalVar("augcost", AskirAug[tradeedItemx].cost)


              local    newaugidc    = 0
              local    newaugvac    = 0
              local    newaugvalc   = 0
              local    newaugidd    = 0
              local    newaugvad    = 0
              local    newaugvald   = 0
              local    newaugide    = 0
              local    newaugvae    = 0
              local    newaugvale   = 0
              local    newaugonea   = 0
              local    newaugtwoa   = 0
              local    newaugthreea   = 0


            if AskirAug[tradeedItemx].aug1 == nil and
               AskirAug[tradeedItemx].aug2 == nil then
                  newaugidc    = AskirAug[tradeedItemx].aug3
                  newaugvac    = AskirAug[tradeedItemx].aug3MAX
                  newaugvalc   = newaugvac * 2048
                  newaugonea   = (newaugidc + newaugvalc) * 65536 + 770
              player:printToPlayer(string.format('One %s two %s three %s', calcb,lookupKeys[1],lookupKeys[2] ))
            elseif AskirAug[tradeedItemx].aug1 == nil and
                   AskirAug[tradeedItemx].aug2 ~= nil then
                    newaugidc    = AskirAug[tradeedItemx].aug2
                    newaugvac    = AskirAug[tradeedItemx].aug2MAX
                    newaugvalc   = newaugvac * 2048
                    newaugonea   = (newaugidc + newaugvalc) * 65536 + 770
              player:printToPlayer(string.format('One %s', newaugonec))
              player:printToPlayer(string.format('One %s two %s three %s', calcb,lookupKeys[1],lookupKeys[2] ))
            else
                  newaugidc    = AskirAug[tradeedItemx].aug1
                  newaugvac    = AskirAug[tradeedItemx].aug1MAX
                  newaugvalc   = newaugvac * 2048
                  newaugonea   =  (newaugidc + newaugvalc) * 65536 + 770
              player:printToPlayer(string.format('Two %s', newaugonec))
            end



            --[[
            if AskirAug[tradeedItemx].aug2 == nil then
              local    newaugida    = 0
              local    newaugvala   = 0
              local   newaugtwo   =  0
            else
               local   newaugida    = AskirAug[tradeedItemx].aug2
               local   newaugvaa    = AskirAug[tradeedItemx].aug2MAX
               local   newaugvala   = newaugvaa * 2048
               local   newaugtwo   = (newaugida + newaugvala) * 65536
            end

            if AskirAug[tradeedItemx].aug3 == nil then
              local    newaugidb    = 0
              local    newaugvalb   = 0
              local    newaugthree =  0
            else
               local   newaugidb    = AskirAug[tradeedItemx].aug3
               local   newaugvab    = AskirAug[tradeedItemx].aug3MAX
               local   newaugvalb   = newaugvab * 2048
               local    newaugthree = (newaugidb + newaugvalb) * 65536
            end]]--
                          player:printToPlayer(string.format('Three %s', newaugonec))
        player:startEvent(7615, itemparax, amount, calcd, lookupKeys[1], lookupKeys[2], newaugonea , newaugtwoa , newaugthreea)
end
-----------------------------------------------------------------------------------------------------
-- trade skirmish armor weapons
-----------------------------------------------------------------------------------------------------
   local tradeedItem = 0
    if tradeedItem == 0 then
			for k, v in pairs(skirAug) do
				if npcUtil.tradeHasExactly(trade, v.trade) then 
					tradeedItem = k
					break
                end
			end
    end
   local itempara = 0
if tradeedItem > 0 then
			local rewardItemId = skirAug[tradeedItem].base
        


-----------------------------------------------------------------------------------------------------
-- get data - trade in already augmented skirmish gear for new augments
-----------------------------------------------------------------------------------------------------
    local function packAugment(augmentTable)
          return bit.lshift(augmentTable[2], 11) + augmentTable[1]
    end
            local slots =
                  {
                  {trade:getItemId(0), trade:getSlotQty(0), trade:getItem(0)},
                  {trade:getItemId(1), trade:getSlotQty(1), trade:getItem(1)},
                  {trade:getItemId(2), trade:getSlotQty(2), trade:getItem(2)},
                  {trade:getItemId(3), trade:getSlotQty(3), trade:getItem(3)},
                  {trade:getItemId(4), trade:getSlotQty(4), trade:getItem(4)},
                  {trade:getItemId(5), trade:getSlotQty(5), trade:getItem(5)},
                  {trade:getItemId(6), trade:getSlotQty(6), trade:getItem(6)},
                  {trade:getItemId(7), trade:getSlotQty(7), trade:getItem(7)},
                  }
              local itemObjb = 0
                  if itemObjb == 0 then
                        for v, line in pairs(slots) do
                                if line[1] == rewardItemId then
                                   itemObj = line[3]
                                end
                        end
                  end

    local itemId     = itemObj:getID()
    local lookupKeys = { itemId, 0, 0, 0, 0 }
        for augSlot = 0, 3 do
            lookupKeys[augSlot] = packAugment(itemObj:getAugment(augSlot))
        end
    local valueone  = lookupKeys[0] / 2048
    local valuea = math.floor(valueone)
    local augone   = valuea * 2048
    local auga   = lookupKeys[0] - augone
    local valuetwo  = lookupKeys[1] / 2048
    local valueb = math.floor(valuetwo)
    local augtwo   = valueb * 2048
    local augb   = lookupKeys[1] - augtwo
    local valuethree  = lookupKeys[2] / 2048
    local valuec = math.floor(valuethree)
    local augthree   = valuec * 2048
    local augc   = lookupKeys[2] - augthree
    local valuefour  = lookupKeys[3] / 2048
    local valued = math.floor(valuefour)
    local augfour   = valued * 2048
    local augd   = lookupKeys[3] - augfour
    -- original augment 1 calculation
    local calca = lookupKeys[0] * 65536
    local calcb = calca + 770

            itempara = rewardItemId * 65536
			player:setCharVar("[DGAug]item", rewardItemId) 
			npc:setLocalVar("rewardItemId", skirAug[tradeedItem].base)
			npc:setLocalVar("aug1", skirAug[tradeedItem].aug1)
			npc:setLocalVar("aug2", skirAug[tradeedItem].aug2)
			npc:setLocalVar("aug3", skirAug[tradeedItem].aug3)
			npc:setLocalVar("aug1MAX", skirAug[tradeedItem].aug1MAX)
			npc:setLocalVar("aug2MAX", skirAug[tradeedItem].aug2MAX)
			npc:setLocalVar("aug3MAX", skirAug[tradeedItem].aug3MAX)
			npc:setLocalVar("augcost", skirAug[tradeedItem].cost)
        local newaugid    = skirAug[tradeedItem].aug1
        local newaugva    = skirAug[tradeedItem].aug1MAX
        local newaugval   = newaugva * 2048

        local newaugida    = skirAug[tradeedItem].aug2
        local newaugvaa    = skirAug[tradeedItem].aug2MAX
        local newaugvala   = newaugvaa * 2048

        local newaugidb    = skirAug[tradeedItem].aug3
        local newaugvab    = skirAug[tradeedItem].aug3MAX
        local newaugvalb   = newaugvab * 2048

        local newaugone   =  (newaugid + newaugval) * 65536 + 770
        local newaugtwo   = (newaugida + newaugvala) * 65536
        local newaugthree = (newaugidb + newaugvalb) * 65536
        player:startEvent(7561, itempara, amount, calcb, lookupKeys[1], lookupKeys[2], newaugone , newaugtwo , newaugthree)
end

local count = trade:getItemCount()

local skirUpg = -- upgrade skirmish armor & weapons to +1  NQ / KI / bayld
{
[ 1] = {trade = {28192}, key=2526,cost=4000,reward=28160},-- cizin breeches +1
[ 2] = {trade = {28332}, key=2526,cost=4000,reward=28297},-- cizin greaves +1
[ 3] = {trade = {27768}, key=2526,cost=4000,reward=27728},-- cizin helm +1
[ 4] = {trade = {27912}, key=2526,cost=4000,reward=27874},-- cizin mail +1
[ 5] = {trade = {28051}, key=2526,cost=4000,reward=28018},-- cizin mufflers +1
[ 6] = {trade = {27915}, key=2526,cost=4000,reward=27877},-- gendewitha bliaut +1
[ 7] = {trade = {27771}, key=2526,cost=4000,reward=27731},-- gendewitha caubeen +1
[ 8] = {trade = {28054}, key=2526,cost=4000,reward=28021},-- gendewitha gages +1
[ 9] = {trade = {28335}, key=2526,cost=4000,reward=28300},-- gendewitha galoshes +1
[10] = {trade = {28195}, key=2526,cost=4000,reward=28163},-- gendewitha spats +1
[11] = {trade = {27916}, key=2526,cost=4000,reward=27878},-- hagondes coat +1
[12] = {trade = {28055}, key=2526,cost=4000,reward=28022},-- hagondes cuffs +1
[13] = {trade = {27772}, key=2526,cost=4000,reward=27732},-- hagondes hat +1
[14] = {trade = {28196}, key=2526,cost=4000,reward=28164},-- hagondes pants +1
[15] = {trade = {28336}, key=2526,cost=4000,reward=28301},-- hagondes sabots +1
[16] = {trade = {28334}, key=2526,cost=4000,reward=28299},-- iuitl gaiters +1
[17] = {trade = {27770}, key=2526,cost=4000,reward=27730},-- iuitl headgear +1
[18] = {trade = {28194}, key=2526,cost=4000,reward=28162},-- iuitl tights +1
[19] = {trade = {27914}, key=2526,cost=4000,reward=27876},-- iuitl vest +1
[20] = {trade = {28053}, key=2526,cost=4000,reward=28020},-- iuitl wristbands +1
[21] = {trade = {28333}, key=2526,cost=4000,reward=28298},-- otronif boots +1
[22] = {trade = {28193}, key=2526,cost=4000,reward=28161},-- otronif brais +1
[23] = {trade = {28052}, key=2526,cost=4000,reward=28019},-- otronif gloves +1
[24] = {trade = {27913}, key=2526,cost=4000,reward=27875},-- otronif harness +1
[25] = {trade = {27769}, key=2526,cost=4000,reward=27729},-- otronif mask +1
[26] = {trade = {20553}, key=2451,cost=4000,reward=20546},-- ninzas +1
[27] = {trade = {20546}, key=2526,cost=4000,reward=20539},-- ninzas +2
[28] = {trade = {20641}, key=2451,cost=4000,reward=20634},-- leisilonu +1
[29] = {trade = {20634}, key=2526,cost=4000,reward=20623},-- leisilonu +2
[30] = {trade = {20742}, key=2451,cost=4000,reward=20736},-- iztaasu +1
[31] = {trade = {20736}, key=2526,cost=4000,reward=20725},-- iztaasu +2
[32] = {trade = {20924}, key=2451,cost=4000,reward=20915},-- iizamal +1
[33] = {trade = {20915}, key=2526,cost=4000,reward=20907},-- iizamal +2
[34] = {trade = {20967}, key=2451,cost=4000,reward=20961},-- qatsunoci +1
[35] = {trade = {20961}, key=2526,cost=4000,reward=20952},-- qatsunoci +2
[36] = {trade = {21058}, key=2451,cost=4000,reward=21051},-- shichishito +1
[37] = {trade = {21051}, key=2526,cost=4000,reward=21043},-- shichishito +2
[38] = {trade = {21209}, key=2451,cost=4000,reward=21195},-- uffrat +1
[39] = {trade = {21195}, key=2526,cost=4000,reward=21180},-- uffrat +2
[40] = {trade = {21242}, key=2451,cost=4000,reward=21236},-- bocluamni +1
[41] = {trade = {21236}, key=2526,cost=4000,reward=21230},-- bocluamni +2
[42] = {trade = {20787}, key=2451,cost=4000,reward=20775},-- crobaci +1
[43] = {trade = {20775}, key=2526,cost=4000,reward=20764},-- crobaci +2
[44] = {trade = {20833}, key=2451,cost=4000,reward=20824},-- faizzeer +1
[45] = {trade = {20824}, key=2526,cost=4000,reward=20816},-- faizzeer +2
[46] = {trade = {20877}, key=2451,cost=4000,reward=20870},-- iclamar +1
[47] = {trade = {20870}, key=2526,cost=4000,reward=20863},-- iclamar +2
[48] = {trade = {21013}, key=2451,cost=4000,reward=21004},-- kannakiri +1
[49] = {trade = {21004}, key=2526,cost=4000,reward=20996},-- kannakiri +2
[50] = {trade = {21132}, key=2451,cost=4000,reward=21126},-- aedold +1
[51] = {trade = {21126}, key=2526,cost=4000,reward=21115},-- aedold +2
[52] = {trade = {21294}, key=2451,cost=4000,reward=21286},-- hgafircian +1
[53] = {trade = {21286}, key=2526,cost=4000,reward=21279},-- hgafircian +2
[54] = {trade = {21208}, key=2451,cost=4000,reward=21194},-- lehbrailg +1
[55] = {trade = {21194}, key=2526,cost=4000,reward=21179},-- lehbrailg +2
}


local stoneupgrade = -- upgrade stones 
{
[ 1] = {trade = {{ 3954, 25},{65535,1}}, reward = 3955}, -- ghastly_stone_1
[ 2] = {trade = {{ 3955,  4},{65535,1}}, reward = 3956}, -- ghastly_stone_2
[ 3] = {trade = {{ 4033, 25},{65535,1}}, reward = 4034}, -- verdigris_stone_1
[ 4] = {trade = {{ 4034,  4},{65535,1}}, reward = 4035}, -- verdigris_stone_2
[ 5] = {trade = {{ 3951, 25},{65535,1}}, reward = 3952}, -- wailing_stone_1
[ 6] = {trade = {{ 3952,  4},{65535,1}}, reward = 3953}, -- wailing_stone_2
[ 7] = {trade = {{ 8930, 25},{65535,1}}, reward = 8931}, -- snowslit_stone_1
[ 8] = {trade = {{ 8931,  4},{65535,1}}, reward = 8932}, -- snowslit_stone_2
[ 9] = {trade = {{ 8939, 25},{65535,1}}, reward = 8940}, -- snowtip_stone_1
[10] = {trade = {{ 8940,  4},{65535,1}}, reward = 8941}, -- snowtip_stone_2
[11] = {trade = {{ 8958, 25},{65535,1}}, reward = 8949}, -- snowdim_stone_1
[12] = {trade = {{ 8949,  4},{65535,1}}, reward = 8950}, -- snowdim_stone_2
[13] = {trade = {{ 8957, 25},{65535,1}}, reward = 8958}, -- snoworb_stone_1
[14] = {trade = {{ 8958,  4},{65535,1}}, reward = 8959}, -- snoworb_stone_2
[15] = {trade = {{ 8933, 25},{65535,1}}, reward = 8934}, -- leafslit_stone_1
[16] = {trade = {{ 8934,  4},{65535,1}}, reward = 8935}, -- leafslit_stone_2
[17] = {trade = {{ 8942, 25},{65535,1}}, reward = 8943}, -- leaftip_stone_1
[18] = {trade = {{ 8943,  4},{65535,1}}, reward = 8944}, -- leaftip_stone_2
[19] = {trade = {{ 8951, 25},{65535,1}}, reward = 8952}, -- leafdim_stone_1
[20] = {trade = {{ 8952,  4},{65535,1}}, reward = 8953}, -- leafdim_stone_2
[21] = {trade = {{ 8960, 25},{65535,1}}, reward = 8961}, -- leaforb_stone_1
[22] = {trade = {{ 8961,  4},{65535,1}}, reward = 8962}, -- leaforb_stone_2
[23] = {trade = {{ 8936, 25},{65535,1}}, reward = 8937}, -- duskslit_stone_1
[24] = {trade = {{ 8937,  4},{65535,1}}, reward = 8938}, -- duskslit_stone_2
[25] = {trade = {{ 8945, 25},{65535,1}}, reward = 8946}, -- dusktip_stone_1
[26] = {trade = {{ 8946,  4},{65535,1}}, reward = 8947}, -- dusktip_stone_2
[27] = {trade = {{ 8954, 25},{65535,1}}, reward = 8955}, -- duskdim_stone_1
[28] = {trade = {{ 8955,  4},{65535,1}}, reward = 8956}, -- duskdim_stone_2
[29] = {trade = {{ 8963, 25},{65535,1}}, reward = 8964}, -- duskorb_stone_1
[30] = {trade = {{ 8964,  4},{65535,1}}, reward = 8965}, -- duskorb_stone_2

}

local storeitems = -- store stones
{
[ 1] = { trade = {{3954, count}}, cur =     'ghastly_stone', item = 3954}, -- ghastly_stone
[ 2] = { trade = {{3955, count}}, cur =   'ghastly_stone_1', item = 3955}, -- ghastly_stone_1
[ 3] = { trade = {{3956, count}}, cur =   'ghastly_stone_2', item = 3956}, -- ghastly_stone_2
[ 4] = { trade = {{4033, count}}, cur =   'verdigris_stone', item = 4033}, -- verdigris_stone
[ 5] = { trade = {{4034, count}}, cur = 'verdigris_stone_1', item = 4034}, -- verdigris_stone_1
[ 6] = { trade = {{4035, count}}, cur = 'verdigris_stone_2', item = 4035}, -- verdigris_stone_2
[ 7] = { trade = {{3951, count}}, cur =     'wailing_stone', item = 3951}, -- wailing_stone
[ 8] = { trade = {{3952, count}}, cur =   'wailing_stone_1', item = 3952}, -- wailing_stone_1
[ 9] = { trade = {{3953, count}}, cur =   'wailing_stone_2', item = 3953}, -- wailing_stone_2
[10] = { trade = {{8930, count}}, cur =    'snowslit_stone', item = 8930}, -- snowslit_stone
[11] = { trade = {{8931, count}}, cur =  'snowslit_stone_1', item = 8931}, -- snowslit_stone_1
[12] = { trade = {{8932, count}}, cur =  'snowslit_stone_2', item = 8932}, -- snowslit_stone_2
[13] = { trade = {{8939, count}}, cur =     'snowtip_stone', item = 8939}, -- snowtip_stone
[14] = { trade = {{8940, count}}, cur =   'snowtip_stone_1', item = 8940}, -- snowtip_stone_1
[15] = { trade = {{8941, count}}, cur =   'snowtip_stone_2', item = 8941}, -- snowtip_stone_2
[16] = { trade = {{8948, count}}, cur =     'snowdim_stone', item = 8948}, -- snowdim_stone
[17] = { trade = {{8949, count}}, cur =   'snowdim_stone_1', item = 8949}, -- snowdim_stone_1
[18] = { trade = {{8950, count}}, cur =   'snowdim_stone_2', item = 8950}, -- snowdim_stone_2
[19] = { trade = {{8957, count}}, cur =     'snoworb_stone', item = 8957}, -- snoworb_stone
[20] = { trade = {{8958, count}}, cur =   'snoworb_stone_1', item = 8958}, -- snoworb_stone_1
[21] = { trade = {{8959, count}}, cur =   'snoworb_stone_2', item = 8959}, -- snoworb_stone_2
[22] = { trade = {{8933, count}}, cur =    'leafslit_stone', item = 8933}, -- leafslit_stone
[23] = { trade = {{8934, count}}, cur =  'leafslit_stone_1', item = 8934}, -- leafslit_stone_1
[24] = { trade = {{8935, count}}, cur =  'leafslit_stone_2', item = 8935}, -- leafslit_stone_2
[25] = { trade = {{8942, count}}, cur =     'leaftip_stone', item = 8942}, -- leaftip_stone
[26] = { trade = {{8943, count}}, cur =   'leaftip_stone_1', item = 8943}, -- leaftip_stone_1
[27] = { trade = {{8944, count}}, cur =   'leaftip_stone_2', item = 8944}, -- leaftip_stone_2
[28] = { trade = {{8951, count}}, cur =     'leafdim_stone', item = 8951}, -- leafdim_stone
[29] = { trade = {{8952, count}}, cur =   'leafdim_stone_1', item = 8952}, -- leafdim_stone_1
[30] = { trade = {{8953, count}}, cur =   'leafdim_stone_2', item = 8953}, -- leafdim_stone_2
[31] = { trade = {{8960, count}}, cur =     'leaforb_stone', item = 8960}, -- leaforb_stone
[32] = { trade = {{8961, count}}, cur =   'leaforb_stone_1', item = 8961}, -- leaforb_stone_1
[33] = { trade = {{8962, count}}, cur =   'leaforb_stone_2', item = 8962}, -- leaforb_stone_2
[34] = { trade = {{8936, count}}, cur =    'duskslit_stone', item = 8936}, -- duskslit_stone
[35] = { trade = {{8937, count}}, cur =  'duskslit_stone_1', item = 8937}, -- duskslit_stone_1
[36] = { trade = {{8938, count}}, cur =  'duskslit_stone_2', item = 8938}, -- duskslit_stone_2
[37] = { trade = {{8945, count}}, cur =     'dusktip_stone', item = 8945}, -- dusktip_stone
[38] = { trade = {{8946, count}}, cur =   'dusktip_stone_1', item = 8946}, -- dusktip_stone_1
[39] = { trade = {{8947, count}}, cur =   'dusktip_stone_2', item = 8947}, -- dusktip_stone_2
[40] = { trade = {{8954, count}}, cur =     'duskdim_stone', item = 8954}, -- duskdim_stone
[41] = { trade = {{8955, count}}, cur =   'duskdim_stone_1', item = 8955}, -- duskdim_stone_1
[42] = { trade = {{8956, count}}, cur =   'duskdim_stone_2', item = 8956}, -- duskdim_stone_2
[43] = { trade = {{8963, count}}, cur =     'duskorb_stone', item = 8963}, -- duskorb_stone
[44] = { trade = {{8964, count}}, cur =   'duskorb_stone_1', item = 8964}, -- duskorb_stone_1
[45] = { trade = {{8965, count}}, cur =   'duskorb_stone_2', item = 8965}, -- duskorb_stone_2
}
-----------------------------------------------------------------------------------------------------
-- store upgrade items
-----------------------------------------------------------------------------------------------------
         local curramt = 0
         local itemz = 0
         local storedmats = 0

         if storedmats == 0 then
             for k, v in pairs(storeitems) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                         storedmats = k
                         curramt = player:getCurrency(v.cur)
                         itemz = v.cur
		                 npc:setLocalVar("storedmats", v.item)
                         npc:setLocalVar("storedQty", curramt + count)
                break
                end
             end
         end
               if storedmats > 0 then
                  player:startEvent(7617,npc:getLocalVar("storedmats") , npc:getLocalVar("storedQty"))
                  player:tradeComplete()
                  player:addCurrency(itemz, npc:getLocalVar("storedQty"))
               end
-----------------------------------------------------------------------------------------------------
-- Upgrade stones
-----------------------------------------------------------------------------------------------------
   local upgrademats = 0
         if upgrademats == 0 then
             for k, v in pairs(stoneupgrade) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                   player:tradeComplete()
                   npcUtil.giveItem(player, {{v.reward, 1}})
                break
                end
             end
         end

-----------------------------------------------------------------------------------------------------
-- Upgrade skirmish armor
-----------------------------------------------------------------------------------------------------
   local upgradearmor = 0
         if upgradearmor == 0 then
             for k, v in pairs(skirUpg) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                   upgradearmor = k
                --   npcUtil.giveItem(player, {{v.reward, 1}})
                break
                end
             end
         end
end

entity.onTrigger = function(player, npc) -- 17826144
  local amount = player:getCurrency('bayld')
      player:startEvent(7545,0,0,65535,amount,2,2,0,0)
end

entity.onEventUpdate = function(player, csid, option, npc)

player:printToPlayer(string.format('Update csid %s option %s', csid, option))
local gs       = player:getCurrency('ghastly_stone')
local gsone    = player:getCurrency('ghastly_stone_1') * 128
local gstwo    = player:getCurrency('ghastly_stone_2') * 16384
local vs       = player:getCurrency('verdigris_stone')
local vsone    = player:getCurrency('verdigris_stone_1') * 128
local vstwo    = player:getCurrency('verdigris_stone_2') * 16384
local ws       = player:getCurrency('wailing_stone')
local wsone    = player:getCurrency('wailing_stone_1') * 128
local wstwo    = player:getCurrency('wailing_stone_2') * 16384
local slit     = player:getCurrency('snowslit_stone')
local slitone  = player:getCurrency('snowslit_stone_1') * 128
local slittwo  = player:getCurrency('snowslit_stone_2') * 16384
local stip     = player:getCurrency('snowtip_stone')
local stipone  = player:getCurrency('snowtip_stone_1') * 128
local stiptwo  = player:getCurrency('snowtip_stone_2') * 16384
local sdim     = player:getCurrency('snowdim_stone')
local sdimone  = player:getCurrency('snowdim_stone_1') * 128
local sdimtwo  = player:getCurrency('snowdim_stone_2') * 16384
local sorb     = player:getCurrency('snoworb_stone')
local sorbone  = player:getCurrency('snoworb_stone_1') * 128
local sorbtwo  = player:getCurrency('snoworb_stone_2') * 16384
local lslit    = player:getCurrency('leafslit_stone')
local lslitone = player:getCurrency('leafslit_stone_1') * 128
local lslittwo = player:getCurrency('leafslit_stone_2') * 16384
local ltip     = player:getCurrency('leaftip_stone')
local ltipone  = player:getCurrency('leaftip_stone_1') * 128
local ltiptwo  = player:getCurrency('leaftip_stone_2') * 16384
local ldim     = player:getCurrency('leafdim_stone')
local ldimone  = player:getCurrency('leafdim_stone_1') * 128
local ldimtwo  = player:getCurrency('leafdim_stone_2') * 16384
local lorb     = player:getCurrency('leaforb_stone')
local lorbone  = player:getCurrency('leaforb_stone_1') * 128
local lorbtwo  = player:getCurrency('leaforb_stone_2') * 16384
local dslit    = player:getCurrency('duskslit_stone')
local dslitone = player:getCurrency('duskslit_stone_1') * 128
local dslittwo = player:getCurrency('duskslit_stone_2') * 16384
local dtip     = player:getCurrency('dusktip_stone')
local dtipone  = player:getCurrency('dusktip_stone_1') * 128
local dtiptwo  = player:getCurrency('dusktip_stone_2') * 16384
local ddim     = player:getCurrency('duskdim_stone')
local ddimone  = player:getCurrency('duskdim_stone_1') * 128
local ddimtwo  = player:getCurrency('duskdim_stone_2') * 16384
local dorb     = player:getCurrency('duskorb_stone')
local dorbone  = player:getCurrency('duskorb_stone_1') * 128
local dorbtwo  = player:getCurrency('duskorb_stone_2') * 16384
local ghastly   = gs + gsone + gstwo
local verdigris = vs + vsone + vstwo
local wailing   = ws + wsone + wstwo
local snowslit  = slit + slitone + slittwo
local snowtip   = stip + stipone + stiptwo
local snowdim   = sdim + sdimone + sdimtwo
local snoworb   = sorb + sorbone + sorbtwo 
local leafslit  = lslit + lslitone + lslittwo
local leaftip   = ltip + ltipone + ltiptwo 
local leafdim   = ldim + ldimone + ldimtwo 
local leaforb   = lorb + lorbone + lorbtwo 
local duskslit  = dslit + dslitone + dslittwo 
local dusktip   = dtip + dtipone + dtiptwo 
local duskdim   = ddim + ddimone + ddimtwo 
local duskorb   = dorb + dorbone + dorbtwo 

if csid == 7545 and option == 1 then
player:updateEvent(ghastly,verdigris,wailing)
elseif csid == 7545 and option == 2 then
player:updateEvent(snowslit,snowtip,snowdim,snoworb,leafslit,leaftip,leafdim,leaforb)
elseif csid == 7545 and option == 3 then
player:updateEvent(duskslit,dusktip,duskdim,duskorb)
end

end

entity.onEventFinish = function(player, csid, option, npc)
player:printToPlayer(string.format('Finish csid %s option %s', csid, option))
local withdraw =
{
{3954,'ghastly_stone'},
{3955,'ghastly_stone_1'},
{3956,'ghastly_stone_2'},
{4033,'verdigris_stone'},
{4034,'verdigris_stone_1'},
{4035,'verdigris_stone_2'},
{3951,'wailing_stone'},
{3952,'wailing_stone_1'},
{3953,'wailing_stone_2'},
{8930,'snowslit_stone'},
{8931,'snowslit_stone_1'},
{8932,'snowslit_stone_2'},
{8939,'snowtip_stone'},
{8940,'snowtip_stone_1'},
{8941,'snowtip_stone_2'},
{8948,'snowdim_stone'},
{8949,'snowdim_stone_1'},
{8950,'snowdim_stone_2'},
{8957,'snoworb_stone'},
{8958,'snoworb_stone_1'},
{8959,'snoworb_stone_2'},
{8933,'leafslit_stone'},
{8934,'leafslit_stone_1'},
{8935,'leafslit_stone_2'},
{8942,'leaftip_stone'},
{8943,'leaftip_stone_1'},
{8944,'leaftip_stone_2'},
{8951,'leafdim_stone'},
{8952,'leafdim_stone_1'},
{8953,'leafdim_stone_2'},
{8960,'leaforb_stone'},
{8961,'leaforb_stone_1'},
{8962,'leaforb_stone_2'},
{8936,'duskslit_stone'},
{8937,'duskslit_stone_1'},
{8938,'duskslit_stone_2'},
{8945,'dusktip_stone'},
{8946,'dusktip_stone_1'},
{8947,'dusktip_stone_2'},
{8954,'duskdim_stone'},
{8955,'duskdim_stone_1'},
{8956,'duskdim_stone_2'},
{8963,'duskorb_stone'},
{8964,'duskorb_stone_1'},
{8965,'duskorb_stone_2'},
}
        local requestedQty = bit.rshift(option, 24)
        local requestedItm = bit.band(bit.rshift(option, 8), 0xFFFF)
        local itemx = 0
        local curre = 0

    for _, entry in pairs(withdraw) do
        if requestedItm == entry[1] then
           itemx = entry[1]
           curre = entry[2]
            break
        end
    end
if csid == 7545 and option == 3 then
return
elseif csid == 7545 and requestedItm == itemx then
npcUtil.giveItem(player, {{requestedItm, requestedQty}})
player:setCurrency(curre,player:getCurrency(curre) - requestedQty)
end

local amounta = player:getCurrency('bayld')
local amountb = player:getCurrency('obsidian_fragment')
local costa = npc:getLocalVar("augcost")

 
        if csid == 7561 and option == 7 then
                if amounta >= costa then
                    player:tradeComplete()
					local reward = player:getCharVar("[DGAug]item")
					local aug1A = npc:getLocalVar("aug1")
					local aug2A = npc:getLocalVar("aug2")
					local aug3A = npc:getLocalVar("aug3")
					local aug1MAXA = npc:getLocalVar("aug1MAX")
					local aug2MAXA = npc:getLocalVar("aug2MAX")
					local aug3MAXA = npc:getLocalVar("aug3MAX")
						player:addItem(reward, 1, aug1A, aug1MAXA, aug2A, aug2MAXA, aug3A, aug3MAXA)
						player:setCharVar("[DGAug]item", 0)
                        player:messageSpecial(zones[player:getZone():getID()].text.ITEM_OBTAINED, reward)
                else
                        player:printToPlayer('You currently do not have enough Baylds to complete this request! ', 0, 'Divainy-Gamainy')
                end
        end
        
        if csid == 7615 and option == 7 then
                if amountb >= costa then
                    player:tradeComplete()
					local reward = player:getCharVar("[DGAug]item")
					local aug1A = npc:getLocalVar("aug1")
					local aug2A = npc:getLocalVar("aug2")
					local aug3A = npc:getLocalVar("aug3")
					local aug1MAXA = npc:getLocalVar("aug1MAX")
					local aug2MAXA = npc:getLocalVar("aug2MAX")
					local aug3MAXA = npc:getLocalVar("aug3MAX")
						player:addItem(reward, 1, aug1A, aug1MAXA, aug2A, aug2MAXA, aug3A, aug3MAXA)
						player:setCharVar("[DGAug]item", 0)
                        player:messageSpecial(zones[player:getZone():getID()].text.ITEM_OBTAINED, reward)
                else
                        player:printToPlayer('You currently do not have enough Obsidian Fragments to complete this request! ', 0, 'Divainy-Gamainy')
                end
        end
end

return entity

 --[[

 7615 obsidian upgrades / augments



 ]]--