--[[
	太阳神三国杀·幻想天使AI体系（系统模块·系统控制表定义文件）
]]--
sgs.ais = {}
sgs.AIGlobalSystemData = {}
sgs.AIEventFunc = {}
for event = sgs.NonTrigger, sgs.NumOfEvents, 1 do
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
sgs.ActivateAI = {}