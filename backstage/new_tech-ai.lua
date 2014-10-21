--[[
	太阳神三国杀·幻想天使AI体系（处理模块·新技术试验场）
]]--
sgs.thread_status = {"suspended", "running", "dead", "normal"}
function MultiThreadFunc(self, over)
end
function sgs.CreateThread()
	if global_room then
		global_room:writeToConsole("establish thread")
	end
	if sgs.multi_thread_func then
		global_room:writeToConsole(debug.traceback())
	else
		sgs.multi_thread_func = coroutine.create(MultiThreadFunc)
	end
end
function sgs.StartThread(self)
	if global_room then
		global_room:writeToConsole("start thread")
	end
	if sgs.multi_thread_func then
		coroutine.resume(sgs.multi_thread_func, self)
	else
		global_room:writeToConsole(debug.traceback())
	end
end
function sgs.CloseThread(self)
	if global_room then
		global_room:writeToConsole("close thread")
	end
	if sgs.multi_thread_func then
		coroutine.resume(sgs.multi_thread_func, self, true)
	else
		global_room:writeToConsole(debug.traceback())	
	end
end
function sgs.ClearThread(self)
	if global_room then
		global_room:writeToConsole("clear thread")
	end
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