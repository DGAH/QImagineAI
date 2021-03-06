--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·神扩展包文件）
]]--
--[[****************************************************************
	关羽
]]--****************************************************************
sgs.AIGenerals["shenguanyu"] = {
	name = "shenguanyu",
	general = "guanyu",
	IQ = 100,
}
--[[
	技能：武神（锁定技）
	描述：你的♥手牌视为普通【杀】。你使用♥【杀】无距离限制。
]]--
sgs.AISkills["wushen"] = {
	name = "wushen",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：武魂（锁定技）
	描述：每当你受到伤害扣减体力前，伤害来源获得等于伤害点数的“梦魇”标记。你死亡时，你选择拥有“梦魇”标记数最多的一名存活角色，该角色进行一次判定：若判定结果不为【桃】或【桃园结义】，该角色死亡。 
]]--
sgs.AISkills["wuhun"] = {
	name = "wuhun",
	frequency = sgs.Skill_Compulsory,
}
--[[****************************************************************
	吕蒙
]]--****************************************************************
sgs.AIGenerals["shenlvmeng"] = {
	name = "shenlvmeng",
	general = "lvmeng",
	IQ = 100,
}
--[[
	技能：涉猎
	描述：摸牌阶段开始时，你可以放弃摸牌，改为从牌堆顶亮出五张牌，你获得不同花色的牌各一张，将其余的牌置入弃牌堆。 
]]--
sgs.AISkills["shelie"] = {
	name = "shelie",
}
--[[
	技能：攻心
	描述：他角色的手牌，然后选择其中一张♥牌并选择一项：弃置之，或将之置于牌堆顶。 
]]--
sgs.AISkills["gongxin"] = {
	name = "gongxin",
}
--[[****************************************************************
	周瑜
]]--****************************************************************
sgs.AIGenerals["shenzhouyu"] = {
	name = "shenzhouyu",
	general = "zhouyu",
	IQ = 200,
}
--[[
	技能：琴音
	描述：每当你于弃牌阶段内因你的弃置而失去第X张手牌时（X至少为2），你可以选择一项：1.令所有角色各回复1点体力；2.令所有角色各失去1点体力。每阶段限一次。 
]]--
sgs.AISkills["qinyin"] = {
	name = "qinyin",
}
--[[
	技能：业炎（限定技）
	描述：出牌阶段，你可以对一至三名角色造成至多共3点火焰伤害（你选择目标时任意分配每名目标角色受到的伤害点数）。若你将对一名角色分配2点或更多的火焰伤害，你须执行弃置四张不同花色的手牌并失去3点体力的消耗。 
]]--
sgs.AISkills["yeyan"] = {
	name = "yeyan",
	frequency = sgs.Skill_Limited,
}
--[[****************************************************************
	诸葛亮
]]--****************************************************************
sgs.AIGenerals["shenzhugeliang"] = {
	name = "shenzhugeliang",
	general = "zhugeliang",
	IQ = 230,
}
--[[
	技能：七星
	描述：分发起始手牌时，共发你十一张牌，你选四张作为手牌，其余的背面朝上移出游戏，称为“星”；摸牌阶段结束时，你可以用任意数量的手牌等量替换这些“星”。 
]]--
sgs.AISkills["qixing"] = {
	name = "qixing",
}
--[[
	技能：狂风
	描述：结束阶段开始时，你可以将一张“星”置入弃牌堆并选择一名角色，若如此做，你的下回合开始前，每当其受到的火焰伤害结算开始时，此伤害+1。
]]--
sgs.AISkills["kuangfeng"] = {
	name = "kuangfeng",
}
--[[
	技能：大雾
	描述：结束阶段开始时，你可以将X张“星”置入弃牌堆并选择X名角色，若如此做，你的下回合开始前，每当这些角色受到的非雷电伤害结算开始时，防止此伤害。
]]--
sgs.AISkills["dawu"] = {
	name = "dawu",
}
--[[****************************************************************
	曹操
]]--****************************************************************
sgs.AIGenerals["shencaocao"] = {
	name = "shencaocao",
	general = "caocao",
	IQ = 100,
}
--[[
	技能：归心
	描述：每当你受到1点伤害后，若至少一名其他角色的区域里有牌，你可以选择所有其他角色，获得这些角色区域里的一张牌，然后将你的武将牌翻面。
]]--
sgs.AISkills["guixin"] = {
	name = "guixin",
}
--[[
	技能：飞影（锁定技）
	描述：其他角色与你的距离+1 
]]--
sgs.AISkills["feiying"] = {
	name = "feiying",
	frequency = sgs.Skill_Compulsory,
	DistanceSkill = true,
	correct_func = function(scene, from, to)
		if to:hasSkill("feiying") then
			return 1
		end
		return 0
	end,
}
--[[****************************************************************
	吕布
]]--****************************************************************
sgs.AIGenerals["shenlvbu"] = {
	name = "shenlvbu",
	general = "lvbu",
	IQ = 60,
}
--[[
	技能：狂暴（锁定技）
	描述：游戏开始时，你获得两枚“暴怒”标记。每当你造成或受到1点伤害后，你获得一枚“暴怒”标记。
]]--
sgs.AISkills["kuangbao"] = {
	name = "kuangbao",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：无谋（锁定技）
	描述：每当你使用一张非延时类锦囊牌选择目标后，你选择一项：失去1点体力，或弃一枚“暴怒”标记。
]]--
sgs.AISkills["wumou"] = {
	name = "wumou",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：无前
	描述：出牌阶段，你可以弃两枚“暴怒”标记并选择一名其他角色，该角色的防具无效且你获得技能“无双”，直到回合结束。
]]--
sgs.AISkills["wuqian"] = {
	name = "wuqian",
}
--[[
	技能：神愤
	描述：出牌阶段限一次，你可以弃六枚“暴怒”标记并选择所有其他角色，对这些角色各造成1点伤害，然后这些角色先各弃置其装备区里的所有牌，再各弃置四张手牌，最后你将你的武将牌翻面。
]]--
sgs.AISkills["shenfen"] = {
	name = "shenfen",
}
--[[****************************************************************
	赵云
]]--****************************************************************
sgs.AIGenerals["shenzhaoyun"] = {
	name = "shenzhaoyun",
	general = "zhaoyun",
	IQ = 100,
}
--[[
	技能：绝境（锁定技）
	描述：摸牌阶段，你额外摸X张牌。你的手牌上限+2。（X为你已损失的体力值） 
]]--
sgs.AISkills["juejing"] = {
	name = "juejing",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：龙魂
	描述：你可以将X张同花色的牌按以下规则使用或打出：♥当【桃】；♦当火【杀】；♠当【无懈可击】；♣当【闪】。（X为你的当前体力值且至少为1） 
]]--
sgs.AISkills["longhun"] = {
	name = "longhun",
}
--[[****************************************************************
	司马懿
]]--****************************************************************
sgs.AIGenerals["shensimayi"] = {
	name = "shensimayi",
	general = "simayi",
	IQ = 180,
}
--[[
	技能：忍戒（锁定技）
	描述：每当你受到一次伤害后，你获得等同于你受到的伤害数量的“忍”标记；每当你于弃牌阶段内因你的弃置而失去手牌时，你获得等同于你失去的手牌数量的“忍”标记。
]]--
sgs.AISkills["renjie"] = {
	name = "renjie",
	frequency = sgs.Skill_Compulsory,
}
--[[
	技能：拜印（觉醒技）
	描述：准备阶段开始时，若你拥有4枚或更多的“忍”标记，你减1点体力上限，然后获得技能“极略”（每当一名角色的判定牌生效前，若你有手牌，你可以弃1枚“忍”标记发动“鬼才”；每当你受到一次伤害后，你可以弃1枚“忍”标记，发动“放逐”；每当你使用锦囊牌选择目标后，你可以弃1枚“忍”标记，发动“集智”；出牌阶段限一次，若你有牌，你可以弃1枚“忍”标记，发动“制衡”；出牌阶段，你可以弃1枚“忍”标记，执行“完杀”的效果，直到回合结束。） 
]]--
sgs.AISkills["baiyin"] = {
	name = "baiyin",
	frequency = sgs.Skill_Wake,
}
--[[
	技能：连破
	描述：一名角色的回合结束后，若你于此回合内杀死了至少一名角色，你可以获得一个额外的回合。
]]--
sgs.AISkills["lianpo"] = {
	name = "lianpo",
}
--[[
	技能：极略
	描述：每当一名角色的判定牌生效前，若你有手牌，你可以弃1枚“忍”标记发动“鬼才”；每当你受到一次伤害后，你可以弃1枚“忍”标记，发动“放逐”；每当你使用锦囊牌选择目标后，你可以弃1枚“忍”标记，发动“集智”；出牌阶段限一次，若你有牌，你可以弃1枚“忍”标记，发动“制衡”；出牌阶段，你可以弃1枚“忍”标记，执行“完杀”的效果，直到回合结束。
]]--
sgs.AISkills["jilve"] = {
	name = "jilve",
}