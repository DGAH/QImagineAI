--[[
	太阳神三国杀·幻想天使AI体系（扩展模块·引导文件）
]]--
local files = sgs.GetFileNames("lua/ai/package")
--[[****************************************************************
	游戏规则部分
]]--****************************************************************
local rules = {
	"gamerule", --游戏规则
	"hegrule", --国战规则
}
for _,rule in ipairs(rules) do
	local name = string.format("%s-ai.lua", string.lower(rule))
	local path = string.format("lua/ai/package/%s", name)
	for _,file in ipairs(files) do
		if string.lower(file) == name then
			dofile (path)
			break
		end
	end
end
--[[****************************************************************
	卡牌包部分
]]--****************************************************************
local packages = {
	"standard_cards", --标准版
	"maneuvering", --军争篇
}
for _,cardpack in ipairs(packages) do
	local name = string.format("%s-ai.lua", string.lower(cardpack))
	local path = string.format("lua/ai/package/%s", name)
	for _,file in ipairs(files) do
		if string.lower(file) == name then
			dofile (path)
			break
		end
	end
end
--[[****************************************************************
	武将包部分
]]--****************************************************************
local extensions = sgs.Sanguosha:getExtensions()
for _,extension in ipairs(extensions) do
	local name = string.format("%s-ai.lua", string.lower(extension))
	local path = string.format("lua/ai/package/%s", name)
	for _,file in ipairs(files) do
		if string.lower(file) == name then
			dofile (path)
			break
		end
	end
end
--[[****************************************************************
	剧情模式部分
]]--****************************************************************
local scenarios = sgs.Sanguosha:getModScenarioNames()
for _,scenario in ipairs(scenarios) do
	local name = string.format("%s-ai.lua", string.lower(scenario))
	local path = string.format("lua/ai/package/%s", name)
	for _,file in ipairs(files) do
		if string.lower(file) == name then
			dofile (path)
			break
		end
	end
end