--[[
	太阳神三国杀·幻想天使AI体系（引导文件）
	神杀源码地址：https://github.com/QSanguosha/QSanguosha
]]--
require "middleclass"
--置随机种子
math.randomseed(os.time())
--引导函数表
sgs.scripts = {}
--导入各AI模块
dofile "lua/ai/system/_SYSTEM_AI.lua" --系统模块
dofile "lua/ai/backstage/_BACKSTAGE_AI.lua" --处理模块
dofile "lua/ai/adapter/_ADAPTER_AI.lua" --解析模块
dofile "lua/ai/package/_PACKAGE_AI.lua" --扩展模块
--引导函数
function doScripts()
	for name, func in pairs(sgs.scripts) do
		if type(func) == "function" then
			func()
		end
	end
end
--执行引导函数
doScripts()