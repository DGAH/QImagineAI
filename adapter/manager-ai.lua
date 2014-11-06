--[[
	太阳神三国杀·幻想天使AI体系（解析模块·资源管理文件）
]]--
--学习技能（注：技能包括“触发技”、“视为技”、“禁止技”、“距离修正技”、“手牌上限技”、“目标增强技”等）
local function MindControler_LearnSkill(name, object)
	local skill = sgs.AISkills[name]
	if type(skill) == "table" then
		local priority = skill["priority"] 
		if not priority then
			local frequency = skill["frequency"] or sgs.Skill_NotFrequent
			if frequency == sgs.Skill_Compulsory then
				priority = 2
			elseif frequency == sgs.Skill_Wake then
				priority = 2
			else
				priority = 1
			end
		end
		local events = skill["events"] or {}
		local related_skills = skill["related_skills"] or {}
		local related_rules = skill["related_rules"] or {}
		--Waiting For More Details
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
	local skill = sgs.AISkills[name]
	if type(skill) == "table" then
		local priority = skill["priority"] 
		if not priority then
			local frequency = skill["frequency"] or sgs.Skill_NotFrequent
			if frequency == sgs.Skill_Compulsory then
				priority = 2
			elseif frequency == sgs.Skill_Wake then
				priority = 2
			else
				priority = 1
			end
		end
		local events = skill["events"] or {}
		local related_skills = skill["related_skills"] or {}
		local related_rules = skill["related_rules"] or {}
		--Waiting For More Details
		for index, details in pairs(related_skills) do
			if sgs.AIGameSkills[index] ~= nil then
				RemoveSkillFromAISystem(index)
			end
		end
		for index, details in pairs(related_rules) do
			if sgs.AIGameRules[index] ~= nil then
				RemoveRuleFromAISystem(index)
			end
		end
	end
end
--学习规则
local function MindControler_LearnRule(name)
	local rule = sgs.AIRules[name]
	if type(rule) == "table" then
		local frequency = rule["frequency"] or sgs.Skill_NotFrequent
		local priority = rule["priority"] or ( frequency == sgs.Skill_Compulsory and 2 or 0 )
		local events = rule["events"] or {}
		local related_rules = rule["related_rules"] or {}
		--Waiting For More Details
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
	local rule = sgs.AIRules[name]
	if type(rule) == "table" then
		local frequency = rule["frequency"] or sgs.Skill_NotFrequent
		local priority = rule["priority"] or ( frequency == sgs.Skill_Compulsory and 2 or 0 )
		local events = rule["events"] or {}
		local related_rules = rule["related_rules"] or {}
		--Waiting For More Details
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
end
--将卡牌信息从当前AI系统中移除
function RemoveCardToAISystem(card)
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
--死亡
sgs.AIEventFunc[sgs.Death].manager = function(self, player, data)
	RemovePlayerSkillsFromAISystem(player)
end