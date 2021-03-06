--[[
	太阳神三国杀·幻想天使AI体系（系统模块·引导文件）
]]--
--当前AI体系版本
version = "QSanguosha AI 20150000 (V0.0 Alpha)"
--定义SmartAI类
SmartAI = class "SmartAI"
--
function CloneAI(player)
	return SmartAI(player).lua_ai
end
--载入“系统控制表定义文件”
dofile "lua/ai/system/tables-ai.lua"
--初始化SmartAI类
function SmartAI:initialize(player)
	self.player = player
	self.room = player:getRoom()
	self.role = player:getRole()
	self.name1 = player:getGeneralName() or ""
	self.name2 = player:getGeneral2Name() or ""
	self.IQ = getPlayerIQ(self.name1, self.name2)
	self.lua_ai = sgs.LuaAI(player)
	self.lua_ai.callback = function(full_method_name, ...)
		--The __FUNCTION__ macro is defined as CLASS_NAME::SUBCLASS_NAME::FUNCTION_NAME
		--in MSVC, while in gcc only FUNCTION_NAME is in place.
		local method_name_start = 1
		while true do
			local found = string.find(full_method_name, "::", method_name_start)
			if found ~= nil then
				method_name_start = found + 2
			else
				break
			end
		end
		local method_name = string.sub(full_method_name, method_name_start)
		local method = self[method_name]
		if method then
			local success, result1, result2
			success, result1, result2 = pcall(method, self, ...)
			if not success then
				self.room:writeToConsole(result1)
				self.room:writeToConsole(method_name)
				self.room:writeToConsole(debug.traceback())
				self.room:outputEventStack()
			else
				return result1, result2
			end
		end
	end
	if not sgs.initialized then
		sgs.initialized = true
		sgs.ais = {}
		sgs.turncount = 0
		global_room = self.room
		global_room:writeToConsole(version .. ", Powered by " .. _VERSION)
	end
	sgs.ais[player:objectName()] = self
	--换将或重置身份时
	if sgs.AIGlobalSystemData["AISystemStart"] then
		out("DEBUG:Player %s(%s) reset AI.", self.name1, player:objectName())
		AddPlayerSkillsToAISystem(player)
	end
end
--载入系统模块其他文件
dofile "lua/ai/system/AIPlayer-ai.lua"
dofile "lua/ai/system/AIRoom-ai.lua"
dofile "lua/ai/system/AIEngine-ai.lua"
dofile "lua/ai/system/AIScene-ai.lua"
dofile "lua/ai/system/tools-ai.lua"
dofile "lua/ai/system/events-ai.lua"
dofile "lua/ai/system/iq-ai.lua"
dofile "lua/ai/system/recorder-ai.lua"