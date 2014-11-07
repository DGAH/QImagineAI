--[[
	太阳神三国杀·幻想天使AI体系（解析模块·资源管理文件）
]]--
--学习技能（注：技能包括“触发技”、“视为技”、“禁止技”、“距离修正技”、“手牌上限技”、“目标增强技”等）
local function MindControler_LearnSkill(name, object)
	out("DEBUG:Learn skill - '%s'", name)
	local skill = sgs.AISkills[name]
	if type(skill) == "table" then
		local priority = skill["priority"] or 1
		local events = skill["events"] or {}
		for _,event in ipairs(events) do
			local pos = 1
			for index, details in ipairs(sgs.AIMindControler[event]) do
				local this_priority = details["priority"] or 1
				if priority > this_priority then
					break
				end
				pos = pos + 1
			end
			table.insert(sgs.AIMindControler[event], pos, skill)
		end
		local related_skills = skill["related_skills"] or {}
		local related_rules = skill["related_rules"] or {}
		for index, details in pairs(related_skills) do
			if sgs.AIGameSkills[index] == nil then
				AddSkillToAISystem(index)
			end
		end
		for index, details in pairs(related_rules) do
			if sgs.AIGameRules[index] == nil then
				AddRuleToAISystem(index)
			end
		end
	else
		out("WARNING: Skill '%s' lose control!", name)
	end
end
--忘记技能（注：技能包括“触发技”、“视为技”、“禁止技”、“距离修正技”、“手牌上限技”、“目标增强技”等）
local function MindControler_ForgetSkill(name, object)
	out("DEBUG:Forget skill - '%s'", name)
	local skill = sgs.AISkills[name]
	if type(skill) == "table" then
		local events = skill["events"] or {}
		for _,event in ipairs(events) do
			local pos = -1
			for index, details in ipairs(sgs.AIMindControler[event]) do
				if details["name"] == skill["name"] then
					pos = index
					break
				end
			end
			if pos > 0 then
				table.remove(sgs.AIMindControler[event], pos)
			end
		end
		local related_skills = skill["related_skills"] or {}
		for index, details in pairs(related_skills) do
			if sgs.AIGameSkills[index] ~= nil then
				RemoveSkillFromAISystem(index)
			end
		end
		local related_rules = skill["related_rules"] or {}
		for index, details in pairs(related_rules) do
			if sgs.AIGameRules[index] ~= nil then
				RemoveRuleFromAISystem(index)
			end
		end
	end
end
--学习规则
local function MindControler_LearnRule(name)
	out("DEBUG:Learn rule - '%s'", name)
	local rule = sgs.AIRules[name]
	if type(rule) == "table" then
		local priority = rule["priority"] or 0
		local events = rule["events"] or {}
		for _,event in ipairs(events) do
			local pos = 1
			for index, details in ipairs(sgs.AIMindControler[event]) do
				local this_priority = details["priority"] or 1
				if priority > this_priority then
					break
				end
				pos = pos + 1
			end
			table.insert(sgs.AIMindControler[event], pos, rule)
		end
		local related_rules = rule["related_rules"] or {}
		for index, details in pairs(related_rules) do
			if sgs.AIGameRules[index] == nil then
				AddRuleToAISystem(index)
			end
		end
	else
		out("WARNING: Rule '%s' lose control!", name)
	end
end
--忘记规则
local function MindControler_ForgetRule(name)
	out("DEBUG:Forget rule - '%s'", name)
	local rule = sgs.AIRules[name]
	if type(rule) == "table" then
		local events = rule["events"] or {}
		for _,event in ipairs(events) do
			local pos = -1
			for index, details in ipairs(sgs.AIMindControler[event]) do
				if details["name"] == rule["name"] then
					pos = index
					break
				end
			end
			if pos > 0 then
				table.remove(sgs.AIMindControler[event], pos)
			end
		end
		local related_rules = rule["related_rules"] or {}
		for index, details in pairs(related_rules) do
			if sgs.AIGameRules[index] ~= nil then
				RemoveRuleFromAISystem(index)
			end
		end
	end
end
--将规则添加到当前AI系统（注：规则包括“游戏规则”和“场景规则”两种）
function AddRuleToAISystem(rule)
	local name = nil
	if type(rule) == "name" then
		name = rule
	elseif type(rule) == "userdata" then
		name = rule:objectName()
	elseif type(rule) == "table" then
		name = rule["name"]
	end
	if name and sgs.AIRules[name] then
		if sgs.AIGameRules[name] == nil then
			sgs.AIGameRules[name] = true
			MindControler_LearnRule(name)
		end
	end
end
--将规则从当前AI系统中移除（注：规则包括“游戏规则”和“场景规则”两种）
function RemoveRuleFromAISystem(rule)
	local name = nil
	if type(rule) == "name" then
		name = rule
	elseif type(rule) == "userdata" then
		name = rule:objectName()
	elseif type(rule) == "table" then
		name = rule["name"]
	end
	if name and sgs.AIRules[name] then
		if sgs.AIGameRules[name] == nil then
			return 
		end
		sgs.AIGameRules[name] = nil
		MindControler_ForgetRule(name)
	end
end
--将卡牌信息添加到当前AI系统
function AddCardToAISystem(card)
	local name = getCardName(card)
	local details = sgs.AICards[name]
	if type(details) == "table" then
		--Waiting For More Details
	end
end
--将卡牌信息从当前AI系统中移除
function RemoveCardToAISystem(card)
	local name = getCardName(card)
	local details = sgs.AICards[name]
	if type(details) == "table" then
		--Waiting For More Details
	end
end
--将技能添加到当前AI系统（注：技能包括“武将技能”和“装备技能”两种）
function AddSkillToAISystem(skill)
	local name, object = nil, nil
	if type(skill) == "string" then
		name = skill
		object = sgs.Sanguosha:getSkill(name)
	elseif type(skill) == "userdata" then
		name = skill:objectName()
		object = skill
	end
	if name and object then
		if sgs.AIGameSkills[name] == nil then
			sgs.AIGameSkills[name] = true
			MindControler_LearnSkill(name, object)
		end
	end
end
--将技能从当前AI系统中移除（注：技能包括“武将技能”和“装备技能”两种）
function RemoveSkillFromAISystem(skill)
	local name, object = nil, nil
	if type(skill) == "string" then
		name = skill
		object = sgs.Sanguosha:getSkill(name)
	elseif type(skill) == "userdata" then
		name = skill:objectName()
		object = skill
	end
	if name and object then
		if sgs.AIGameSkills[name] == nil then
			return 
		end
		local can_remove = true
		local alives = global_room:getAlivePlayers()
		for _,p in sgs.qlist(alives) do
			if object:isLordSkill() then
				if p:hasLordSkill(name) then
					can_remove = false
					break
				end
			elseif p:hasSkill(name) then
				can_remove = false
				break
			end
		end
		if can_remove then
			sgs.AIGameSkills[name] = nil
			MindControler_ForgetSkill(name, object)
		end
	end
end
--将一名角色的所有技能添加到当前AI系统
function AddPlayerSkillsToAISystem(player)
	local skills = player:getVisibleSkillList()
	for _,skill in sgs.qlist(skills) do
		local add = true
		if skill:inherits("SPConvertSkill") then
			add = false
		elseif skill:isLordSkill() then
			add = false
			if player:hasLordSkill(skill:objectName()) then
				add = true
			end
		end
		if add then
			AddSkillToAISystem(skill)
		end
	end
end
--将一名角色的所有技能从当前AI系统中移除
function RemovePlayerSkillsFromAISystem(player)
	local skills = player:getVisibleSkillList()
	for _,skill in sgs.qlist(skills) do
		RemoveSkillFromAISystem(skill)
	end
end
--获得技能
sgs.AIEventFunc[sgs.EventAcquireSkill].manager = function(self, player, data)
	local name = data:toString()
	AddSkillToAISystem(name)
end
--失去技能
sgs.AIEventFunc[sgs.EventLoseSkill].manager = function(self, player, data)
	local name = data:toString()
	RemoveSkillFromAISystem(name)
end
--复活（待完善）
--死亡
--[[与复活应成对出现
sgs.AIEventFunc[sgs.Death].manager = function(self, player, data)
	local death = data:toDeath()
	local victim = death.who
	if player:objectName() == victim:objectName() then
		out("DEBUG:Player %s(%s) dead.", player:getGeneralName(), player:objectName())
		RemovePlayerSkillsFromAISystem(player)
	end
end
]]