--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·风扩展包文件）
]]--
--[[****************************************************************
	夏侯渊
]]--****************************************************************
sgs.AIGenerals["xiahouyuan"] = {
	name = "xiahouyuan",
	IQ = 100,
}
--[[
	技能：神速
	描述：你可以选择一至两项：1.跳过你的判定阶段和摸牌阶段。2.跳过你的出牌阶段并弃置一张装备牌。你每选择一项，视为使用一张【杀】（无距离限制）。
]]--
sgs.AISkills["shensu"] = {
	name = "shensu",
}
--[[****************************************************************
	曹仁
]]--****************************************************************
sgs.AIGenerals["caoren"] = {
	name = "caoren",
	IQ = 100,
}
--[[
	技能：据守
	描述：结束阶段开始时，你可以摸一张牌，然后将武将牌翻面。
]]--
sgs.AISkills["jushou"] = {
	name = "jushou",
}
--[[
	技能：解围
	描述：每当你的武将牌翻面后，你可以摸一张牌，然后你可以使用一张锦囊牌或装备牌：若如此做，该牌结算后，你可以弃置场上一张同类型的牌。
]]--
sgs.AISkills["jiewei"] = {
	name = "jiewei",
}
--[[****************************************************************
	黄忠
]]--****************************************************************
sgs.AIGenerals["huangzhong"] = {
	name = "huangzhong",
	IQ = 100,
}
--[[
	技能：烈弓
	描述：每当你于出牌阶段内指定【杀】的目标后，若目标角色的手牌数大于或等于你的体力值，或目标角色的手牌数小于或等于你的攻击范围，你可以令该角色不能使用【闪】响应此【杀】。
]]--
sgs.AISkills["liegong"] = {
	name = "liegong",
}
--[[****************************************************************
	魏延
]]--****************************************************************
sgs.AIGenerals["weiyan"] = {
	name = "weiyan",
	IQ = 100,
}
--[[
	技能：狂骨（锁定技）
	描述：每当你对一名距离1以内角色造成1点伤害后，你回复1点体力。
]]--
sgs.AISkills["kuanggu"] = {
	name = "kuanggu",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	小乔
]]--****************************************************************
sgs.AIGenerals["xiaoqiao"] = {
	name = "xiaoqiao",
	IQ = 100,
}
--[[
	技能：天香
	描述：每当你受到伤害时，你可以弃置一张♥手牌并选择一名其他角色，将此伤害转移给该角色，然后其在伤害结算后摸X张牌（X为其当前已损失的体力值）。
]]--
sgs.AISkills["tianxiang"] = {
	name = "tianxiang",
}
--[[
	技能：红颜（锁定技）
	描述：你的♠牌视为♥牌。
]]--
sgs.AISkills["hongyan"] = {
	name = "hongyan",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	周泰
]]--****************************************************************
sgs.AIGenerals["zhoutai"] = {
	name = "zhoutai",
	IQ = 100,
}
--[[
	技能：不屈（锁定技）
	描述：每当你处于濒死状态时，你将牌堆顶的一张牌置于武将牌上：若无同点数的“不屈牌”，你回复至1点体力；否则你将该牌置入弃牌堆。若你有“不屈牌”，你的手牌上限等于“不屈牌”的数量。
]]--
sgs.AISkills["buqu"] = {
	name = "buqu",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：奋激
	描述：每当一名角色的手牌因另一名角色的弃置或获得为手牌而失去后，你可以失去1点体力：若如此做，该角色摸两张牌。
]]--
sgs.AISkills["fenji"] = {
	name = "fenji",
}
--[[****************************************************************
	张角
]]--****************************************************************
sgs.AIGenerals["zhangjiao"] = {
	name = "zhangjiao",
	lord = true,
	IQ = 100,
}
--[[
	技能：雷击
	描述：每当你使用【闪】选择目标后或打出【闪】，你可以令一名角色进行一次判定：若判定结果为♠，你对该角色造成1点雷电伤害，然后你回复1点体力。
]]--
sgs.AISkills["leiji"] = {
	name = "leiji",
}
--[[
	技能：鬼道
	描述：每当一名角色的判定牌生效前，你可以打出一张黑色牌替换之。
]]--
sgs.AISkills["guidao"] = {
	name = "guidao",
}
--[[
	技能：黄天（主公技）
	描述：出牌阶段限一次，其他群雄角色的出牌阶段，该角色可以交给你一张【闪】或【闪电】。
]]--
sgs.AISkills["huangtian"] = {
	name = "huangtian",
	lord = true,
}
--[[****************************************************************
	于吉
]]--****************************************************************
sgs.AIGenerals["yuji"] = {
	name = "yuji",
	IQ = 100,
}
--[[
	技能：蛊惑
	描述：你可以扣置一张手牌当做一张基本牌或非延时锦囊牌使用或打出，其他角色选择是否质疑：若无角色质疑，你展示该牌，取消不合法的目标并按你所述类型结算；若有角色质疑，中止质疑询问并展示该牌：若该牌为真，该角色获得“缠怨”（锁定技。你不能质疑“蛊惑”。若你的体力值为1，你的其他武将技能无效。），取消不合法的目标并按你所述类型结算；若该牌为假，你将其置入弃牌堆。每名角色的回合限一次。
]]--
sgs.AISkills["guhuo"] = {
	name = "guhuo",
}
--[[
	技能：缠怨（锁定技）
	描述：你不能质疑“蛊惑”。若你的体力值为1，你的其他武将技能无效。
]]--
sgs.AISkills["chanyuan"] = {
	name = "chanyuan",
	frequency = sgs.Skill_Compulsory,
}