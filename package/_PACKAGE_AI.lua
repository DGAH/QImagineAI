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
	"strategic_advantage", --势备篇
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
	--武将信息规范化
	for name, details in pairs(sgs.AIGenerals) do
		if type(details) == "table" then
			--武将姓名
			local general = details["general"]
			if type(general) ~= "string" then
				general = name
				details["general"] = name
			end
			--武将智商
			local IQ = details["IQ"] 
			if type(IQ) ~= "number" or IQ < 0 then
				IQ = sgs.AIGeneralIQ[general]
				if type(IQ) ~= "number" or IQ < 0 then
					IQ = 100
				end
				details["IQ"] = IQ
			end
		end
	end
	--卡牌信息规范化
	for name, details in pairs(sgs.AICards) do
		if type(details) == "table" then
			--类型名
			local class_name = details["class_name"] or name
			if type(class_name) ~= "string" or class_name == "" then
				class_name = name
				details["class_name"] = class_name
			end
		end
	end
	--技能信息规范化
	for name, details in pairs(sgs.AISkills) do
		if type(details) == "table" then
			--发动频率
			local frequency = details["frequency"] or sgs.Skill_NotFrequent
			sgs.AISkills[name]["frequency"] = frequency
			--技能优先级
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
			--触发事件
			local events = details["events"]
			if type(events) == "number" then
				sgs.AISkills[name]["events"] = {events}
			end
			--相关技能
			local related_skills = details["related_skills"]
			if type(related_skills) == "string" then
				sgs.AISkills[name]["related_skills"] = related_skills:split("+")
			end
			--目标增强技
			if details["TargetModSkill"] then
				if type(details["residue_func"]) == "function" then
					sgs.AISkills[name]["TMResidueSkill"] = true
				end
				if type(details["distance_limit_func"]) == "function" then
					sgs.AISkills[name]["TMDistanceLimitSkill"] = true
				end
				if type(details["extra_target_func"]) == "function" then
					sgs.AISkills[name]["TMExtraTargetSkill"] = true
				end
			end
		end
	end
	--规则信息规范化
	for name, details in pairs(sgs.AIRules) do
		if type(details) == "table" then
			--触发频率
			local frequency = details["frequency"] or sgs.Skill_NotFrequent
			sgs.AIRules[name]["frequency"] = frequency
			--规则优先级
			local priority = details["priority"] 
			if type(priority) ~= "number" then
				if frequency == sgs.Skill_Compulsory then
					priority = 2
				else
					priority = 0
				end
				sgs.AIRules[name]["priority"] = priority
			end
			--触发事件
			local events = details["events"]
			if type(events) == "number" then
				sgs.AIRules[name]["events"] = {events}
			end
			--相关规则
			local related_rules = details["related_rules"]
			if type(related_rules) == "string" then
				sgs.AIRules[name]["related_rules"] = related_rules:split("+")
			end
		end
	end
end