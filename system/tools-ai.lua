--[[
	太阳神三国杀·幻想天使AI体系（系统模块·工具包文件）
]]--
--输出到服务器
function out(...)
	if global_room then
		local arg = {...}
		--测试信息
		if not sgs.AIGlobalSystemData["DebugMode"] then
			if string.find(arg[1], "DEBUG:") then
				return 
			end
		end
		--警告信息
		if sgs.AIGlobalSystemData["IgnoreWarning"] then
			if string.find(arg[1], "WARNING:") then
				return 
			end
		end
		--错误信息
		if sgs.AIGlobalSystemData["IgnoreError"] then
			if string.find(arg[1], "ERROR:") then
				return 
			end
		end
		--执行输出
		global_room:writeToConsole(string.format(...))
	end
end
--卡牌类型转换表
sgs.cardtypes = {
	["slash"] = "Slash",
	["jink"] = "Jink",
	["peach"] = "Peach",
}
--获取卡牌类型
function getCardType(card)
	local name = nil
	if type(card) == "string" then
		name = card
	elseif type(card) == "userdata" then
		name = card:getClassName()
	end
	return sgs.cardtypes[name] or name
end
--卡牌名称转换表
sgs.cardnames = {
	["Slash"] = "slash",
	["Jink"] = "jink",
	["Peach"] = "peach",
}
--获取卡牌名称
function getCardName(card)
	local name = nil
	if type(card) == "string" then
		name = card
	elseif type(card) == "userdata" then
		name = card:objectName()
	end
	return sgs.cardnames[name] or name
end