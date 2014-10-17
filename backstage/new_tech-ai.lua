--[[
	太阳神三国杀·幻想天使AI体系（处理模块·新技术试验场）
]]--
sgs.thread_status = {"suspended", "running", "dead", "normal"}
function MultiThreadFunc(self, over)
	while not over do
		local msg = string.format("myself=%s(%s)", self.player:getGeneralName(), self.player:objectName())
		self.room:writeToConsole(msg)
		coroutine.yield()
	end
end
function sgs.CreateThread()
	global_room:writeToConsole("establish thread")
	if sgs.multi_thread_func then
		global_room:writeToConsole(debug.traceback())
	else
		sgs.multi_thread_func = coroutine.create(MultiThreadFunc)
	end
end
function sgs.StartThread(self)
	global_room:writeToConsole("start thread")
	if sgs.multi_thread_func then
		coroutine.resume(sgs.multi_thread_func, self)
	else
		global_room:writeToConsole(debug.traceback())
	end
end
function sgs.CloseThread(self)
	global_room:writeToConsole("close thread")
	if sgs.multi_thread_func then
		coroutine.resume(sgs.multi_thread_func, self, true)
	else
		global_room:writeToConsole(debug.traceback())	
	end
end
function sgs.ClearThread(self)
	global_room:writeToConsole("clear thread")
	if sgs.multi_thread_func then
		sgs.multi_thread_func = nil
	end
end
function sgs.CheckThreadStatus()
	if sgs.multi_thread_func then
		return coroutine.status(sgs.multi_thread_func)
	else
		return "No thread established!"
	end
end
sgs.AIEventFunc[sgs.GameOverJudge].test = function(self, player, data)
	local status = sgs.CheckThreadStatus()
	if status == "suspended" then
		sgs.CloseThread(self)
		sgs.ClearThread(self)
	end
end
sgs.AIEventFunc[sgs.GameStart].test = function(self, player, data)
	global_room:writeToConsole("========================================")
	local status = sgs.CheckThreadStatus() 
	global_room:writeToConsole("current thread status = "..status)
	if status == "No thread established!" then
		sgs.CreateThread()
	elseif status == "suspended" then
		sgs.StartThread(self)
	elseif status == "running" then
		sgs.CloseThread(self)
	elseif status == "dead" then
		sgs.ClearThread(self)
	elseif status == "normal" then
		sgs.CloseThread(self)
	else
		global_room:writeToConsole("error...")
	end
	global_room:writeToConsole("----------------------------------------")
end
sgs.AIEventFunc[sgs.TurnStart].test = function(self, player, data)
	global_room:writeToConsole("========================================")
	local status = sgs.CheckThreadStatus() 
	global_room:writeToConsole("current thread status = "..status)
	if status == "No thread established!" then
		sgs.CreateThread()
	elseif status == "suspended" then
		sgs.StartThread(self)
	elseif status == "running" then
		sgs.CloseThread(self)
	elseif status == "dead" then
		sgs.ClearThread(self)
	elseif status == "normal" then
		sgs.CloseThread(self)
	else
		global_room:writeToConsole("error...")
	end
	global_room:writeToConsole("----------------------------------------")
end