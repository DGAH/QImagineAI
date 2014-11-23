--[[
	太阳神三国杀·幻想天使AI体系（系统模块·系统控制表定义文件）
]]--
sgs.ais = {}
sgs.AIGlobalSystemData = {} --全局数据
sgs.AIGenerals = {} --武将登记表
sgs.AICards = {} --卡牌登记表
sgs.AISkills = {} --技能登记表
sgs.AIGameSkills = {} --游戏中存在的技能
sgs.AILockSkills = {} --游戏中无效的技能
sgs.AIRules = {} --规则登记表
sgs.AIGameRules = {} --游戏中存在的规则
sgs.AILockRules = {} --游戏中无效的规则
sgs.AIMindControler = {} --幻想控制器
sgs.AIEventFunc = {} --事件相关函数表
for event = sgs.NonTrigger, sgs.NumOfEvents, 1 do
	sgs.AIMindControler[event] = {}
	sgs.AIEventFunc[event] = {}
end
sgs.askForSuitAI = {}
sgs.askForSkillInvokeAI = {}
sgs.askForChoiceAI = {}
sgs.askForDiscardAI = {}
sgs.askForNullificationAI = {}
sgs.askForCardChosenAI = {}
sgs.askForCardAI = {}
sgs.askForUseCardAI = {}
sgs.askForAGAI = {}
sgs.askForCardShowAI = {}
sgs.askForYijiAI = {}
sgs.askForPindianAI = {}
sgs.askForPlayerChosenAI = {}
sgs.askForSinglePeachAI = {}
sgs.askForGuanxingAI = {}
sgs.ActivateAI = {}