--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·林扩展包文件）
]]--
--[[****************************************************************
	徐晃
]]--****************************************************************
sgs.AIGenerals["xuhuang"] = {
	name = "xuhuang",
	general = "xuhuang",
	IQ = 100,
}
--[[
	技能：断粮
	描述：你可以将一张黑色的基本牌或黑色的装备牌当【兵粮寸断】使用。
		锁定技，你可以对距离2的角色使用【兵粮寸断】。 
]]--
sgs.AISkills["duanliang"] = {
	name = "duanliang",
}
--[[****************************************************************
	曹丕
]]--****************************************************************
sgs.AIGenerals["caopi"] = {
	name = "caopi",
	general = "caopi",
	lord = true,
	IQ = 100,
}
--[[
	技能：行殇
	描述：其他角色死亡时，你可以获得该角色的牌。
]]--
sgs.AISkills["xingshang"] = {
	name = "xingshang",
}
--[[
	技能：放逐
	描述：每当你受到一次伤害后，你可以令一名其他角色摸X张牌，然后该角色将其武将牌翻面。（X为你已损失的体力值） 
]]--
sgs.AISkills["fangzhu"] = {
	name = "fangzhu",
}
--[[
	技能：颂威（主公技）
	描述：其他魏势力角色的黑色判定牌生效后，该角色可以令你摸一张牌。
]]--
sgs.AISkills["songwei"] = {
	name = "songwei",
	lord = true,
}
--[[****************************************************************
	孟获
]]--****************************************************************
sgs.AIGenerals["menghuo"] = {
	name = "menghuo",
	general = "menghuo",
	IQ = 100,
}
--[[
	技能：祸首（锁定技）
	描述：【南蛮入侵】对你无效。每当其他角色使用【南蛮入侵】指定目标后，你成为【南蛮入侵】的伤害来源。 
]]--
sgs.AISkills["huoshou"] = {
	name = "huoshou",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：再起
	描述：摸牌阶段开始时，若你已受伤，你可以放弃摸牌，改为从牌堆顶亮出X张牌（X为你已损失的体力值），你回复等同于其中♥牌数量的体力，然后将这些♥牌置入弃牌堆，最后获得其余的牌。
]]--
sgs.AISkills["zaiqi"] = {
	name = "zaiqi",
}
--[[****************************************************************
	祝融
]]--****************************************************************
sgs.AIGenerals["zhurong"] = {
	name = "zhurong",
	general = "zhurong",
	IQ = 100,
}
--[[
	技能：巨象（锁定技）
	描述：【南蛮入侵】对你无效。其他角色使用的【南蛮入侵】在结算完毕后置入弃牌堆时，你获得之。
]]--
sgs.AISkills["juxiang"] = {
	name = "juxiang",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：烈刃
	描述：每当你使用【杀】对目标角色造成一次伤害后，你可以与该角色拼点：若你赢，你获得其一张牌。
]]--
sgs.AISkills["lieren"] = {
	name = "lieren",
}
--[[****************************************************************
	孙坚
]]--****************************************************************
sgs.AIGenerals["sunjian"] = {
	name = "sunjian",
	general = "sunjian",
	IQ = 100,
}
--[[
	技能：英魂
	描述：准备阶段开始时，若你已受伤，你可以选择一名其他角色并选择一项：1.令其摸一张牌，然后弃置X张牌；2.令其摸X张牌，然后弃置一张牌。（X为你已损失的体力值）
]]--
sgs.AISkills["yinghun"] = {
	name = "yinghun",
}
--[[****************************************************************
	鲁肃
]]--****************************************************************
sgs.AIGenerals["lusu"] = {
	name = "lusu",
	general = "lusu",
	IQ = 125,
}
--[[
	技能：好施
	描述：摸牌阶段，你可以额外摸两张牌，然后若你的手牌多于五张，你将一半（向下取整）的手牌交给手牌数最少的一名其他角色。
]]--
sgs.AISkills["haoshi"] = {
	name = "haoshi",
}
--[[
	技能：缔盟
	描述：出牌阶段限一次，你可以选择两名其他角色并弃置X张牌（X为两名目标角色手牌数的差），令这些角色交换手牌。
]]--
sgs.AISkills["dimeng"] = {
	name = "dimeng",
}
--[[****************************************************************
	董卓
]]--****************************************************************
sgs.AIGenerals["dongzhuo"] = {
	name = "dongzhuo",
	general = "dongzhuo",
	lord = true,
	IQ = 100,
}
--[[
	技能：酒池
	描述：你可以将一张♠手牌当【酒】使用。
]]--
sgs.AISkills["jiuchi"] = {
	name = "jiuchi",
}
--[[
	技能：肉林（锁定技）
	描述：每当你使用【杀】指定一名女性目标角色后，其需依次使用两张【闪】才能抵消；每当你成为女性角色使用【杀】的目标后，你需依次使用两张【闪】才能抵消。
]]--
sgs.AISkills["roulin"] = {
	name = "roulin",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：崩坏（锁定技）
	描述：结束阶段开始时，若你不是当前的体力值最小的角色（或之一），你选择一项：1.失去1点体力；2.减1点体力上限。
]]--
sgs.AISkills["benghuai"] = {
	name = "benghuai",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：暴虐（主公技）
	描述：其他群雄角色造成伤害一次后，该角色可以进行一次判定：若判定结果为♠，你回复1点体力。
]]--
sgs.AISkills["baonue"] = {
	name = "baonue",
	lord = true,
}
--[[****************************************************************
	贾诩
]]--****************************************************************
sgs.AIGenerals["jiaxu"] = {
	name = "jiaxu",
	general = "jiaxu",
	IQ = 999,
}
--[[
	技能：完杀（锁定技）
	描述：你的回合内，除濒死角色外的其他角色不能使用【桃】。
]]--
sgs.AISkills["wansha"] = {
	name = "wansha",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：乱武（限定技）
	描述：出牌阶段，你可以令所有其他角色对距离最近的另一名角色使用一张【杀】，否则该角色失去1点体力。
]]--
sgs.AISkills["luanwu"] = {
	name = "luanwu",
	frequency = sgs.Skill_Limited,
}
--[[
	技能：帷幕（锁定技）
	描述：你不能被选择为黑色锦囊牌的目标。
]]--
sgs.AISkills["weimu"] = {
	name = "weimu",
	frequency = sgs.Skill_Compulsory,
}