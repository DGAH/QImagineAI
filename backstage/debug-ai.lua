--[[
	太阳神三国杀·幻想天使AI体系（处理模块·错误检测文件）
]]--
--重写的filterEvent
local system_filterEvent = SmartAI.filterEvent
function SmartAI:filterEvent(event, player, data)
	local current = self.room:getCurrent()
	local eventname = getEventName(event)
	out("--------Debug:SmartAI.filterEvent--------")
	out("time=%s", tostring(os.clock()))
	out(
		"event=%s(%d)", 
		eventname, 
		event
	)
	out(
		"player=%s(%s)", 
		player and player:getGeneralName() or "?", 
		player and player:objectName() or "?"
	)
	out(
		"current=%s(%s)", 
		current and current:getGeneralName() or "?", 
		current and current:objectName() or "?"
	)
	out("------------------------------------------------")
	system_filterEvent(self, event, player, data)
end