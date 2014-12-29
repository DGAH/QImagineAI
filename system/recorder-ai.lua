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
--将卡牌使用结构体转化为卡牌使用记录字符串
function CardUseStructToRecord(use)
	local source, card, targets = use.from, use.card, use.to
	local record = "UseCard"
	if source then
		record = record .. "##" .. source:objectName() .."<"..source:getGeneralName()..">"
	else
		record = record .. "##NoSource"
	end
	record = record .. "##" .. card:toString() .."<"..card:objectName()..">"
	if targets and not targets:isEmpty() then
		for _,target in sgs.qlist(targets) do
			record = record .. "##" .. target:objectName() .."<"..target:getGeneralName()..">"
		end
	else
		record = record .. "##NoTargets"
	end
	return record
end
--添加游戏记录
function AddActionRecord(self, event, player, data)
	if event == sgs.ChoiceMade then
		local use = data:toCardUse()
		if use and use.card then
			AddCardUseRecord(use.card, use)
			local action_string = string.format("Use Card -> RECORD(%d)", #sgs.AIGlobalCardUseRecords)
			table.insert(sgs.AIGlobalActionRecords, action_string)
		else
			local action_string = data:toString()
			table.insert(sgs.AIGlobalActionRecords, action_string)
		end
	end
end
--添加卡牌使用记录
function AddCardUseRecord(card, use)
	local record = CardUseStructToRecord(use)
	table.insert(sgs.AIGlobalCardUseRecords, record)
end
sgs.AIEventFunc[sgs.Damage].test = function(self, player, data)
	if player:getState() ~= "robot" then
		local file = io.open("DebugOutput.txt", "a+") --在游戏目录下以“添加更新”模式打开记录输出文件，没有则创建
		out("TestFile: %s", tostring(file))
		file:write(string.format("Card Use Record \r\ntotal=%d\r\n", #sgs.AIGlobalCardUseRecords))
		for index, record in ipairs(sgs.AIGlobalCardUseRecords) do
			file:write(string.format("[%d] %s\r\n", index, record))
		end
		file:write(string.format("Action Record \r\ntotal=%d\r\n", #sgs.AIGlobalActionRecords))
		for index, record in ipairs(sgs.AIGlobalActionRecords) do
			file:write(string.format("{%d} %s\r\n", index, record))
		end
		file:close()
	end
end