--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·测试扩展包文件）
]]--
--[[****************************************************************
	制霸孙权
]]--****************************************************************
sgs.AIGenerals["zhiba_sunquan"] = {
	name = "zhiba_sunquan",
	general = "sunquan",
	lord = true,
	IQ = 100,
}
--[[
	技能：制衡
	描述：出牌阶段，你可以弃置任意数量的牌：若如此做，你摸等数量的牌。每阶段你可以发动X+1次该技能。（X为你已损失的体力值）
]]--
sgs.AISkills["super_zhiheng"] = {
	name = "super_zhiheng",
}
--[[
	技能：救援（主公技、锁定技）
	描述：其他吴势力角色对处于濒死状态的你使用的【桃】回复的体力+1。
]]--
--[[****************************************************************
	五星诸葛
]]--****************************************************************
sgs.AIGenerals["wuxing_zhugeliang"] = {
	name = "wuxing_zhugeliang",
	general = "zhugeliang",
	IQ = 100,
}
--[[
	技能：观星
	描述：准备阶段开始时，你可以观看牌堆顶的五张牌，然后将任意数量的牌以任意顺序置于牌堆顶，将其余的牌以任意顺序置于牌堆底。
]]--
sgs.AISkills["super_guanxing"] = {
	name = "super_guanxing",
}
--[[
	技能：空城
	描述：若你没有手牌，你不能被选择为【杀】或【决斗】的目标。
]]--
--[[****************************************************************
	高达一号
]]--****************************************************************
sgs.AIGenerals["gaodayihao"] = {
	name = "gaodayihao",
	general = "zhaoyun",
	IQ = 100,
}
--[[
	技能：绝境
	描述：摸牌阶段，你不摸牌。每当你的手牌数变化后，若你的手牌数不为4，你须将手牌补至或弃置至四张。
]]--
sgs.AISkills["nosjuejing"] = {
	name = "nosjuejing",
}
--[[
	技能：龙魂
	描述：你可以将一张牌按以下规则使用或打出：♥当【桃】；♦当火【杀】；♠当【无懈可击】；♣当【闪】。准备阶段开始时，若其他角色的装备区内有【青釭剑】，你可以获得之。
]]--
sgs.AISkills["noslonghun"] = {
	name = "noslonghun",
}
--[[****************************************************************
	素将
]]--****************************************************************
sgs.AIGenerals["sujiang"] = {
	name = "sujiang",
	general = "sujiang",
	IQ = 100,
}
--[[****************************************************************
	素将（女）
]]--****************************************************************
sgs.AIGenerals["sujiangf"] = {
	name = "sujiangf",
	general = "sujiang",
	IQ = 100,
}