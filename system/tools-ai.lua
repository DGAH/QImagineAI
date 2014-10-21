--[[
	太阳神三国杀·幻想天使AI体系（系统模块·工具包文件）
]]--
--事件名称转换表
sgs.eventnames = {
	[sgs.NonTrigger] = "NonTrigger",

	[sgs.GameStart] = "GameStart",
	[sgs.TurnStart] = "TurnStart",
	[sgs.EventPhaseStart] = "EventPhaseStart",
	[sgs.EventPhaseProceeding] = "EventPhaseProceeding",
	[sgs.EventPhaseEnd] = "EventPhaseEnd",
	[sgs.EventPhaseChanging] = "EventPhaseChanging",
	[sgs.EventPhaseSkipping] = "EventPhaseSkipping",

	[sgs.DrawNCards] = "DrawNCards",
	[sgs.AfterDrawNCards] = "AfterDrawNCards",
	[sgs.DrawInitialCards] = "DrawInitialCards",
	[sgs.AfterDrawInitialCards] = "AfterDrawInitialCards",

	[sgs.PreHpRecover] = "PreHpRecover",
	[sgs.HpRecover] = "HpRecover",
	[sgs.PreHpLost] = "PreHpLost",
	[sgs.HpChanged] = "HpChanged",
	[sgs.MaxHpChanged] = "MaxHpChanged",
	[sgs.PostHpReduced] = "PostHpReduced",

	[sgs.EventLoseSkill] = "EventLoseSkill",
	[sgs.EventAcquireSkill] = "EventAcquireSkill",

	[sgs.StartJudge] = "StartJudge",
	[sgs.AskForRetrial] = "AskForRetrial",
	[sgs.FinishRetrial] = "FinishRetrial",
	[sgs.FinishJudge] = "FinishJudge",

	[sgs.PindianVerifying] = "PindianVerifying",
	[sgs.Pindian] = "Pindian",

	[sgs.TurnedOver] = "TurnedOver",
	[sgs.ChainStateChanged] = "ChainStateChanged",

	[sgs.ConfirmDamage] = "ConfirmDamage",
	[sgs.Predamage] = "Predamage",
	[sgs.DamageForseen] = "DamageForseen",
	[sgs.DamageCaused] = "DamageCaused",
	[sgs.DamageInflicted] = "DamageInflicted",
	[sgs.PreDamageDone] = "PreDamageDone",
	[sgs.DamageDone] = "DamageDone",
	[sgs.Damage] = "Damage",
	[sgs.Damaged] = "Damaged",
	[sgs.DamageComplete] = "DamageComplete",

	[sgs.Dying] = "Dying",
	[sgs.AskForPeaches] = "AskForPeaches",
	[sgs.AskForPeachesDone] = "AskForPeachesDone",
	[sgs.Death] = "Death",
	[sgs.BuryVictim] = "BuryVictim",
	[sgs.BeforeGameOverJudge] = "BeforeGameOverJudge",
	[sgs.GameOverJudge] = "GameOverJudge",
	[sgs.GameFinished] = "GameFinished",

	[sgs.SlashEffected] = "SlashEffected",
	[sgs.SlashProceed] = "SlashProceed",
	[sgs.SlashHit] = "SlashHit",
	[sgs.SlashMissed] = "SlashMissed",

	[sgs.JinkEffect] = "JinkEffect",

	[sgs.CardAsked] = "CardAsked",
	[sgs.CardResponded] = "CardResponded",
	[sgs.BeforeCardsMove] = "BeforeCardsMove",
	[sgs.CardsMoveOneTime] = "CardsMoveOneTime",

	[sgs.PreCardUsed] = "PreCardUsed",
	[sgs.CardUsed] = "CardUsed",
	[sgs.TargetConfirming] = "TargetConfirming",
	[sgs.TargetConfirmed] = "TargetConfirmed",
	[sgs.CardEffect] = "CardEffect",
	[sgs.CardEffected] = "CardEffected",
	[sgs.PostCardEffected] = "PostCardEffected",
	[sgs.CardFinished] = "CardFinished",
	[sgs.TrickCardCanceling] = "TrickCardCanceling",

	[sgs.ChoiceMade] = "ChoiceMade",

	[sgs.StageChange] = "StageChange",
	[sgs.FetchDrawPileCard] = "FetchDrawPileCard",
	[sgs.ActionedReset] = "ActionedReset",
	[sgs.Debut] = "Debut",

	[sgs.TurnBroken] = "TurnBroken",

	[sgs.NumOfEvents] = "NumOfEvents",
}
--获取事件名称
function getEventName(event)
	return sgs.eventnames[event] or tostring(event) 
end
--输出到服务器
function out(...)
	if global_room then
		global_room:writeToConsole(string.format(...))
	end
end