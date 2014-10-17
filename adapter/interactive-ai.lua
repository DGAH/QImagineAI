--[[
	太阳神三国杀·幻想天使AI体系（解析模块·交互接口文件）
]]--
function SmartAI:askForSuit(reason)
	local result = nil
	local callback = sgs.askForSuitAI[reason]
	if type(callback) == "function" then
		result = callback(self)
	elseif type(callback) == "number" then
		result = callback
	end
	callback = sgs.askForSuitAI["system"]
	if type(callback) == "function" then
		result = callback(self, reason, result)
	end
	return result
end
function SmartAI:askForSkillInvoke(skill_name, data)
	local result = nil
	local callback = sgs.askForSkillInvokeAI[skill_name]
	if type(callback) == "function" then
		result = callback(self, data)
	elseif type(callback) == "boolean" then
		result = callback
	end
	callback = sgs.askForSkillInvokeAI["system"]
	if type(callback) == "function" then
		result = callback(self, skill_name, data, result)
	end
	return result
end
function SmartAI:askForChoice(skill_name, choices, data)
	local result = nil
	local callback = sgs.askForChoiceAI[skill_name]
	if type(callback) == "function" then
		result = callback(self, choices, data)
	elseif type(callback) == "string" then
		result = callback
	end
	callback = sgs.askForChoiceAI["system"]
	if type(callback) == "function" then
		result = callback(self, skill_name, choices, data, result)
	end
	return result
end
function SmartAI:askForDiscard(reason, discard_num, min_num, optional, include_equip)
	local result = nil
	local callback = sgs.askForDiscardAI[reason]
	if type(callback) == "function" then
		result = callback(self, discard_num, min_num, optional, include_equip)
	end
	callback = sgs.askForDiscardAI["system"]
	if type(callback) == "function" then
		result = callback(self, reason, discard_num, min_num, optional, include_equip, result)
	end
	return result
end
function SmartAI:askForNullification(trick, from, to, positive)
	local result = nil
	local keys = sgs.AIGlobalSystemData["KeyNames_askForNullificationAI"]
	if type(keys) == "table" then
		for index, key in ipairs(keys) do
			local callback = sgs.askForNullificationAI[key]
			if type(callback) == "function" then
				result = callback(self, trick, from, to, positive)
				if type(result) == "string" then
					break
				end
			end
		end
	end
	return result
end
function SmartAI:askForCardChosen(who, flags, reason, method)
	local result = nil
	local callback = sgs.askForCardChosenAI[reason]
	if type(callback) == "function" then
		result = callback(self, who, flags, method)
	end
	callback = sgs.askForCardChosenAI["system"]
	if type(callback) == "function" then
		result = callback(self, who, flags, method, result)
	end
	return result
end
function SmartAI:askForCard(pattern, prompt, data)
	local result = nil
	local promptlist = prompt:split(":")
	local reason, name1, name2, arg, arg2 = promptlist[1], promptlist[2], promptlist[3], promptlist[4], promptlist[5]
	local source, target = nil, nil
	if name1 then
		local allplayers = self.room:getPlayers()
		for _,p in sgs.qlist(allplayers) do
			if p:objectName() == name1 or p:getGeneralName() == name1 then
				source = p
				break
			end
		end
	end
	if name2 then
		local allplayers = self.room:getPlayers()
		for _,p in sgs.qlist(allplayers) do
			if p:objectName() == name2 or p:getGeneralName() == name2 then
				target = p
				break
			end
		end
	end
	local callback = sgs.askForCardAI[reason]
	if type(callback) == "function" then
		result = callback(self, pattern, source, target, arg, arg2, data)
	elseif type(callback) == "string" then
		result = callback
	end
	callback = sgs.askForCardAI["system"]
	if type(callback) == "function" then
		result = callback(self, pattern, source, target, arg, arg2, data, result)
	end
	return result
end
function SmartAI:askForUseCard(pattern, prompt, method)
	local result = nil
	local callback = sgs.askForUseCardAI[pattern]
	if type(callback) == "function" then
		result = callback(self, prompt, method)
	elseif type(callback) == "string" then
		result = callback
	end
	callback = sgs.askForUseCardAI["system"]
	if type(callback) == "function" then
		result = callback(self, pattern, prompt, method, result)
	end
	return result
end
function SmartAI:askForAG(card_ids, refusable, reason)
	local result = nil
	local callback = sgs.askForAGAI[reason]
	if type(callback) == "function" then
		result = callback(self, card_ids, refusable)
	elseif type(callback) == "number" then
		result = callback
	end
	callback = sgs.askForAGAI["system"]
	if type(callback) == "function" then
		result = callback(self, card_ids, refusable, reason, result)
	end
	return result
end
function SmartAI:askForCardShow(requestor, reason)
	local result = nil
	local callback = sgs.askForCardShowAI[reason]
	if type(callback) == "function" then
		result = callback(self, requestor)
	elseif type(callback) == "userdata" then
		result = callback
	end
	callback = sgs.askForCardShowAI["system"]
	if type(callback) == "function" then
		result = callback(self, requestor, reason, result)
	end
	return result
end
function SmartAI:askForYiji(card_ids, reason)
	local resultA, resultB = nil, nil
	local callback = sgs.askForYijiAI[reason]
	if type(callback) == "function" then
		resultA, resultB = callback(self, card_ids)
	end
	callback = sgs.askForYijiAI["system"]
	if type(callback) == "function" then
		resultA, resultB = callback(self, card_ids, reason, resultA, resultB)
	end
	return resultA, resultB
end
function SmartAI:askForPindian(requestor, reason)
	local result = nil
	local callback = sgs.askForPindianAI[reason]
	if type(callback) == "function" then
		result = callback(self, requestor)
	end
	callback = sgs.askForPindianAI["system"]
	if type(callback) == "function" then
		result = callback(self, requestor, reason, result)
	end
	return result
end
function SmartAI:askForPlayerChosen(targets, reason)
	local result = nil
	local callback = sgs.askForPlayerChosenAI[reason]
	if type(callback) == "function" then
		result = callback(self, targets)
	elseif type(callback) == "userdata" then
		result = callback
	end
	callback = sgs.askForPlayerChosenAI["system"]
	if type(callback) == "function" then
		result = callback(self, targets, reason, result)
	end
	return result
end
function SmartAI:askForSinglePeach(dying)
	local result = nil
	local keys = sgs.AIGlobalSystemData["KeyNames_askForSinglePeachAI"]
	if type(keys) == "table" then
		for index, key in ipairs(keys) do
			local callback = sgs.askForSinglePeachAI[key]
			if type(callback) == "function" then
				result = callback(self, dying)
				if type(result) == "string" then
					break
				end
			end
		end
	end
	return result
end