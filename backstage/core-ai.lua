--[[
	太阳神三国杀·幻想天使AI体系（处理模块·核心文件）
]]--
function SmartAI:filterEvent(event, player, data)
	if not sgs.recorder then
		sgs.recorder = self
		self.player:speak(version)
	end
	if not sgs.AIGlobalSystemData["AISystemStart"] then
		sgs.AIGlobalSystemData["AISystemStart"] = true
		local allplayers = self.room:getAllPlayers()
		for _,p in sgs.qlist(allplayers) do
			AddPlayerSkillsToAISystem(p)
		end
	end
	if self == sgs.recorder then
		if event == sgs.GameStart then
			chooseIQLevel()
		end
	end
	if player:objectName() == self.player:objectName() then
		AddActionRecord(self, event, player, data) --记录发生的事件及相应的角色行为
		local callbacks = sgs.AIEventFunc
		if type(callbacks) == "table" then
			for name, callback in pairs(callbacks[event]) do
				if type(callback) == "function" then
					if name ~= "test" or sgs.AIGlobalSystemData["DebugMode"] then
						callback(self, player, data)
					end
				end
			end
		end
	end
end
function SmartAI:activate(use)
end