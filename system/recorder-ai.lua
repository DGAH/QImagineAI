--[[
	太阳神三国杀·幻想天使AI体系（系统模块·游戏记录文件）
]]--
--初始化游戏记录表
function InitActionRecords()
	sgs.AIGlobalActionRecords = {}
end
--初始化卡牌使用记录表
function InitCardUseRecords()
	sgs.AIGlobalCardUseRecords = {}
end
--添加游戏记录
function AddActionRecord(self, event, player, data)
	if event == sgs.CardUsed then
		local use = data:toCardUse()
		local card = use.card
		AddCardUseRecord(card, use)
	end
end
--添加卡牌使用记录
function AddCardUseRecord(card, use)
end