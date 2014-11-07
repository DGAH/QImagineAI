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
	"extra_cards", --其他卡牌扩展
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
--[[****************************************************************
	规范化处理
]]--****************************************************************
sgs.scripts["Standardization_GameRules"] = function()
	for name, details in pairs(sgs.AISkills) do
		if type(details) == "table" then
			local frequency = details["frequency"] or sgs.Skill_NotFrequent
			sgs.AISkills[name]["frequency"] = frequency
			local priority = details["priority"] 
			if type(priority) ~= "number" then
				if frequency == sgs.Skill_Wake then
					priority = 3
				elseif frequency == sgs.Skill_Compulsory then
					priority = 2
				else
					priority = 1
				end
				sgs.AISkills[name]["priority"] = priority
			end
			local events = details["events"]
			if type(events) == "number" then
				sgs.AISkills[name]["events"] = {events}
			end
			local related_skills = details["related_skills"]
			if type(related_skills) == "string" then
				sgs.AISkills[name]["related_skills"] = related_skills:split("+")
			end
		end
	end
	for name, details in pairs(sgs.AIRules) do
		if type(details) == "table" then
			local frequency = details["frequency"] or sgs.Skill_NotFrequent
			sgs.AIRules[name]["frequency"] = frequency
			local priority = details["priority"] 
			if type(priority) ~= "number" then
				if frequency == sgs.Skill_Compulsory then
					priority = 2
				else
					priority = 0
				end
				sgs.AIRules[name]["priority"] = priority
			end
			local events = details["events"]
			if type(events) == "number" then
				sgs.AIRules[name]["events"] = {events}
			end
			local related_rules = details["related_rules"]
			if type(related_rules) == "string" then
				sgs.AIRules[name]["related_rules"] = related_rules:split("+")
			end
		end
	end
end