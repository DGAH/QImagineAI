--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·一将成名2012扩展包文件）
]]--
--[[****************************************************************
	步练师
]]--****************************************************************
sgs.AIGenerals["bulianshi"] = {
	name = "bulianshi",
	general = "bulianshi",
	IQ = 100,
}
--[[
	技能：安恤
	描述：出牌阶段限一次，你可以选择两名手牌数不相等的其他角色，令其中手牌少的角色获得手牌多的角色的一张手牌并展示之，若此牌不为?，你摸一张牌。
]]--
sgs.AISkills["anxu"] = {
	name = "anxu",
}
--[[
	技能：追忆
	描述：当你死亡时，你可以令一名其他角色（杀死你的角色除外）摸三张牌，然后令其回复1点体力。
]]--
sgs.AISkills["zhuiyi"] = {
	name = "zhuiyi",
}
--[[****************************************************************
	曹彰
]]--****************************************************************
sgs.AIGenerals["caozhang"] = {
	name = "caozhang",
	general = "caozhang",
	IQ = 100,
}
--[[
	技能：将驰
	描述：摸牌阶段，你可以选择一项：1.少摸一张牌，然后拥有以下锁定技：本回合，你使用【杀】无距离限制，你可以额外使用一张【杀】；2.额外摸一张牌，且你不能使用或打出【杀】，直到回合结束。
]]--
sgs.AISkills["jiangchi"] = {
	name = "jiangchi",
}
--[[****************************************************************
	程普
]]--****************************************************************
sgs.AIGenerals["chengpu"] = {
	name = "chengpu",
	general = "chengpu",
	IQ = 100,
}
--[[
	技能：疠火
	描述：你可以将一张普通【杀】当火【杀】使用，或将你视为使用一张【杀】当你视为使用一张火【杀】，若以此法使用的火【杀】造成伤害，在此【杀】结算后你失去1点体力。
		锁定技，你使用火【杀】选择目标的个数上限+1。
]]--
sgs.AISkills["lihuo"] = {
	name = "lihuo",
}
--[[
	技能：醇酪
	描述：结束阶段开始时，若你的武将牌上没有牌，你可以将任意数量的【杀】置于你的武将牌上，称为“醇”；当一名角色处于濒死状态时，你可以将一张“醇”置入弃牌堆，令该角色视为使用一张【酒】。
]]--
sgs.AISkills["chunlao"] = {
	name = "chunlao",
}
--[[****************************************************************
	关兴&张苞
]]--****************************************************************
sgs.AIGenerals["guanxingzhangbao"] = {
	name = "guanxingzhangbao",
	general = "guanxing+zhangbao",
	IQ = 100,
}
--[[
	技能：父魂
	描述：你可以将两张手牌当普通【杀】使用或打出。每当你于出牌阶段内以此法使用【杀】造成伤害后，你获得技能“武圣”、“咆哮”，直到回合结束。
]]--
sgs.AISkills["fuhun"] = {
	name = "fuhun",
}
--[[****************************************************************
	韩当
]]--****************************************************************
sgs.AIGenerals["handang"] = {
	name = "handang",
	general = "handang",
	IQ = 100,
}
--[[
	技能：弓骑
	描述：出牌阶段限一次，你可以弃置一张牌，令你于此回合内攻击范围无限，若你以此法弃置的牌为装备牌，你可以弃置一名其他角色的一张牌。
]]--
sgs.AISkills["gongqi"] = {
	name = "gongqi",
}
--[[
	技能：解烦（限定技）
	描述：出牌阶段，你可以选择一名角色，令攻击范围内含有该角色的所有角色各选择一项：1.弃置一张武器牌；2.令其摸一张牌。
]]--
sgs.AISkills["jiefan"] = {
	name = "jiefan",
	frequency = sgs.Skill_Limited,
}
--[[****************************************************************
	华雄
]]--****************************************************************
sgs.AIGenerals["huaxiong"] = {
	name = "huaxiong",
	general = "huaxiong",
	IQ = 100,
}
--[[
	技能：恃勇（锁定技）
	描述：每当你受到一次红色【杀】或【酒】【杀】造成的伤害后，你减1点体力上限。
]]--
sgs.AISkills["shiyong"] = {
	name = "shiyong",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	廖化
]]--****************************************************************
sgs.AIGenerals["liaohua"] = {
	name = "liaohua",
	general = "liaohua",
	IQ = 100,
}
--[[
	技能：当先（锁定技）
	描述：回合开始时，你执行一个额外的出牌阶段。
]]--
sgs.AISkills["dangxian"] = {
	name = "dangxian",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：伏枥（限定技）
	描述：当你处于濒死状态时，你可以将你当前的体力值回复至X点（X为现存势力数），然后将你的武将牌翻面。
]]--
sgs.AISkills["fuli"] = {
	name = "fuli",
	frequency = sgs.Skill_Limited,
}
--[[****************************************************************
	刘表
]]--****************************************************************
sgs.AIGenerals["liubiao"] = {
	name = "liubiao",
	general = "liubiao",
	IQ = 100,
}
--[[
	技能：自守
	描述：摸牌阶段，若你已受伤，你可以额外摸X张牌，然后跳过出牌阶段。（X为你已损失的体力值） 
]]--
sgs.AISkills["zishou"] = {
	name = "zishou",
}
--[[
	技能：宗室（锁定技）
	描述：你的手牌上限+X。（X为现存势力数） 
]]--
sgs.AISkills["zongshi"] = {
	name = "zongshi",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	马岱
]]--****************************************************************
sgs.AIGenerals["madai"] = {
	name = "madai",
	general = "madai",
	IQ = 100,
}
--[[
	技能：马术（锁定技）
	描述：你与其他角色的距离-1。
]]--
--[[
	技能：潜袭
	描述：准备阶段开始时，你可以进行一次判定，然后令一名距离为1的角色不能使用或打出与判定结果颜色相同的手牌，直到回合结束。
]]--
sgs.AISkills["qianxi"] = {
	name = "qianxi",
}
--[[****************************************************************
	王异
]]--****************************************************************
sgs.AIGenerals["wangyi"] = {
	name = "wangyi",
	general = "wangyi",
	IQ = 100,
}
--[[
	技能：贞烈
	描述：每当你成为一名其他角色使用的【杀】或非延时类锦囊牌的目标后，你可以失去1点体力，令此牌对你无效，然后你弃置其一张牌。
]]--
sgs.AISkills["zhenlie"] = {
	name = "zhenlie",
}
--[[
	技能：秘计
	描述：结束阶段开始时，若你已受伤，你可以摸一至X张牌（X为你已损失的体力值），然后将相同数量的手牌以任意分配方式交给任意数量的其他角色。
]]--
sgs.AISkills["miji"] = {
	name = "miji",
}
--[[****************************************************************
	荀攸
]]--****************************************************************
sgs.AIGenerals["xunyou"] = {
	name = "xunyou",
	general = "xunyou",
	IQ = 100,
}
--[[
	技能：奇策
	描述：出牌阶段限一次，你可以将你的所有手牌（至少一张）当任意一张非延时锦囊牌使用。
]]--
sgs.AISkills["qice"] = {
	name = "qice",
}
--[[
	技能：智愚
	描述：每当你受到一次伤害后，你可以摸一张牌，然后展示所有手牌，若颜色均相同，伤害来源弃置一张手牌。
]]--
sgs.AISkills["zhiyu"] = {
	name = "zhiyu",
}