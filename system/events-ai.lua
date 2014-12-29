--[[
	太阳神三国杀·幻想天使AI体系（系统模块·游戏事件文件）
]]--
sgs.AIEvent[sgs.NonTrigger] = {
	name = "NonTrigger",
	ExtractFunc = function(data)
		return data
	end,
}
sgs.AIEvent[sgs.GameStart] = {
	name = "GameStart",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.TurnStart] = {
	name = "TurnStart",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.EventPhaseStart] = {
	name = "EventPhaseStart",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.EventPhaseProceeding] = {
	name = "EventPhaseProceeding",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.EventPhaseEnd] = {
	name = "EventPhaseEnd",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.EventPhaseChanging] = {
	name = "EventPhaseChanging",
	ExtractFunc = function(data)
		return data:toPhaseChange()
	end,
}
sgs.AIEvent[sgs.EventPhaseSkipping] = {
	name = "EventPhaseSkipping",
	ExtractFunc = function(data)
		return nil
	end,
}
--[[国战版时机：确定角色数目（弘法）
sgs.AIEvent[sgs.ConfirmPlayerNum] = {
	name = "ConfirmPlayerNum",
	ExtractFunc = function(data)
	end,
}
]]
sgs.AIEvent[sgs.DrawNCards] = {
	name = "DrawNCards",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
sgs.AIEvent[sgs.AfterDrawNCards] = {
	name = "AfterDrawNCards",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
--V2时机，国战版取消
sgs.AIEvent[sgs.DrawInitialCards] = {
	name = "DrawInitialCards",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
--V2时机，国战版取消
sgs.AIEvent[sgs.AfterDrawInitialCards] = {
	name = "AfterDrawInitialCards",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
sgs.AIEvent[sgs.PreHpRecover] = {
	name = "PreHpRecover",
	ExtractFunc = function(data)
		return data:toRecover()
	end,
}
sgs.AIEvent[sgs.HpRecover] = {
	name = "HpRecover",
	ExtractFunc = function(data)
		return data:toRecover()
	end,
}
sgs.AIEvent[sgs.PreHpLost] = {
	name = "PreHpLost",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
sgs.AIEvent[sgs.HpChanged] = {
	name = "HpChanged",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.MaxHpChanged] = {
	name = "MaxHpChanged",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.PostHpReduced] = {
	name = "PostHpReduced",
	ExtractFunc = function(data)
		return data:toInt()
	end,
}
sgs.AIEvent[sgs.EventLoseSkill] = {
	name = "EventLoseSkill",
	ExtractFunc = function(data)
		return data:toString()
	end,
}
sgs.AIEvent[sgs.EventAcquireSkill] = {
	name = "EventAcquireSkill",
	ExtractFunc = function(data)
		return data:toString()
	end,
}
sgs.AIEvent[sgs.StartJudge] = {
	name = "StartJudge",
	ExtractFunc = function(data)
		return data:toJudge()
	end,
}
sgs.AIEvent[sgs.AskForRetrial] = {
	name = "AskForRetrial",
	ExtractFunc = function(data)
		return data:toJudge()
	end,
}
sgs.AIEvent[sgs.FinishRetrial] = {
	name = "FinishRetrial",
	ExtractFunc = function(data)
		return data:toJudge()
	end,
}
sgs.AIEvent[sgs.FinishJudge] = {
	name = "FinishJudge",
	ExtractFunc = function(data)
		return data:toJudge()
	end,
}
sgs.AIEvent[sgs.PindianVerifying] = {
	name = "PindianVerifying",
	ExtractFunc = function(data)
		return data:toPindian()
	end,
}
sgs.AIEvent[sgs.Pindian] = {
	name = "Pindian",
	ExtractFunc = function(data)
		return data:toPindian()
	end,
}
sgs.AIEvent[sgs.TurnedOver] = {
	name = "TurnedOver",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.ChainStateChanged] = {
	name = "ChainStateChanged",
	ExtractFunc = function(data)
		return nil
	end,
}
--[[国战版时机
sgs.AIEvent[sgs.RemoveStateChanged] = {
	name = "RemoveStateChanged",
	ExtractFunc = function(data)
	end,
}
]]
sgs.AIEvent[sgs.ConfirmDamage] = {
	name = "ConfirmDamage",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.Predamage] = {
	name = "Predamage",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.DamageForseen] = {
	name = "DamageForseen",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.DamageCaused] = {
	name = "DamageCaused",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.DamageInflicted] = {
	name = "DamageInflicted",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.PreDamageDone] = {
	name = "PreDamageDone",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.DamageDone] = {
	name = "DamageDone",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.Damage] = {
	name = "Damage",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.Damaged] = {
	name = "Damaged",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.DamageComplete] = {
	name = "DamageComplete",
	ExtractFunc = function(data)
		return data:toDamage()
	end,
}
sgs.AIEvent[sgs.Dying] = {
	name = "Dying",
	ExtractFunc = function(data)
		return data:toDying()
	end,
}
--[[国战版时机
sgs.AIEvent[sgs.QuitDying] = {
	name = "QuitDying",
	ExtractFunc = function(data)
	end,
}
]]
sgs.AIEvent[sgs.AskForPeaches] = {
	name = "AskForPeaches",
	ExtractFunc = function(data)
		return data:toDying()
	end,
}
sgs.AIEvent[sgs.AskForPeachesDone] = {
	name = "AskForPeachesDone",
	ExtractFunc = function(data)
		return data:toDying()
	end,
}
sgs.AIEvent[sgs.Death] = {
	name = "Death",
	ExtractFunc = function(data)
		return data:toDeath()
	end,
}
sgs.AIEvent[sgs.BuryVictim] = {
	name = "BuryVictim",
	ExtractFunc = function(data)
		return data:toDeath()
	end,
}
sgs.AIEvent[sgs.BeforeGameOverJudge] = {
	name = "BeforeGameOverJudge",
	ExtractFunc = function(data)
		return data:toDeath()
	end,
}
sgs.AIEvent[sgs.GameOverJudge] = {
	name = "GameOverJudge",
	ExtractFunc = function(data)
		return data:toDeath()
	end,
}
sgs.AIEvent[sgs.GameFinished] = {
	name = "GameFinished",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.SlashEffected] = {
	name = "SlashEffected",
	ExtractFunc = function(data)
		return data:toSlashEffect()
	end,
}
sgs.AIEvent[sgs.SlashProceed] = {
	name = "SlashProceed",
	ExtractFunc = function(data)
		return data:toSlashEffect()
	end,
}
sgs.AIEvent[sgs.SlashHit] = {
	name = "SlashHit",
	ExtractFunc = function(data)
		return data:toSlashEffect()
	end,
}
sgs.AIEvent[sgs.SlashMissed] = {
	name = "SlashMissed",
	ExtractFunc = function(data)
		return data:toSlashEffect()
	end,
}
sgs.AIEvent[sgs.JinkEffect] = {
	name = "JinkEffect",
	ExtractFunc = function(data)
		return data:toCard()
	end,
}
sgs.AIEvent[sgs.CardAsked] = {
	name = "CardAsked",
	ExtractFunc = function(data)
		return data:toStringList()
	end,
}
sgs.AIEvent[sgs.CardResponded] = {
	name = "CardResponded",
	ExtractFunc = function(data)
		return data:toCardResponse()
	end,
}
sgs.AIEvent[sgs.BeforeCardsMove] = {
	name = "BeforeCardsMove",
	ExtractFunc = function(data)
		return data:toMoveOneTime()
	end,
}
sgs.AIEvent[sgs.CardsMoveOneTime] = {
	name = "CardsMoveOneTime",
	ExtractFunc = function(data)
		return data:toMoveOneTime()
	end,
}
sgs.AIEvent[sgs.PreCardUsed] = {
	name = "PreCardUsed",
	ExtractFunc = function(data)
		return data:toCardUse()
	end,
}
sgs.AIEvent[sgs.CardUsed] = {
	name = "CardUsed",
	ExtractFunc = function(data)
		return data:toCardUse()
	end,
}
--[[国战版时机
sgs.AIEvent[sgs.TargetChoosing] = {
	name = "TargetChoosing",
	ExtractFunc = function(data)
	end,
}
]]
sgs.AIEvent[sgs.TargetConfirming] = {
	name = "TargetConfirming",
	ExtractFunc = function(data)
		return data:toCardUse()
	end,
}
--[[国战版时机
sgs.AIEvent[sgs.TargetChosen] = {
	name = "TargetChosen",
	ExtractFunc = function(data)
	end,
}
]]
sgs.AIEvent[sgs.TargetConfirmed] = {
	name = "TargetConfirmed",
	ExtractFunc = function(data)
		return data:toCardUse()
	end,
}
sgs.AIEvent[sgs.CardEffect] = {
	name = "CardEffect",
	ExtractFunc = function(data)
		return data:toCardEffect()
	end,
}
sgs.AIEvent[sgs.CardEffected] = {
	name = "CardEffected",
	ExtractFunc = function(data)
		return data:toCardEffect()
	end,
}
sgs.AIEvent[sgs.PostCardEffected] = {
	name = "PostCardEffected",
	ExtractFunc = function(data)
		return data:toCardEffect()
	end,
}
sgs.AIEvent[sgs.CardFinished] = {
	name = "CardFinished",
	ExtractFunc = function(data)
		return data:toCardUse()
	end,
}
sgs.AIEvent[sgs.TrickCardCanceling] = {
	name = "TrickCardCanceling",
	ExtractFunc = function(data)
		return data:toCardEffect()
	end,
}
sgs.AIEvent[sgs.ChoiceMade] = {
	name = "ChoiceMade",
	ExtractFunc = function(data)
		return data:toString()
	end,
}
sgs.AIEvent[sgs.StageChange] = {
	name = "StageChange",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.FetchDrawPileCard] = {
	name = "FetchDrawPileCard",
	ExtractFunc = function(data)
		return nil
	end,
}
--V2时机，国战版取消
sgs.AIEvent[sgs.ActionedReset] = {
	name = "ActionedReset",
	ExtractFunc = function(data)
		return nil
	end,
}
--V2时机，国战版取消
sgs.AIEvent[sgs.Debut] = {
	name = "Debut",
	ExtractFunc = function(data)
		return nil
	end,
}
sgs.AIEvent[sgs.TurnBroken] = {
	name = "TurnBroken",
	ExtractFunc = function(data)
		return nil
	end,
}
--[[国战版时机
sgs.AIEvent[sgs.] = {
	name = "",
	ExtractFunc = function(data)
	end,
}
]]
--[[国战版时机
sgs.AIEvent[sgs.GeneralShown] = {
	name = "GeneralShown",
	ExtractFunc = function(data)
	end,
}
]]
--[[国战版时机
sgs.AIEvent[sgs.GeneralHidden] = {
	name = "GeneralHidden",
	ExtractFunc = function(data)
	end,
}
]]
--[[国战版时机
sgs.AIEvent[sgs.GeneralRemoved] = {
	name = "GeneralRemoved",
	ExtractFunc = function(data)
	end,
}
]]
--[[国战版时机（飞龙夺凤）
sgs.AIEvent[sgs.DFDebut] = {
	name = "DFDebut",
	ExtractFunc = function(data)
		return nil
	end,
}
]]
sgs.AIEvent[sgs.NumOfEvents] = {
	name = "NumOfEvents",
	ExtractFunc = function(data)
		return nil
	end,
}
--获取事件名称
function getEventName(event)
	local name = nil
	if type(event) == "number" then
		local AIEvent = sgs.AIEvent[event]
		if type(AIEvent) == "table" then
			name = AIEvent["name"]
		end
	end
	return name or tostring(event) 
end
--将sgs.QVariant类型的事件数据data转化成具体的数据类型
function getEventData(event, data)
	if type(event) == "number" then
		local AIEvent = sgs.AIEvent[event]
		if type(AIEvent) == "table" then
			local ExtractFunc = AIEvent["ExtractFunc"]
			if type(ExtractFunc) == "function" then
				return ExtractFunc(data)
			end
		end
	end
	return data
end