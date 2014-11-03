--[[
	太阳神三国杀·幻想天使AI体系（解析模块·资源管理文件）
]]--
--将技能添加到当前AI系统
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
		end
	end
end
--将技能从当前AI系统中移除
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
	AddSkillToAISystem(skill)
end
--失去技能
sgs.AIEventFunc[sgs.EventLoseSkill].manager = function(self, player, data)
	RemoveSkillFromAISystem(skill)
end
--死亡
sgs.AIEventFunc[sgs.Death].manager = function(self, player, data)
	RemovePlayerSkillsFromAISystem(player)
end